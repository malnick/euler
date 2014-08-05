#!/bin/ruby
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
# Give all even fib numbers

def fibSeq(n)
	a=[0]						# O(1)
	n.times do |index|				# O(n)
		if index==0				# O(1)
			a[index]=0			# O(1)
		elsif index==1
			a[index]=1
		else
			a[index] = a[index-1] + a[index-2]   # O(n+n) 
			if a[index] % 2 == 0
				puts a[index]
			end
		end
	end
end
fibSeq(ARGV[0].to_i)
