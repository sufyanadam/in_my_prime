def find_primes(first_n)
  primes = []

  (2..Float::INFINITY).lazy.each do |i|
    break if primes.size >= first_n

    primes << i if prime?(i)
  end

  primes
end

def prime?(number)
  return true if number <= 3

  root = Math.sqrt(number)
  (2..root).all? { |i| number % i != 0 }
end

def print_multiplication_table(range)
  max_characters = (range.max ** 2).to_s.size + 1
  range.each { |p| print p.to_s.center(max_characters) }
  print "\n"
  rows = range[1..-1]
  rows.each_with_index do |row, index|
    print row.to_s.center(max_characters)
    rows.each { |p| print (p * row).to_s.center(max_characters) }
    print "\n"
  end
end

now = Time.now
n = ARGV[0].to_i
n = 10 if n < 1
primes = find_primes(n.to_i)
print_multiplication_table(primes)
puts "\nFinished in #{Time.now - now} seconds"
