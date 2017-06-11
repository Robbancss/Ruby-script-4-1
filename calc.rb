filename = ARGV.first
outfile = 'eredmeny.txt'
cleaning = File.open(outfile, 'w')
cleaning.close

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

i = 0
target = File.open(outfile, 'w')
for line in content do
  words = line.split(',')
  calcName = words[0].strip
  calcType = words[1].strip
  calcVars = words[2].split(' ').drop(1)

  if calcType == 'max'
    maxcalc = []
    for numbers in calcVars do
      maxcalc.push(numbers.to_i)
    end
    target.write(calcName)
    target.write(' = ')
    target.write(maxcalc.max)
    target.write("\n")
  elsif calcType == 'sum'
    sum = 0
    for numbers in calcVars do
      sum += numbers.to_i
    end
    target.write(calcName)
    target.write(' = ')
    target.write(sum)
    target.write("\n")
  elsif calcType == 'prod'
    prod = 1
    for numbers in calcVars do
      prod *= numbers.to_i
    end
    target.write(calcName)
    target.write(' = ')
    target.write(prod)
    target.write("\n")
  end

  i += 1
end
target.close
