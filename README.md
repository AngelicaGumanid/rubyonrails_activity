# Activity5
Create at least 10 records using the create method
```ruby=
Product.create(name: 'Laptop', price: 999.99, available: true, quantity: 25, discount: 10, description: 'High-performance laptop', released_at: '2022-05-15', expiry_date: nil)
Product.create(name: 'Smartphone', price: 699.99, available: true, quantity: 50, discount: 5, description: 'Latest model smartphone', released_at: '2023-01-10', expiry_date: nil)
Product.create(name: 'Tablet', price: 299.99, available: true, quantity: 30, discount: 0, description: 'Portable tablet', released_at: '2021-08-20', expiry_date: nil)
Product.create(name: 'Wireless Earbuds', price: 149.99, available: true, quantity: 100, discount: 15, description: 'Noise-canceling earbuds', released_at: '2023-02-15', expiry_date: nil)
Product.create(name: 'Smartwatch', price: 199.99, available: true, quantity: 75, discount: 20, description: 'Fitness tracking smartwatch', released_at: '2022-11-30', expiry_date: nil)
Product.create(name: 'Gaming Monitor', price: 399.99, available: true, quantity: 40, discount: 10, description: 'Ultra HD gaming monitor', released_at: '2022-04-25', expiry_date: nil)
Product.create(name: 'Bluetooth Speaker', price: 89.99, available: true, quantity: 150, discount: 5, description: 'Portable Bluetooth speaker', released_at: '2023-03-10', expiry_date: nil)
Product.create(name: 'External Hard Drive', price: 129.99, available: true, quantity: 60, discount: 10, description: '1TB external hard drive', released_at: '2022-09-15', expiry_date: nil)
Product.create(name: 'VR Headset', price: 299.99, available: true, quantity: 20, discount: 0, description: 'Virtual reality headset', released_at: '2023-05-01', expiry_date: nil)
Product.create(name: 'Camera', price: 499.99, available: true, quantity: 10, discount: 15, description: 'DSLR camera with lens', released_at: '2021-12-12', expiry_date: nil)
```
Create at least 10 records using the save method
```ruby=
# Record 1
product = Product.new                     
product.name = 'Gaming Laptop'          
product.price = 1299.99
product.available = true
product.quantity = 15
product.discount = 8
product.description = 'High-performance gaming laptop'
product.released_at = '2023-07-10'
product.expiry_date = nil
product.save
                               
# Record 2
product = Product.new
product.name = 'Noise-Canceling Headphones'
product.price = 349.99
product.available = true
product.quantity = 40
product.discount = 12
product.description = 'Over-ear headphones with active noise cancellation'
product.released_at = '2022-12-01'
product.expiry_date = nil
product.save
# Record 3
product = Product.new
product.name = '4K Ultra HD TV'
product.price = 899.99
product.available = true
product.quantity = 25
product.discount = 15
product.description = '55-inch 4K Ultra HD smart TV'
product.released_at = '2022-09-20'
product.expiry_date = nil
product.save
# Record 4
product = Product.new
product.name = 'Digital Camera'
product.price = 499.99
product.available = true
product.quantity = 30
product.discount = 5
product.description = 'Compact digital camera with Wi-Fi'
product.released_at = '2023-01-15'
product.expiry_date = nil
product.save
# Record 5
product = Product.new
product.name = 'Smart Refrigerator'
product.price = 1499.99
product.available = true
product.quantity = 20
product.discount = 10
product.description = 'Smart refrigerator with touchscreen'
product.released_at = '2023-03-01'
product.expiry_date = nil
product.save
# Record 6
product = Product.new
product.name = 'Portable Charger'
product.price = 29.99
product.available = true
product.quantity = 100
product.discount = 0
product.description = 'Compact portable charger for smartphones'
product.released_at = '2023-06-10'
product.expiry_date = nil
product.save
# Record 7
product = Product.new
product.name = 'Fitness Tracker'
product.price = 99.99
product.available = true
product.quantity = 60
product.discount = 10
product.description = 'Water-resistant fitness tracker'
product.released_at = '2023-02-05'
product.expiry_date = nil
product.save
# Record 8
product = Product.new
product.name = 'Wireless Mouse'
product.price = 39.99
product.available = true
product.quantity = 80
product.discount = 5
product.description = 'Ergonomic wireless mouse'
product.released_at = '2022-10-20'
product.expiry_date = nil
product.save
# Record 9
product = Product.new
product.name = 'Game Console'
product.price = 499.99
product.available = true
product.quantity = 10
product.discount = 20
product.description = 'Latest generation gaming console'
product.released_at = '2023-04-15'
product.expiry_date = nil
product.save
# Record 10
product = Product.new
product.name = 'Smart Home Hub'
product.price = 149.99
product.available = true
product.quantity = 50
product.discount = 15
product.description = 'Control your smart home devices'
product.released_at = '2023-05-25'
product.expiry_date = nil
product.save
```
Fetch all products where name is "Laptop".
```ruby=
Product.where(name: "Laptop")
```
Find products where price is greater than 100.
```ruby=
Product.where("price > ?", 100)
```
Retrieve products where available is true.
```ruby=
Product.where(available: true)
```
Fetch products where quantity is less than 50.
```ruby=
Product.where("quantity < ?", 50)
```
Find products where discount is exactly 10%.
```ruby=
Product.where(discount: 10.0)
```
Retrieve products where name contains the word "Pro".
```ruby=
Product.where("name LIKE ?", "%Pro%")
```
Fetch products where description includes the word "portable".
```ruby=
Product.where("description LIKE ?", "%portable%")
```
Find products where price is between 50 and 150.
```ruby=
Product.where(price: 50..150)
```
Retrieve products where available is false and quantity is greater than 0.
```ruby=
Product.where(available: false).where("quantity > ?", 0)
```
Fetch products where released_at is after January 1, 2023.
```ruby=
Product.where("released_at > ?", Date.new(2023, 1, 1))
```
Find products where expiry_date is nil.
```ruby=
Product.where(expiry_date: nil)
```
Retrieve products where released_at is before January 1, 2022.
```ruby=
Product.where("released_at < ?", Date.new(2022, 1, 1))
```
Fetch products where quantity is between 10 and 100.
```ruby=
Product.where(quantity: 10..100)
```
Find products where discount is greater than or equal to 5%.
```ruby=
Product.where("discount >= ?", 5)
```
Retrieve products where price is less than or equal to 200 and available is true.
```ruby=
Product.where("price <= ? AND available = ?", 200, true)
```
Fetch products where expiry_date is before today’s date.
```ruby=
Product.where("expiry_date < ?", Date.today)
```
Find products where name starts with the letter "A".
```ruby=
Product.where("name LIKE ?", "A%")
```
Retrieve products where price is not equal to 100.
```ruby=
Product.where.not(price: 100)
```
Fetch products where quantity is nil.
```ruby=
Product.where(quantity: nil)
```
Find products where discount is not nil.
```ruby=
Product.where.not(discount: nil)
```
Update the price of a product where name is "Laptop" to 120.
```ruby=
Product.where(name: "Laptop").update_all(price: 120)
```
Set the available status to false for products where quantity is 0.
```ruby=
Product.where(quantity: 0).update_all(available: false)
```
Increase the discount by 5% for products where price is greater than 100.
```ruby=
Product.where("price > ?", 100).update_all("discount = discount + 5") 
```
Update the description to "Out of stock" for products where available is false.
```ruby=
Product.where(available: false).update_all(description: "Out of stock")
```
Change the expiry_date to December 31, 2024, for products with a discount greater than 10%.
```ruby=
Product.where("discount > ?", 10).update_all(expiry_date: Date.new(2024, 12, 31))
```
Update the quantity to 50 for products where name starts with "Pro".
```ruby=
Product.where("name LIKE ?", "Pro%").update_all(quantity: 50)
```
Set the price to 200 for all products where discount is nil.
```ruby=
Product.where(discount: nil).update_all(price: 200)
```
Mark products as available if their released_at is before January 1, 2023.
```ruby=
Product.where("released_at < ?", Date.new(2023, 1, 1)).update_all(available: true)
```
Update the price to 80 where the quantity is between 10 and 20.
```ruby=
Product.where(quantity: 10..20).update_all(price: 80)
```
Remove any discount (set to nil) for products where expiry_date is before today.
```ruby=
Product.where("expiry_date < ?", Date.today).update_all(discount: nil)
```
Update the name to "Premium Laptop" for products where price is more than 500.
```ruby=
Product.where("price > ?", 500).update_all(name: "Premium Laptop")
```
Set the quantity to nil for products where available is false.
```ruby=
Product.where(available: false).update_all(quantity: nil)
```
Update released_at to the current date for products with a price less than 50.
```ruby=
Product.where("price < ?", 50).update_all(released_at: Date.today)
```
Reduce the price by 20% for products where quantity is less than 5.
```ruby=
Product.where("quantity < ?", 5).update_all("price = price * 0.8")
```
Set the discount to 0% for products with a price greater than or equal to 300.
```ruby=
Product.where("price >= ?", 300).update_all(discount: 0)
```
Change the description to "Limited time offer" where the discount is 15%.
```ruby=
Product.where(discount: 15).update_all(description: "Limited time offer")
```
Set available to true for products where the price is between 100 and 200.
```ruby=
Product.where(price: 100..200).update_all(available: true)
```
Increase the quantity by 10 for products where released_at is after January 1, 2023.
```ruby=
Product.where("released_at > ?", Date.new(2023, 1, 1)).update_all("quantity = quantity + 10")
```
Set the expiry_date to nil for products where discount is less than 5%.
```ruby=
Product.where("discount < ?", 5).update_all(expiry_date: nil)
```
Update the price to 150 where the description contains "sale".
```ruby=
Product.where("description LIKE ?", "%sale%").update_all(price: 150)
```
Delete a product where name is "Laptop".
```ruby=
Product.where(name: "Laptop").destroy_all
```
Remove all products where available is false.
```ruby=
Product.where(available: false).destroy_all
```
Delete products where price is greater than 500.
```ruby=
Product.where("price > ?", 500).destroy_all
```
Remove all products where quantity is 0.
```ruby=
Product.where(quantity: 0).destroy_all
```
Delete products where discount is greater than 20%.
```ruby=
Product.where("discount > ?", 20).destroy_all
```
Remove products where expiry_date is before today’s date.
```ruby=
Product.where("expiry_date < ?", Date.today).destroy_all
```
Delete all products where name starts with "Pro".
```ruby=
Product.where("name LIKE ?", "Pro%").destroy_all
```
Remove products where price is less than 50.
```ruby=
Product.where("price < ?", 50).destroy_all
```
Delete products where released_at is before January 1, 2022.
```ruby=
Product.where("released_at < ?", Date.new(2022, 1, 1)).destroy_all
```
Remove products where description contains "discontinued".
```ruby=
Product.where("description LIKE ?", "%discontinued%").destroy_all
```
Delete products where quantity is between 1 and 10.
```ruby=
Product.where(quantity: 1..10).destroy_all
```
Remove all products where available is true and price is greater than 300.
```ruby=
Product.where("available = ? AND price > ?", true, 300).destroy_all
```
Delete products where discount is nil.
```ruby=
Product.where(discount: nil).destroy_all
```
Remove products where price is exactly 100.
```ruby=
Product.where(price: 100).destroy_all
```
Delete products where released_at is more than 5 years ago.
```ruby=
Product.where("released_at < ?", 5.years.ago).destroy_all
```
Remove products where description includes "obsolete".
```ruby=
Product.where("description LIKE ?", "%obsolete%").destroy_all
```
Delete products where quantity is nil.
```ruby=
Product.where(quantity: nil).destroy_all
```
Remove products where expiry_date is within the next month.
```ruby=
Product.where("expiry_date BETWEEN ? AND ?", Date.today, 1.month.from_now).destroy_all
```
Delete products where discount is less than 5%.
```ruby=
Product.where("discount < ?", 5).destroy_all
```
Remove all products where available is true but quantity is less than 5.
```ruby=
Product.where("available = ? AND quantity < ?", true, 5).destroy_all
```
Print the name of all the products
```ruby=
Product.pluck(:name).each { |name| puts name }
```
Write a new migration to rename the description to content
```ruby=
class RenameDescriptionToContent < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :description, :content
  end
end
```
Write a new migration to add a new column image
```ruby=
class AddColumnImage < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :image, :string
  end
end
```
Write a new migration to remove the column expiry_date
```ruby=
class RemoveExpiryDate < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :expiry_date, :date
  end
end
```

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
