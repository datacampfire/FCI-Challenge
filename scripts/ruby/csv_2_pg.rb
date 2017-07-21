
require 'csv'
require 'pg'

if ARGV.size == 0
  p 'usage: ruby server_version.rb csv_file_to_import_as_table'
  exit 0
end

filename = ARGV[0]
# ARGV.each do|a|
#   puts "Argument: #{a}"
# end
#
# CSV.foreach(ARGV[0], {:headers => true,  :col_sep => ',' }) do |row|
#   puts row.inspect
# end
column_names = CSV.open(filename, {:headers => true,  :col_sep => ','}).read.headers.map{|h| h.downcase.gsub(/ /,'_') }
p column_names
#
# CSV.open(ARGV[0], {:headers => true,  :col_sep => ','}) do |file|
#   rows = file.each
#   rows.select do |row|
#     row_statement = "INSERT INTO " + "tablename" + " VALUES("
#     column_names.each do |column|
#       row_statement += "\'" + row[column].to_s + "\',"
#     end
#     row_statement = row_statement[0..-2]
#     row_statement += ')'
#     p row_statement
#   end
# end

begin

    con = PG.connect :dbname => 'challenge', :user => 'datacamp', :password => 'dc'

    puts 'postgres server version' + con.server_version.to_s
    tablename = filename.gsub(/\./,'_')
    con.exec "DROP TABLE IF EXISTS " + tablename
    create_statement ="CREATE TABLE " + tablename + " ("
    column_names.each do |column|
      create_statement += column + " TEXT,"
    end
    create_statement = create_statement[0..-2]
    create_statement += ')'

    con.exec create_statement
    row_count = 0
    CSV.open(ARGV[0], {:headers => true,  :col_sep => ','}) do |file|
      rows = file.each
      rows.select do |row|
        row_count += 1
        row_statement = "INSERT INTO " + tablename + " VALUES("
        column_names.each do |column|
          row_statement += "\'" + row[column].to_s + "\',"
        end
        row_statement = row_statement[0..-2]
        row_statement += ')'
        # p row_statement
        con.exec row_statement
      end
    end
    p "row num: " + row_count.to_s


rescue PG::Error => e

    puts e.message

ensure

    con.close if con

end
