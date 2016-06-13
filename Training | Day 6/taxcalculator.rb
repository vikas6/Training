#! /home/rails/.rvm/rubies/ruby-2.3.1/bin/ruby
require './salestax.rb'
require './importduty.rb'
#Tax Calcuator 
class TaxCalculator
  def initialize (item_list)
      @item_list=item_list
      @total=0
      @total_tax=0
      @update_list=Array.new
  end
  def tax_calculation
    salestax=SalesTax.new
    importduty=ImportDuty.new
    @item_list.each do |item|
      item_split = item.split(" ")
      item_cost = item_split[item_split.length-1].to_f
      tax = salestax.sales_tax(10,item) + importduty.import_duty(5,item)
      total_cost= item_cost + tax
      total_cost=total_cost.round(2)
      @total_tax += tax
      @total = @total + item_cost + tax 
      item.gsub!("at",":")
      item.gsub!("#{item_cost}","#{total_cost}")
      @update_list << item
    end
    return @update_list,@total_tax.round(2),@total.round(2)
  end
end
