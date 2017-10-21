# this script will parse the file using the CSV.foreach function from the CSV library

require_relative './helpers'
require 'csv'

print_memory_usage do 
	print_time_spent do
		sum = 0

		CSV.foreach('data2.csv', headers: true) do |row|
			sum += row['id'].to_i
		end

		puts "Sum: #{sum}"
	end
end
