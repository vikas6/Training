#! /home/rails/.rvm/rubies/ruby-2.3.1/bin/ruby
class OutPut
	def initialize (total_tax_newitemlist)
      @tax=total_tax_newitemlist[0]
      @total=total_tax_newitemlist[1]
      @item_list=total_tax_newitemlist[2]
  	end
  	def output
  		puts "Output"
    	puts @item_list
    	puts "Sales Taxes: #@tax"
    	puts "Total: #@total"
  	end
end
