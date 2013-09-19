PEOPLE = %w(
  Alan
  Ben
  Brad
  Brent
  Chris
  Christian
  Finn
  Georgia
  Jane
  Joseph
  Kath
  Kevin
  Lee
  Maks
  Nick
  Patrice
  Paul
  Sonia
  Teresa
)

BEVERAGES = [
  'Latte',
  'Espresso',
  'Decaf',
  'Tea',
  'Tea 1S',
  'Tea 2S',
  'Tea M',
  'Tea M 1S',
  'Tea M 2S'
]

PEOPLE.each do |name|
  url = "http://placehold.it/150x150&text=#{name}"
  Person.create!(:name => name, :remote_avatar_url => url)

  puts "Person #{name} created!"
end

BEVERAGES.each do |name|
  url = "http://placehold.it/150x150&text=#{name}"
  Beverage.create!(:name => name, :remote_image_url => url)

  puts "Beverage #{name} created!"
end
