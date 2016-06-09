#! /home/rails/.rvm/rubies/ruby-2.3.1/bin/ruby
$total_tax=0
$total=0
$output = Array.new
$input_string
class InputParsingStr
	def input (str) 
		$input_string=str
		n=0
  		ig=0
  		ino=0
  		g=0
  		imported=["imported","Imported"]
  		goods=["CD","cd","bottle","Bottle","Perfume","perfume"]
  		str_split=str.split(" ")
  		length_price=str_split[str_split.length-1].length
  		imported.each do |i|
  			if str_split.include?i
  				goods.each do |j|
  					if str_split.include?j
  						ig=1
  						break
  					else
  						ino=1
  					end
  				end
  				break
  			else
  				goods.each do |j|
  					if str_split.include?j
  						g=1
  						break
  					else
  						n=1
  					end
  				end
  			end
  		end
  		if ig==1
  			return 15
  		elsif ig==0 && ino==1
  			return 5
  		elsif g==1
  			return 10
  		elsif g==0 && n==1
  			return 0			
  		end
    end
end
class Calcuation
	def cal (tax)
    	item=$input_string.split(" ")
    	length_price=item[item.length-1].length
    	total_item_cost= item[0].to_f*item[item.length-1].to_f
    	total_item_tax=(total_item_cost*tax)/100
    	total_item_tax=(total_item_tax* 20).round.to_f/20
    	cost_tax=total_item_cost+total_item_tax
    	$output << "#{$input_string[0...$input_string.length-(length_price+3)]} : #{cost_tax.round(2)}"
    	$total_tax +=total_item_tax
    	$total=$total+total_item_cost+total_item_tax  	
	end 
end
class Output
	def out
		puts "Output"
    	puts $output
    	puts "Sales Taxes: #{$total_tax.round(2)}"
    	puts "Total: #{$total.round(2)}"
	end
end

puts "Enter the total no. of item?"
n  = gets.chomp.to_i
while n > 0 do
	puts "Enter the item"
    itm=gets.chomp
	obji=InputParsingStr.new
	var=obji.input(itm)
	objc=Calcuation.new
	objc.cal(var)
	n-=1
end
objo=Output.new
objo.out


