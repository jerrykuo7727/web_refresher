require 'rest_client'

print "Keyword to google: "
query = gets.chomp.split.join("+")

response = RestClient.get "https://www.google.com/#q=#{query}"

puts "<-- HTTP Status Code -->"
puts "#{response.code}"
puts

puts "<-- Cookies -->"
response.cookies.each { |key, value| puts "#{key.to_s}: #{value.to_s}" }
puts

puts "<-- Headers -->"
response.headers.each { |key, value| puts "#{key.to_s}: #{value.to_s}" }
puts

puts "<-- Body -->"
puts response.to_str

puts query