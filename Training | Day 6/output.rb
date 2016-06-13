#! /home/rails/.rvm/rubies/ruby-2.3.1/bin/ruby
class OutPut
	def initialize (total_tax)
      @item_list=total_tax[0]
      @tax=total_tax[1]
      @total=total_tax[2]
  	end
  	def receipt_details
  		puts "Output"
    	puts @item_list
    	puts "Sales Taxes: #@tax"
    	puts "Total: #@total"
  	end
end
