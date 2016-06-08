#! /home/rails/.rvm/rubies/ruby-2.3.1/bin/ruby
def double (test)
	for i in 1...test.length
		if #{test[i]} ==/[0-9]/  
			doub=2*i
			puts "#{doub}"
		end
	end
end
a=[1,2,3,"ccc",4,5]
double a

