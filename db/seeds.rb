# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# movies = [{:title => 'Aladdin', :rating => 'G', :release_date => '25-Nov-1992'},
#     	  {:title => 'The Terminator', :rating => 'R', :release_date => '26-Oct-1984'},
#     	  {:title => 'When Harry Met Sally', :rating => 'R', :release_date => '21-Jul-1989'},
#       	  {:title => 'The Help', :rating => 'PG-13', :release_date => '10-Aug-2011'},
#       	  {:title => 'Chocolat', :rating => 'PG-13', :release_date => '5-Jan-2001'},
#       	  {:title => 'Amelie', :rating => 'R', :release_date => '25-Apr-2001'},
#       	  {:title => '2001: A Space Odyssey', :rating => 'G', :release_date => '6-Apr-1968'},
#       	  {:title => 'The Incredibles', :rating => 'PG', :release_date => '5-Nov-2004'},
#       	  {:title => 'Raiders of the Lost Ark', :rating => 'PG', :release_date => '12-Jun-1981'},
#       	  {:title => 'Chicken Run', :rating => 'G', :release_date => '21-Jun-2000'},
#   	 ]
#
# movies.each do |movie|
#   Movie.create!(movie)
# end


group = [{:city => 'New York', :cur_people => 3, :total_people => 10, :people => "1_2_3_"},
         # {:city => 'New York', :cur_people => 2, :total_people => 20, :people => "10_20"},
  	 ]

group.each do |gp|
  ShoppingGroup.create!(gp)
end

cart = [{:user_id => 1, :items => "1_2|2_3"},
]
cart.each do |c|
  Cart.create!(c)
end



products=[{:product_id => 1, :name => "chair", :seller_id => "No.1", :brand=> "IKEA", :price => 200, :weight => 10, :color => "beige", :discount => 0, :category=> "furniture", :box => "13x15x12", :created_at => "2021.10.11", :updated_at => "2021.10.11", :avatar => "/assets/img_1.jpg"},
    {:product_id => 2, :name => "armchair", :seller_id => "No.2", :brand=> "IKEA", :price => 100, :weight => 13, :color => "beige", :discount => 0, :category=> "furniture", :box => "13x15x12", :created_at => "2021.10.11", :updated_at => "2021.10.13", :avatar => "/assets/slide_1.png"},
    {:product_id => 3, :name => "table chair", :seller_id => "No.3", :brand=> "IKEA", :price => 300, :weight => 14, :color => "beige", :discount => 0, :category=> "furniture", :box => "13x15x12", :created_at => "2021.10.11", :updated_at => "2021.10.14", :avatar => "/assets/slide_2.png"},
    {:product_id => 4, :name => "dinning chair", :seller_id => "No.4", :brand=> "IKEA", :price => 140, :weight => 12, :color => "beige", :discount => 0, :category=> "furniture", :box => "13x15x12", :created_at => "2021.10.11", :updated_at => "2021.10.15", :avatar => "/assets/slide_3.png"},
]

products.each do |p|
    Product.create!(p)
end