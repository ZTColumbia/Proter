#API:
##Order
###show
1. url: http://0.0.0.0:3000/orders/
2. method: GET
3. output: 
~~~[
   {
   "order": [
   {
   "id": 1,
   "product_id": 1,
   "user_id": 1,
   "amount": 2,
   "created_at": "2021-11-14T04:22:45.123Z",
   "updated_at": "2021-11-14T04:22:45.123Z"
   }
   ],
   "group": {
   "id": 1,
   "city": "New York",
   "cur_people": 1,
   "total_people": 10,
   "created_at": "2021-11-13T18:24:36.908Z",
   "updated_at": "2021-11-13T18:24:36.908Z",
   "people": null
   }
   }
]
~~~
##Cart
###show
1. url: http://0.0.0.0:3000/carts/:user_id
2. method: GET
3. output:
~~~[
   {
   "id": 1,
   "product_id": null,
   "name": "1",
   "seller_id": null,
   "brand": "1",
   "price": 1.0,
   "weight": 1.0,
   "color": "Black",
   "discount": 1.0,
   "category": "Chair",
   "box": "1",
   "created_at": "2021-11-05T03:14:54.455Z",
   "updated_at": "2021-11-05T03:14:54.455Z",
   "buy_count": 0,
   "avatar": null
   }]
~~~
###create
1. url: http://0.0.0.0:3000/carts
2. method: POST
3. params: {
   "product_id": 5,
   "amount": 1
   }
(user_id from current_user.id)



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
3. output: 
~~~{
   "id": 16,
   "city": "New York",
   "cur_people": 3,
   "total_people": 10
   }
~~~