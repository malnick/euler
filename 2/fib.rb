#!/bin/ruby
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

def fibSeq(n)
	a=[0]						# O(1)
	n.times do |fib|				# O(n)
		if fib==0				# O(1)
			a[fib]=0			# O(1)
			puts a[fib]			
		elsif fib==1
			a[fib]=1
			puts a[fib]
		else
			a[fib] = a[fib-1] + a[fib-2]   # O(n+n) 
			puts a[fib]
		end
	end
end
fibSeq(ARGV[0].to_i)
