require 'httparty'
require 'nokogiri'
require 'json'
require 'pry'
require 'csv'

# page to scrape
# alternative page: https://www.blocket.se/stockholm?q=l%C3%A4genhet&cg=0&w=1&st=s&c=&ca=11&is=1&l=0&md=th
page = HTTParty.get('https://newyork.craigslist.org/search/pet?s=0')

Pry.start(binding)