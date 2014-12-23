require 'benchmark'

max = ARGV[0].to_i

if max.zero?
  puts 'Enter number'
  exit
end

puts Benchmark.measure{
  1.upto(max) do |n|
    if n % 15 == 0
      puts 'fizzbuzz'
    elsif n % 5 == 0
      puts 'buzz'
    elsif n % 3 == 0
      puts 'fizz'
    else	
      puts n
    end
  end
}
puts Benchmark::CAPTION

=begin
puts Benchmark.measure{
  1.upto(max) do |n|
    if n % 3 == 0
      puts 'fizzbuzz'
    elsif n % 5 == 0
      puts 'buzz'
    elsif n % 15 == 0
      puts 'fizz'
    else	
      puts n
    end
  end
}
=end
