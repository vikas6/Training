#! /home/rails/.rvm/rubies/ruby-2.3.1/bin/ruby
require '/home/rails/vikas_project/Training | Day 5/InputRead.rb'
require '/home/rails/vikas_project/Training | Day 5/TaxCalculator.rb'
require '/home/rails/vikas_project/Training | Day 5/OutPut.rb'

obj=InputRead.new
item_list=obj.input_csv
objc=TaxCalculator.new(item_list)
total_tax_newitemlist=objc.tax_calculation
objo=OutPut.new(total_tax_newitemlist)
objo.output


