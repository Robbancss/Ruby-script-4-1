filename = ARGV.first

# Checking the ARGV length and if the file exists?
if ARGV.length.zero?
  puts 'Adj meg egy file-t!'
  exit
elsif File.exist?(filename)
  tmp = open(filename, 'r').read
  content = tmp.split("\n")
else
  puts 'Nincs ilyen file!'
  exit
end

puts content[0]
puts content[1]
puts content[2]