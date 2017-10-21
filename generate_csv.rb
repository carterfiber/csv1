# this file generates a large csv file
# heavy memory usage

require 'csv'
require_relative './helpers'

headers = ['id', 'name', 'email', 'city', 'street', 'country']

name = "Pink Panther"
email = "pink.panther@example.com"
city = "Pink City"
street = "123 Pink Road"
country = "Pink County"

print_memory_usage do 
	print_time_spent do
		CSV.open('data.csv', 'w', write_headers: true, headers: headers) do |csv|
			1_000_000.times do |i|
				csv << [i, name, email, city, street, country]
			end
		end
	end
end

# my results
# Time: 12.65
# Memory: 2.45 MB
