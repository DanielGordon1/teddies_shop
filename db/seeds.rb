puts 'Cleaning database...'
Teddy.destroy_all
Category.destroy_all

puts 'Creating categories...'
# store the result of a create in a variable
geek = Category.create!(name: 'geek')
kids = Category.create!(name: 'kids')

puts 'Creating teddies...'
# so that we can use it later in the seeds, when linking objects together for example.
Teddy.create!(sku: 'original-teddy-bear',
  name: 'Teddy bear',
  category: kids,
  photo_url: 'http://onehdwallpaper.com/wp-content/uploads/2015/07/Teddy-Bears-HD-Images.jpg',
  price: 11.5
  )

Teddy.create!(sku: 'jean-mimi',
  name: 'Jean-Michel - Le Wagon',
  category: geek,
  photo_url: 'https://pbs.twimg.com/media/B_AUcKeU4AE6ZcG.jpg:large',
  price: 20
  )
Teddy.create!(sku: 'octocat',
  name: 'Octocat -  GitHub',
  category: geek,
  photo_url: 'https://cdn-ak.f.st-hatena.com/images/fotolife/s/suzumidokoro/20160413/20160413220730.jpg',
  price: 25.5
  )
puts 'Finished!'
