require 'httparty'
require 'nokogiri'
require 'json'
require 'csv'

# page to scrape
page = HTTParty.get('https://www.blocket.se/stockholm?q=l%C3%A4genhet&cg=0&w=1&st=s&c=&ca=11&is=1&l=0&md=th')

# parsed page
parsed_page = Nokogiri::HTML(page)

# an array for storing apartments
apartments_arr = []

# parsing page data
parsed_page.css('#item_list').css('.item_link').map do |a|
	post_name = a.text
	if post_name.include? "Stockholm"
		apartments_arr.push(post_name)
	end
end

puts apartments_arr

