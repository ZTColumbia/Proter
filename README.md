#Details:
##(1)Team
Member 1 Name: Zhan, Tong
Member 1 UNI:  tz2483

Member 2 Name: Sun, Yingjin
Member 2 UNI:  ys3400

Member 3 Name: Xu, Yuantai
Member 3 UNI:  yx2623

Member 4 Name: Zeng, Dechen
Member 4 UNI:  dz2455

##(2)How to run
To run,need to bundle install, then rake db:migrate, then the server good to go
When use cucumber, PLZ USE  bundle exec cucumber.

##(3)User stories
We have now finished the model define of Products, Users.  Now we can CRUD products & users in the site. We add login/logout/sign up/forget password/ edit password in the website. There is a add-to-cart prototype, simulating buying function.
So, the User stories, in short, are:
1. For user part:
   I should be able to signin, signup, signout, forget password,edit password. And the login status remains correct.
   When I use a wrong/invalid information to login or to create a new account, it should tell I am wrong.

2. For product showing part:
   I should be able to add/ delete/ edit /view detail information on a product item. (In the later versions, we will verify if the user is superuser so that can do that.)  For all users, they can add to cart.

Features:

Create a new product
Delete product
Edit product
Show product

User sign up
User login
Buy a product and that will update the quantity being ordered


Shopping cart and and order history/status is in progress.


