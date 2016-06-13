#! /home/rails/.rvm/rubies/ruby-2.3.1/bin/ruby
require 'csv'
#input String Parsing Class
class InputReader
    def initialize
      @item_list=Array.new
    end
    def input_by_console
      puts "Enter the total no. of item?"
      n  = gets.chomp.to_i
      while n > 0 do
        puts "Enter the item"
        itm=gets.chomp
        @item_list << itm
        n-=1
      end
      return @item_list
    end
    def input_by_csv_file csv_file_path
      CSV.foreach("#{csv_file_path}") do |itm|
        @item_list << itm.join("")
      end
      return @item_list
    end
end