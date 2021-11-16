#API:
##Order
###show
1. url: http://0.0.0.0:3000/orders/:user_id
2. method: GET

##Cart
###show
1. url: http://0.0.0.0:3000/carts/:user_id
2. method: GET

###create
1. url: http://0.0.0.0:3000/carts
2. method: POST
3. params: {
   "user_id": 140,
   "product_id": 5,
   "amount": 1
   }

   

##Shopping Group
###buy
1. url: http://0.0.0.0:3000/buy
2. method: POST
3. {
   "user_id": 4,
   "city": "New York"
   }

###group
1. url: http://0.0.0.0:3000/group/:city
2. method: GET
