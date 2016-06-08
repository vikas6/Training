#! /home/rails/.rvm/rubies/ruby-2.3.1/bin/ruby
class Sales
  @@total_tax=0
  @@total=0
  @@output = Array.new
  def sales_tax
    puts "Enter the total no. of item?"
    n  = gets.chomp.to_i
    while n > 0 do
      puts "Types of item Normal,Imported Normal,Goods or Imported Goods"
      type=gets.chomp
      case type
      when "Normal","normal"
        sales_cost 0
      when "Goods","goods"
        sales_cost 10
      when "Imported Goods","imported goods"
        sales_cost 15
      else
        sales_cost 5
      end
      n-=1
    end
    puts "Output"
    puts @@output
    puts "Sales Taxes: #{@@total_tax.round(2)}"
    puts "Total: #{@@total.round(2)}"
  end
  def sales_cost (tax)
        puts "Enter the item"
        item=gets.chomp
        temp=item
        item=item.split(" ")
        length_price=item[item.length-1].length
        total_item_cost= item[0].to_f*item[item.length-1].to_f
        total_item_tax=(total_item_cost*tax)/100
        total_item_tax=(total_item_tax* 20).round.to_f/20
        cost_tax=total_item_cost+total_item_tax
        @@output << "#{temp[0...temp.length-(length_price+3)]} : #{cost_tax.round(2)}"
        @@total_tax +=total_item_tax
        @@total=@@total+total_item_cost+total_item_tax
  end
end
obj = Sales.new
obj.sales_tax
