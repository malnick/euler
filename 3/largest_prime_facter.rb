#!/bin/ruby
# Find the largest prime facter of a number

puts "Enter in a number"
num=gets.chomp! 
factors={}

def factors(n) 
	puts "getting factors for #{n}"
	(1..n).select { |i| (n % i).zero? } 
end

puts factors(num)
