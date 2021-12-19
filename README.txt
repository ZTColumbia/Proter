#Details:
##(1)Team
Member 1 Name: Zhan, Tong
Member 1 UNI: tz2483

Member 2 Name: Sun, Yingjin
Member 2 UNI: ys3400

Member 3 Name: Xu, Yuantai
Member 3 UNI: yx2623

Member 4 Name: Zeng, Dechen
Member 4 UNI: dz2455

##(2)How to run
To run, first "bundle install", then rake "db:migrate", and "rails s" then the server good to go.
Please use "/products" to add products before viewing the store page(we allow this to make testing easier).
Product link will show up on the homepage for the special user: admin@porter.com

After adding some products, we can go to the root_path to see the store.
To make an order, simply click Buy <product> button and add it to cart then click checkout. 

When use cucumber, PLZ USE bundle exec cucumber.

!!!!important!!! please sign up/ sign in, before you can use order/buy/cart functions!


##(3)User stories
We have now finished the model define of Products, Users and Stores(including Carts, Orders an Purchases). Now we can CRUD products & users in the site. We add login/logout/sign up/forget password/ edit password in the website. There is a add-to-cart prototype, simulating buying function.
So, the User stories, in short, are:

For user part:
I should be able to signin, signup, signout, forget password, edit password, view profile and edit profile. And the login status remains correct.
When I use a wrong/invalid information to login or to create a new account, it should tell I am wrong.

For product showing part:
I should be able to add/ delete/ edit /view detail information on a product item. (In the later versions, we will verify if the user is superuser so that can do that.) For all users, they can add to cart.

For store part:
I should be able to browse products, place orders, see order history, 
join existing group from same city. 
We group the orders with the same destination city before shipping.

Features:

Create a new product(with image)
Delete product
Edit product
Show product

User sign up
User login
View and Edit user profile
Forget password, reset password

View products, add to cart
Join an existing shopping group or automatically crate a new one
Container progress

Product search function is in progress.
Admin privilege is in progress.


(4)
Heroku deployment link:https://thawing-retreat-14461.herokuapp.com/
Note: 
Due to Heroku's file system policy, free tier only suport ephemeral image upload.
Please test file upload locally.

(5)
Code (Github repository link):https://github.com/ZTColumbia/Proter

(6)
For more info please check our video on YouTube https://www.youtube.com/watch?v=aKkPRLVDkEI

