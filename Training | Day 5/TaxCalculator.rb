#! /home/rails/.rvm/rubies/ruby-2.3.1/bin/ruby
#Tax Calcuator 
class TaxCalculator
  def initialize (item_list)
      @item_list=item_list
      @imported=["imported","Imported"]
      @goods=["CD","cd","bottle","Bottle","Perfume","perfume"]
  end
  def tax_calculation
    total_tax=0
    total=0
    output = Array.new 
    @item_list.each do |str|
      input_string=str[0]
      str_split=str[0].split(" ")
      length_price=str_split[str_split.length-1].length
      item_cost= str_split[0].to_f*str_split[str_split.length-1].to_f
      tax=sales_tax(10,str_split)+import_duty(5,str_split)
      cost_tax=item_cost+tax
      output << "#{input_string[0...input_string.length-(length_price+3)]} : #{cost_tax.round(2)}"
      total_tax+=tax
      total=total+tax+item_cost
      total=total.round(2)
      total_tax=total_tax.round(2)
    end
    return total_tax,total,output
  end
  def sales_tax(tax,str_split)
    @goods.each do |i|
      if str_split.include?i
        item_cost= str_split[0].to_f*str_split[str_split.length-1].to_f
        item_tax=(item_cost*tax)/100
        item_tax=(item_tax* 20).round.to_f/20
        return item_tax
        break
      end
    end
    return 0
  end
  def import_duty(tax,str_split)
    @imported.each do |j|
      if str_split.include?j
        item_cost= str_split[0].to_f*str_split[str_split.length-1].to_f
        item_tax=(item_cost*tax)/100
        item_tax=(item_tax* 20).round.to_f/20
        return item_tax
        break
      end
    end
    return 0    
  end
end