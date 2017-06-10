filename = ARGV.first

# Checking the ARGV length and if the file exists?
if ARGV.length.zero?
  puts 'Adj meg egy file-t!'
elsif File.exist?(filename)
  txt = open(filename)
  puts "Here's your file #{filename}"
else
  puts 'Nincs ilyen file!'
end
