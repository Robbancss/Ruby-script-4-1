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

savedResults = []

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
      if numbers[0] == 'f'
        prevCalc = savedResults[(savedResults.index(numbers))+1]
        maxcalc.push(prevCalc.to_i)
      else
        maxcalc.push(numbers.to_i)
      end
    end
    tmpMax = maxcalc.max.to_s
    tmpString = calcName + ' = ' + tmpMax + "\n"
    target.write(tmpString)
    savedResults.push(calcName)
    savedResults.push(tmpMax)

  elsif calcType == 'sum'
    sum = 0
    for numbers in calcVars do
      if numbers[0] == 'f'
        prevCalc = savedResults[(savedResults.index(numbers))+1]
        sum += prevCalc.to_i
      else
        sum += numbers.to_i
      end
    end
    tmpSum = sum.to_s
    tmpString = calcName + ' = ' + tmpSum + "\n"
    target.write(tmpString)
    savedResults.push(calcName)
    savedResults.push(tmpSum)

  elsif calcType == 'prod'
    prod = 1
    for numbers in calcVars do
      if numbers[0] == 'f'
        prevCalc = savedResults[(savedResults.index(numbers))+1]
        prod *= prevCalc.to_i
      else
        prod *= numbers.to_i
      end
    end
    tmpProd = prod.to_s
    tmpString = calcName + ' = ' + tmpProd + "\n"
    target.write(tmpString)
    savedResults.push(calcName)
    savedResults.push(tmpProd)

  end

  i += 1
end
target.close
