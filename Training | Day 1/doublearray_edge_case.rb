#! /home/rails/.rvm/rubies/ruby-2.3.1/bin/ruby
def double (test)
	test.each do |i|
		if /[[:digit:]]/.match("#{i}")
			doub=2*i
			puts "#{doub}"
		end
	end
end
a=[1,2,3,"ccc",4,5]
double a

