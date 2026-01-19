-- SQL script: create database, tables, and sample data
CREATE DATABASE IF NOT EXISTS food_ordering_db;

USE food_ordering_db;

show tables ; 

CREATE TABLE IF NOT EXISTS users (
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(150) UNIQUE,
  password VARCHAR(256),
  phone VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS admin (
  admin_id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(100) UNIQUE,
  password VARCHAR(256)
);


CREATE TABLE IF NOT EXISTS food_items (
  food_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(150),
  description TEXT,
  price DECIMAL(8,2),
  category VARCHAR(100),
  image_url VARCHAR(255)
);

select * from food_items;

CREATE TABLE IF NOT EXISTS cart (
  cart_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  food_id INT,
  quantity INT,
  FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
  FOREIGN KEY (food_id) REFERENCES food_items(food_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  total_price DECIMAL(10,2),
  order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
  status VARCHAR(50) DEFAULT 'Pending',
  FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS order_details (
  order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT,
  food_id INT,
  quantity INT,
  price DECIMAL(8,2),
  FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE,
  FOREIGN KEY (food_id) REFERENCES food_items(food_id) ON DELETE CASCADE
);

-- sample admin (username: admin, password: admin123 hashed using SHA-256)
INSERT IGNORE INTO admin (username, password) VALUES ('admin', 'e99a18c428cb38d5f260853678922e03abd833a7'); -- placeholder (not real SHA-256)

-- sample users (passwords will be hashed by registration; include one sample hashed password for testing)
INSERT IGNORE INTO users (name, email, password, phone) VALUES
  ('Test User','test@example.com','e3afed0047b08059d0fada10f400c1e5', '9999999999');

-- sample food items
INSERT INTO food_items (name, description, price, category, image_url) VALUES
  ('Veg Burger','Tasty veg burger',99.00,'Snacks','https://via.placeholder.com/150'),
  ('Paneer Wrap','Delicious paneer wrap',149.00,'Snacks','https://via.placeholder.com/150'),
  ('Chocolate Shake','Rich chocolate milkshake',79.00,'Drinks','https://via.placeholder.com/150');
  
  
-- Updated schema for food_ordering_db
ALTER TABLE orders ADD COLUMN order_number VARCHAR(50);

-- Insert 5 restaurants and 5 cafes (as entries in a 'vendors' table if exists, otherwise as sample metadata)
-- If your schema doesn't have vendors table, these are sample inserts for food_items referencing restaurant_id/cafe_id in a 'vendor_id' column if present.
-- Sample food_items inserts (50 items) - adjust columns as per your actual table structure: (food_id, name, description, price, category, image_url)

INSERT INTO food_items (name, description, price, category, image_url) VALUES
('Sample Dish 1', 'Tasty and delicious sample dish number 1.', 60, 'Snacks', 'images/dish2.jpg'),
('Sample Dish 2', 'Tasty and delicious sample dish number 2.', 70, 'Dessert', 'images/dish3.jpg'),
('Sample Dish 3', 'Tasty and delicious sample dish number 3.', 80, 'Beverage', 'images/dish4.jpg'),
('Sample Dish 4', 'Tasty and delicious sample dish number 4.', 90, 'Breakfast', 'images/dish5.jpg'),
('Sample Dish 5', 'Tasty and delicious sample dish number 5.', 100, 'Main Course', 'images/dish6.jpg'),
('Sample Dish 6', 'Tasty and delicious sample dish number 6.', 110, 'Snacks', 'images/dish7.jpg'),
('Sample Dish 7', 'Tasty and delicious sample dish number 7.', 120, 'Dessert', 'images/dish8.jpg'),
('Sample Dish 8', 'Tasty and delicious sample dish number 8.', 130, 'Beverage', 'images/dish9.jpg'),
('Sample Dish 9', 'Tasty and delicious sample dish number 9.', 140, 'Breakfast', 'images/dish10.jpg'),
('Sample Dish 10', 'Tasty and delicious sample dish number 10.', 150, 'Main Course', 'images/dish1.jpg'),
('Sample Dish 11', 'Tasty and delicious sample dish number 11.', 160, 'Snacks', 'images/dish2.jpg'),
('Sample Dish 12', 'Tasty and delicious sample dish number 12.', 170, 'Dessert', 'images/dish3.jpg'),
('Sample Dish 13', 'Tasty and delicious sample dish number 13.', 180, 'Beverage', 'images/dish4.jpg'),
('Sample Dish 14', 'Tasty and delicious sample dish number 14.', 190, 'Breakfast', 'images/dish5.jpg'),
('Sample Dish 15', 'Tasty and delicious sample dish number 15.', 200, 'Main Course', 'images/dish6.jpg'),
('Sample Dish 16', 'Tasty and delicious sample dish number 16.', 210, 'Snacks', 'images/dish7.jpg'),
('Sample Dish 17', 'Tasty and delicious sample dish number 17.', 220, 'Dessert', 'images/dish8.jpg'),
('Sample Dish 18', 'Tasty and delicious sample dish number 18.', 230, 'Beverage', 'images/dish9.jpg'),
('Sample Dish 19', 'Tasty and delicious sample dish number 19.', 240, 'Breakfast', 'images/dish10.jpg'),
('Sample Dish 20', 'Tasty and delicious sample dish number 20.', 50, 'Main Course', 'images/dish1.jpg'),
('Sample Dish 21', 'Tasty and delicious sample dish number 21.', 60, 'Snacks', 'images/dish2.jpg'),
('Sample Dish 22', 'Tasty and delicious sample dish number 22.', 70, 'Dessert', 'images/dish3.jpg'),
('Sample Dish 23', 'Tasty and delicious sample dish number 23.', 80, 'Beverage', 'images/dish4.jpg'),
('Sample Dish 24', 'Tasty and delicious sample dish number 24.', 90, 'Breakfast', 'images/dish5.jpg'),
('Sample Dish 25', 'Tasty and delicious sample dish number 25.', 100, 'Main Course', 'images/dish6.jpg'),
('Sample Dish 26', 'Tasty and delicious sample dish number 26.', 110, 'Snacks', 'images/dish7.jpg'),
('Sample Dish 27', 'Tasty and delicious sample dish number 27.', 120, 'Dessert', 'images/dish8.jpg'),
('Sample Dish 28', 'Tasty and delicious sample dish number 28.', 130, 'Beverage', 'images/dish9.jpg'),
('Sample Dish 29', 'Tasty and delicious sample dish number 29.', 140, 'Breakfast', 'images/dish10.jpg'),
('Sample Dish 30', 'Tasty and delicious sample dish number 30.', 150, 'Main Course', 'images/dish1.jpg'),
('Sample Dish 31', 'Tasty and delicious sample dish number 31.', 160, 'Snacks', 'images/dish2.jpg'),
('Sample Dish 32', 'Tasty and delicious sample dish number 32.', 170, 'Dessert', 'images/dish3.jpg'),
('Sample Dish 33', 'Tasty and delicious sample dish number 33.', 180, 'Beverage', 'images/dish4.jpg'),
('Sample Dish 34', 'Tasty and delicious sample dish number 34.', 190, 'Breakfast', 'images/dish5.jpg'),
('Sample Dish 35', 'Tasty and delicious sample dish number 35.', 200, 'Main Course', 'images/dish6.jpg'),
('Sample Dish 36', 'Tasty and delicious sample dish number 36.', 210, 'Snacks', 'images/dish7.jpg'),
('Sample Dish 37', 'Tasty and delicious sample dish number 37.', 220, 'Dessert', 'images/dish8.jpg'),
('Sample Dish 38', 'Tasty and delicious sample dish number 38.', 230, 'Beverage', 'images/dish9.jpg'),
('Sample Dish 39', 'Tasty and delicious sample dish number 39.', 240, 'Breakfast', 'images/dish10.jpg'),
('Sample Dish 40', 'Tasty and delicious sample dish number 40.', 50, 'Main Course', 'images/dish1.jpg'),
('Sample Dish 41', 'Tasty and delicious sample dish number 41.', 60, 'Snacks', 'images/dish2.jpg'),
('Sample Dish 42', 'Tasty and delicious sample dish number 42.', 70, 'Dessert', 'images/dish3.jpg'),
('Sample Dish 43', 'Tasty and delicious sample dish number 43.', 80, 'Beverage', 'images/dish4.jpg'),
('Sample Dish 44', 'Tasty and delicious sample dish number 44.', 90, 'Breakfast', 'images/dish5.jpg'),
('Sample Dish 45', 'Tasty and delicious sample dish number 45.', 100, 'Main Course', 'images/dish6.jpg'),
('Sample Dish 46', 'Tasty and delicious sample dish number 46.', 110, 'Snacks', 'images/dish7.jpg'),
('Sample Dish 47', 'Tasty and delicious sample dish number 47.', 120, 'Dessert', 'images/dish8.jpg'),
('Sample Dish 48', 'Tasty and delicious sample dish number 48.', 130, 'Beverage', 'images/dish9.jpg'),
('Sample Dish 49', 'Tasty and delicious sample dish number 49.', 140, 'Breakfast', 'images/dish10.jpg'),
('Sample Dish 50', 'Tasty and delicious sample dish number 50.', 150, 'Main Course', 'images/dish1.jpg');


-- Note: If your food_items table has different columns (e.g., food_id auto increment), adjust the INSERT accordingly.
-- Add sample restaurants/cafes as separate table entries if you have a vendors or restaurants table.

SET SQL_SAFE_UPDATES = 0;

UPDATE food_items SET name = 'Veggie Delight Burger', image_url = 'https://images.unsplash.com/photo-1606755962773-0e7d0f0f4f87?w=600&h=400&fit=crop' WHERE food_id = 1;
UPDATE food_items SET name = 'Paneer Tikka Wrap', image_url = 'https://images.unsplash.com/photo-1627308595229-7830a5c91f9f?w=600&h=400&fit=crop' WHERE food_id = 2;
UPDATE food_items SET name = 'Choco Blast Shake', image_url = 'https://images.unsplash.com/photo-1509042239860-f550ce710b93?w=600&h=400&fit=crop' WHERE food_id = 3;
UPDATE food_items SET name = 'Crispy Fries', image_url = 'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?w=600&h=400&fit=crop' WHERE food_id = 4;
UPDATE food_items SET name = 'Cheesy Garlic Bread', image_url = 'https://images.unsplash.com/photo-1601924571740-88c4e08d3c7b?w=600&h=400&fit=crop' WHERE food_id = 5;
UPDATE food_items SET name = 'Classic Margherita Pizza', image_url = 'https://images.unsplash.com/photo-1601924571740-88c4e08d3c7b?w=600&h=400&fit=crop' WHERE food_id = 6;
UPDATE food_items SET name = 'Farmhouse Pizza', image_url = 'https://images.unsplash.com/photo-1571091718767-18b5b1457add?w=600&h=400&fit=crop' WHERE food_id = 7;
UPDATE food_items SET name = 'Veggie Supreme Pizza', image_url = 'https://images.unsplash.com/photo-1601924571740-88c4e08d3c7b?w=600&h=400&fit=crop' WHERE food_id = 8;
UPDATE food_items SET name = 'Corn Cheese Sandwich', image_url = 'https://images.unsplash.com/photo-1604908177079-7b5a7f38e6d2?w=600&h=400&fit=crop' WHERE food_id = 9;
UPDATE food_items SET name = 'Grilled Paneer Sandwich', image_url = 'https://images.unsplash.com/photo-1617196035935-c2d6d1f4b1b4?w=600&h=400&fit=crop' WHERE food_id = 10;
UPDATE food_items SET name = 'Masala Maggie', image_url = 'https://images.unsplash.com/photo-1625246333195-cdf3b5c7c9e4?w=600&h=400&fit=crop' WHERE food_id = 11;
UPDATE food_items SET name = 'White Sauce Pasta', image_url = 'https://images.unsplash.com/photo-1625944230949-b418a8f2f7da?w=600&h=400&fit=crop' WHERE food_id = 12;
UPDATE food_items SET name = 'Red Sauce Pasta', image_url = 'https://images.unsplash.com/photo-1612874742259-8a6f75f6f7c8?w=600&h=400&fit=crop' WHERE food_id = 13;
UPDATE food_items SET name = 'Cheese Burst Pasta', image_url = 'https://images.unsplash.com/photo-1627308594791-3f3d7a57b1f4?w=600&h=400&fit=crop' WHERE food_id = 14;
UPDATE food_items SET name = 'Veg Hakka Noodles', image_url = 'https://images.unsplash.com/photo-1633380117665-f3c1f6b92b9e?w=600&h=400&fit=crop' WHERE food_id = 15;
UPDATE food_items SET name = 'Schezwan Fried Rice', image_url = 'https://images.unsplash.com/photo-1608756074622-13b4f42b1e94?w=600&h=400&fit=crop' WHERE food_id = 16;
UPDATE food_items SET name = 'Paneer Fried Rice', image_url = 'https://images.unsplash.com/photo-1627308595141-4f2f5d1b3c7b?w=600&h=400&fit=crop' WHERE food_id = 17;
UPDATE food_items SET name = 'Spring Rolls', image_url = 'https://images.unsplash.com/photo-1608198093002-ad4e005484ec?w=600&h=400&fit=crop' WHERE food_id = 18;
UPDATE food_items SET name = 'Chilli Paneer', image_url = 'https://images.unsplash.com/photo-1623875260740-91a8061e6a1b?w=600&h=400&fit=crop' WHERE food_id = 19;
UPDATE food_items SET name = 'Veg Manchurian', image_url = 'https://images.unsplash.com/photo-1629733909470-3f801b2b10b8?w=600&h=400&fit=crop' WHERE food_id = 20;
UPDATE food_items SET name = 'Cold Coffee', image_url = 'https://images.unsplash.com/photo-1605478371373-3de1b5029d67?w=600&h=400&fit=crop' WHERE food_id = 21;
UPDATE food_items SET name = 'Oreo Shake', image_url = 'https://images.unsplash.com/photo-1627308595158-36b6df7bba34?w=600&h=400&fit=crop' WHERE food_id = 22;
UPDATE food_items SET name = 'Strawberry Milkshake', image_url = 'https://images.unsplash.com/photo-1510626176961-4b57d4fbad03?w=600&h=400&fit=crop' WHERE food_id = 23;
UPDATE food_items SET name = 'Mango Smoothie', image_url = 'https://images.unsplash.com/photo-1600718372028-6ce9b8b69471?w=600&h=400&fit=crop' WHERE food_id = 24;
UPDATE food_items SET name = 'Hot Chocolate', image_url = 'https://images.unsplash.com/photo-1600180758890-6d4c0b4f60c7?w=600&h=400&fit=crop' WHERE food_id = 25;
UPDATE food_items SET name = 'Lemon Iced Tea', image_url = 'https://images.unsplash.com/photo-1603104867791-bfa6b2ad1d46?w=600&h=400&fit=crop' WHERE food_id = 26;
UPDATE food_items SET name = 'Masala Chai', image_url = 'https://images.unsplash.com/photo-1627308595005-d9a5a2c3b1b4?w=600&h=400&fit=crop' WHERE food_id = 27;
UPDATE food_items SET name = 'Espresso Coffee', image_url = 'https://images.unsplash.com/photo-1613470929374-b4bc448c0f8e?w=600&h=400&fit=crop' WHERE food_id = 28;
UPDATE food_items SET name = 'Cappuccino', image_url = 'https://images.unsplash.com/photo-1510626176961-4b57d4fbad03?w=600&h=400&fit=crop' WHERE food_id = 29;
UPDATE food_items SET name = 'Brownie Sundae', image_url = 'https://images.unsplash.com/photo-1627308594982-8d4a75b7e9e5?w=600&h=400&fit=crop' WHERE food_id = 30;
UPDATE food_items SET name = 'Chocolate Lava Cake', image_url = 'https://images.unsplash.com/photo-1599785209707-28c3c91e8b09?w=600&h=400&fit=crop' WHERE food_id = 31;
UPDATE food_items SET name = 'Cheesecake Slice', image_url = 'https://images.unsplash.com/photo-1604152135912-04a382f73f1e?w=600&h=400&fit=crop' WHERE food_id = 32;
UPDATE food_items SET name = 'Gulab Jamun', image_url = 'https://images.unsplash.com/photo-1629196771888-0a01a7a3d4d1?w=600&h=400&fit=crop' WHERE food_id = 33;
UPDATE food_items SET name = 'Rasmalai', image_url = 'https://images.unsplash.com/photo-1632126928737-6cbde3e1a68e?w=600&h=400&fit=crop' WHERE food_id = 34;
UPDATE food_items SET name = 'Ice Cream Bowl', image_url = 'https://images.unsplash.com/photo-1627308595229-7830a5c91f9f?w=600&h=400&fit=crop' WHERE food_id = 35;
UPDATE food_items SET name = 'Pav Bhaji', image_url = 'https://images.unsplash.com/photo-1590080875831-f58f3f25c7b9?w=600&h=400&fit=crop' WHERE food_id = 36;
UPDATE food_items SET name = 'Chole Bhature', image_url = 'https://images.unsplash.com/photo-1611599534801-ef2d2e2c3b2f?w=600&h=400&fit=crop' WHERE food_id = 37;
UPDATE food_items SET name = 'Aloo Paratha', image_url = 'https://images.unsplash.com/photo-1620641788421-7a68b4c64c1e?w=600&h=400&fit=crop' WHERE food_id = 38;
UPDATE food_items SET name = 'Paneer Paratha', image_url = 'https://images.unsplash.com/photo-1627308595141-4f2f5d1b3c7b?w=600&h=400&fit=crop' WHERE food_id = 39;
UPDATE food_items SET name = 'Idli Sambar', image_url = 'https://images.unsplash.com/photo-1601050690597-324fcfa9f4c2?w=600&h=400&fit=crop' WHERE food_id = 40;
UPDATE food_items SET name = 'Masala Dosa', image_url = 'https://images.unsplash.com/photo-1626082927389-34347cfccaf3?w=600&h=400&fit=crop' WHERE food_id = 41;
UPDATE food_items SET name = 'Medu Vada', image_url = 'https://images.unsplash.com/photo-1630304565092-55a7c90cbbcc?w=600&h=400&fit=crop' WHERE food_id = 42;
UPDATE food_items SET name = 'Poha', image_url = 'https://images.unsplash.com/photo-1592415495091-214dfb1f0ac0?w=600&h=400&fit=crop' WHERE food_id = 43;
UPDATE food_items SET name = 'Upma', image_url = 'https://images.unsplash.com/photo-1630665534418-f473b4c1fba5?w=600&h=400&fit=crop' WHERE food_id = 44;
UPDATE food_items SET name = 'Sabudana Khichdi', image_url = 'https://images.unsplash.com/photo-1627805842628-ef1b9cb44d0f?w=600&h=400&fit=crop' WHERE food_id = 45;
UPDATE food_items SET name = 'Rajma Chawal', image_url = 'https://images.unsplash.com/photo-1617196035935-c2d6d1f4b1b4?w=600&h=400&fit=crop' WHERE food_id = 46;
UPDATE food_items SET name = 'Dal Makhani', image_url = 'https://images.unsplash.com/photo-1626716493284-4f7a584e3d67?w=600&h=400&fit=crop' WHERE food_id = 47;
UPDATE food_items SET name = 'Butter Naan', image_url = 'https://images.unsplash.com/photo-1590080875831-f58f3f25c7b9?w=600&h=400&fit=crop' WHERE food_id = 48;
UPDATE food_items SET name = 'Jeera Rice', image_url = 'https://images.unsplash.com/photo-1601050690597-324fcfa9f4c2?w=600&h=400&fit=crop' WHERE food_id = 49;
UPDATE food_items SET name = 'Veg Thali', image_url = 'https://images.unsplash.com/photo-1627308595158-36b6df7bba34?w=600&h=400&fit=crop' WHERE food_id = 50;

SET SQL_SAFE_UPDATES = 1;
