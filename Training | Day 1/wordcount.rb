#! /home/rails/.rvm/rubies/ruby-2.3.1/bin/ruby
words = %w(When you access any key in a hash that has a default value, if the key or value doesn't exist, accessing the hash will return the default value)
counts = Hash.new 0
words.each do |word|
  counts[word] += 1
end
puts "#{counts}"
