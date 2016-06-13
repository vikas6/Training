class ImportDuty
  	def import_duty(tax,item)
  		item = item
  		tax = tax
      imported=["imported","Imported"]
    	item_split = item.split(" ")
    	imported.each do |i|
      		if item_split.include?i
            cost = item_split[item_split.length-1].to_f
        		item_tax=(cost*tax)/100
        		item_tax=(item_tax* 20).round.to_f/20
        		return item_tax
        		break
      		end
    	end
    	return 0
  	end
end