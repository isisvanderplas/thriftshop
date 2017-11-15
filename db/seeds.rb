User.destroy_all
Product.destroy_all

# ----- Users -----
izzy = User.create( email: "izzy@coda.com", pass: "123456")
henock = User.create( email: "henock@coda.com", pass: "123456")
anna = User.create( email: "anna@coda.com", pass: "123456")
robin = User.create( email: "izzy@coda.com", pass: "123456")
lianne = User.create( email: "izzy@coda.com", pass: "123456")

# ----- Products -----
blue_pen = Product.create( name:"Amazing Blue Pen", price: "5.95", description: "Amazing, luxurious pen!", image: "http://www.montblanc.com/content/dam/mtb/products/writing-instruments/114/810/114810/236159-ecom-osis-sq-04.png.adapt.450.450.png" )
black_glasses = Product.create( name:"Amazing Black Glasses", price: "99.95", description: "Amazing, luxurious glasses!", image: "http://www.cheapglasses123.com/images/1067560486.png" )
cool_phone = Product.create( name:"Amazing Cool Phone", price: "999.95", description: "Amazing, luxurious phone!", image: "https://i.ytimg.com/vi/bh0HWYwOAGY/maxresdefault.jpg" )
next_laptop = Product.create( name:"Amazing Next G Laptop", price: "2999.95", description: "Amazing, luxurious laptop!", image: "https://i.pinimg.com/736x/b5/78/c7/b578c711c0f3fdfbd4b95fb3cfd322da--future-gadgets-futuristic-technology.jpg" )
red_bag = Product.create( name:"Amazing Red Bag", price: "399.95", description: "Amazing, luxurious pen!", image: "https://www.zatchels.com/media/catalog/product/cache/1/image/1600x1300/9df78eab33525d08d6e5fb8d27136e95/z/a/zat286_classic_red_saddle_bag_angle.jpg" )
green_shoes = Product.create( name:"Amazing Green Shoes", price: "79.95", description: "Amazing, luxurious shoes!", image: "https://brightledshoes.com/wp-content/uploads/2016/07/green-yeezy-led-shoes-1.jpg" )
cool_car = Product.create( name:"Amazing Cool Car", price: "999999.95", description: "Amazing, luxurious car!", image: "http://www.fubiz.net/wp-content/uploads/2010/11/mercedes-released-biome-concept-photos-medium_1.jpg" )
big_boat = Product.create( name:"Amazing Big Boat", price: "777777.95", description: "Amazing, big boat!", image: "http://luxuryyachtconcierge.com/wp-content/uploads/25.jpg" )
