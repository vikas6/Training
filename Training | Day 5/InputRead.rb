#! /home/rails/.rvm/rubies/ruby-2.3.1/bin/ruby
require 'csv'
#input String Parsing Class
class InputRead
    def initialize
      @item_list=Array.new
    end
    def input_console
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
    def input_csv
      CSV.foreach("/home/rails/vikas_project/input.csv") do |itm|
        @item_list << itm
      end
      return @item_list
    end
end