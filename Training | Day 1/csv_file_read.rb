#! /home/rails/.rvm/rubies/ruby-2.3.1/bin/ruby
require 'csv'
CSV.open("/home/rails/vikas_project/output.csv", "wb", :headers => true) do |output|
  CSV.foreach("/home/rails/vikas_project/input.csv", :headers => true, :return_headers => true) do |row|
    if row.header_row?
      output << (row << "row3")
    else
      output << (row << row['row1'].to_f * (row['row2'].to_f))
    end
  end
end
