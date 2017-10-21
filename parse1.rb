# parsing test document to create csv object

require_relative './helpers'
require 'csv'

print_memory_usage do 
	print_time_spent do
		csv = CSV.read('data.csv', headers: true)
		sum = 0

		csv.each do |row|
			sum += row['id'].to_i
		end

		puts "Sum: #{sum}"
	end
end

# my results
# Sum: 499999500000
# Time: 31.51
# Memory: 1067.32 MB