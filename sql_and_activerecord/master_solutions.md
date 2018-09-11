### Making your own queries

```
SELECT * FROM products WHERE title LIKE ‘T%’;
SELECT * FROM products ORDER BY id DESC LIMIT 3;
SELECT AVG(price) FROM products;
SELECT * FROM products WHERE description LIKE '%awesome%' OR description LIKE '%legendary%';
```

### ActiveRecord

```ruby
Product.all
Product.where("price > ?", 100)
Product.all.order(price: :desc)
Product.count

Product.where("title LIKE ?", "T%")
Product.all.order(id: :desc).first(3)
Product.average(:price)
Product.where("description LIKE ? OR description LIKE ?", "%awesome%", "%legendary%")
```

### Using ActiveRecord queries in Rails

```ruby
# app/controllers/api/speakers_controller.rb
  def index
    @speakers = Speaker.all.order(age: :asc)
    render "index.json.jbuilder"
  end
  ```
  ```ruby
# app/controllers/api/meetings_controller.rb
  def index
    @meetings = Meeting.where(remote: true)
    render "index.json.jbuilder"
  end
  ```