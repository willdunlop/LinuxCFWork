customers = [
  { "FirstName" => "Phil", "LastName" => "Parker", "DOB" => "21/05/1989", "City" => "Sydney"},
  { "FirstName" => "Angela", "LastName" => "Blanc", "DOB" => "13/02/1991", "City" => "Melbourne"},
  { "FirstName" => "Tom", "LastName" => "McCoy", "DOB" => "30/12/1975", "City" => "Sydney"}
]
puts "\e[31mCUSTOMER LIST"
customers.each do |customer|
  puts "\e[0m "
  puts customer["FirstName"]
  puts customer["LastName"]
  puts customer["DOB"]
  puts customer["City"]
  puts "\e[31m"
  puts "-" * 10
  puts "\e[0m"
end
