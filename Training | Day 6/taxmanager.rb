#! /home/rails/.rvm/rubies/ruby-2.3.1/bin/ruby
require './inputreader.rb'
require './taxcalculator.rb'
require './output.rb'

input_reader=InputReader.new
item_list=input_reader.input_by_csv_file("./input.csv")

costs=TaxCalculator.new(item_list)
tax_detail=costs.tax_calculation

receipt=OutPut.new(tax_detail)
receipt.receipt_details


