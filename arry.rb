#!/bin/ruby

a = []

10.times do |n| 
	n+=1
	a.push(n)
end

puts "Length: #{a.length}"

a.map do |n|
	if n % 2 == 0
		a.shift 
	end
end

puts "Total: #{a}"
