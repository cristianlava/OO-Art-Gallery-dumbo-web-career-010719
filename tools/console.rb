require_relative '../config/environment.rb'


ross = Artist.new("bob ross" , 20)
barney = Artist.new("barney", 10)
edd = Artist.new("black hat", 5)
metro = Gallery.new("metro", "nyc")

mona = Painting.new("mona lisa", 1000, ross, metro)
barney_painting = Painting.new("purple", 10000, barney, metro)
tv = Painting.new("screen", 1000000, ross, metro)



binding.pry

puts "Bob Ross rules."
