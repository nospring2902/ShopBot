INSERT INTO Brand (Brand_Name, Description, Logo_URL, Origin_Country) VALUES
('Nike', 'Sportswear and sneakers brand', 'https://example.com/logo_nike.png', 'USA'),
('Adidas', 'Global sportswear manufacturer', 'https://example.com/logo_adidas.png', 'Germany'),
('Puma', 'Athletic and casual footwear, apparel and accessories', 'https://example.com/logo_puma.png', 'Germany'),
('Reebok', 'Sports footwear and apparel brand', 'https://example.com/logo_reebok.png', 'UK'),
('Under Armour', 'Performance apparel and gear', 'https://example.com/logo_ua.png', 'USA'),
('Asics', 'Running shoes and athletic gear', 'https://example.com/logo_asics.png', 'Japan'),
('New Balance', 'Athletic footwear and apparel', 'https://example.com/logo_nb.png', 'USA'),
('Converse', 'Footwear and apparel brand', 'https://example.com/logo_converse.png', 'USA'),
('Fila', 'Sportswear brand with stylish designs', 'https://example.com/logo_fila.png', 'South Korea'),
('Skechers', 'Comfortable footwear and sports shoes', 'https://example.com/logo_skechers.png', 'USA'),
('Mizuno', 'Sports equipment and sportswear', 'https://example.com/logo_mizuno.png', 'Japan'),
('Jordan', 'Basketball shoes and apparel line by Nike', 'https://example.com/logo_jordan.png', 'USA'),
('Vans', 'Skateboarding shoes and apparel', 'https://example.com/logo_vans.png', 'USA'),
('Lotto', 'Italian sportswear manufacturer', 'https://example.com/logo_lotto.png', 'Italy'),
('Diadora', 'Footwear and apparel from Italy', 'https://example.com/logo_diadora.png', 'Italy'),
('Hoka One One', 'Performance running shoes', 'https://example.com/logo_hoka.png', 'France'),
('Saucony', 'Running shoes and athletic gear', 'https://example.com/logo_saucony.png', 'USA'),
('Brooks', 'High-performance running gear', 'https://example.com/logo_brooks.png', 'USA'),
('Li-Ning', 'Chinese sportswear company', 'https://example.com/logo_lining.png', 'China'),
('Anta', 'Sportswear and equipment brand from China', 'https://example.com/logo_anta.png', 'China');

-- Danh mục cha (Parent_Category_ID = NULL)
INSERT INTO Product_Category (Parent_Category_ID, Category_Name, Description) VALUES
(NULL, 'Footwear', 'All types of shoes and sandals'),
(NULL, 'Apparel', 'Clothing items for sports and casual wear'),
(NULL, 'Accessories', 'Fashion and sports accessories'),
(NULL, 'Equipment', 'Sports equipment and gear'),
(NULL, 'Bags', 'Bags for sports, travel, and daily use');

-- Danh mục con của 'Footwear'
INSERT INTO Product_Category (Parent_Category_ID, Category_Name, Description) VALUES
(1, 'Running Shoes', 'Shoes designed for running'),
(1, 'Sneakers', 'Casual and lifestyle sneakers'),
(1, 'Sandals', 'Open-toe footwear'),
(1, 'Cleats', 'Shoes with spikes for soccer, baseball, etc.');

-- Danh mục con của 'Apparel'
INSERT INTO Product_Category (Parent_Category_ID, Category_Name, Description) VALUES
(2, 'T-Shirts', 'Casual and athletic t-shirts'),
(2, 'Shorts', 'Sports and casual shorts'),
(2, 'Jackets', 'Jackets and windbreakers'),
(2, 'Compression Wear', 'Compression shirts, leggings, etc.');

-- Danh mục con của 'Accessories'
INSERT INTO Product_Category (Parent_Category_ID, Category_Name, Description) VALUES
(3, 'Hats', 'Caps and hats for sports and fashion'),
(3, 'Socks', 'Athletic and casual socks'),
(3, 'Wristbands', 'Sweatbands and wrist accessories');

-- Danh mục con của 'Bags'
INSERT INTO Product_Category (Parent_Category_ID, Category_Name, Description) VALUES
(5, 'Backpacks', 'Backpacks for sports or school'),
(5, 'Duffel Bags', 'Large bags for gym or travel'),
(5, 'Waist Packs', 'Compact waist bags for carrying essentials');



INSERT INTO Customer (Email, Phone, Name, Address) VALUES
('john.doe@example.com', '1234567890', 'John Doe', '123 Main St, New York, NY'),
('jane.smith@example.com', '0987654321', 'Jane Smith', '456 Elm St, Los Angeles, CA'),
('alice.nguyen@example.com', '0912345678', 'Alice Nguyen', '789 Oak St, Chicago, IL'),
('bob.tanaka@example.com', '0801234567', 'Bob Tanaka', '321 Pine St, Tokyo, Japan'),
('emma.wang@example.com', '0709876543', 'Emma Wang', '654 Maple St, Beijing, China'),
('lucas.martin@example.com', '0612345678', 'Lucas Martin', '987 Birch St, Paris, France'),
('sofia.lee@example.com', '0501122334', 'Sofia Lee', '147 Cedar St, Seoul, South Korea'),
('liam.kim@example.com', '0402233445', 'Liam Kim', '258 Walnut St, Busan, South Korea'),
('olivia.chen@example.com', '0303344556', 'Olivia Chen', '369 Chestnut St, Taipei, Taiwan'),
('noah.tran@example.com', '0204455667', 'Noah Tran', '741 Spruce St, Hanoi, Vietnam'),
('ava.saito@example.com', '0905566778', 'Ava Saito', '852 Willow St, Osaka, Japan'),
('mason.kawasaki@example.com', '0816677889', 'Mason Kawasaki', '963 Poplar St, Kyoto, Japan'),
('mia.hoang@example.com', '0827788990', 'Mia Hoang', '159 Aspen St, Ho Chi Minh City, Vietnam'),
('ethan.yamada@example.com', '0838899001', 'Ethan Yamada', '753 Fir St, Sapporo, Japan'),
('isabella.takahashi@example.com', '0849900112', 'Isabella Takahashi', '456 Redwood St, Nagoya, Japan'),
('logan.pham@example.com', '0851011121', 'Logan Pham', '654 Sycamore St, Da Nang, Vietnam'),
('amelia.nakamura@example.com', '0862122232', 'Amelia Nakamura', '987 Palm St, Fukuoka, Japan'),
('james.vo@example.com', '0873233343', 'James Vo', '321 Dogwood St, Can Tho, Vietnam'),
('charlotte.ito@example.com', '0884344454', 'Charlotte Ito', '147 Beech St, Kobe, Japan'),
('benjamin.truong@example.com', '0895455565', 'Benjamin Truong', '258 Cedar St, Hue, Vietnam');


INSERT INTO Payment_Method (Method_Name, Description) VALUES
('Credit Card', 'Payment using Visa, MasterCard, or other credit cards'),
('Debit Card', 'Payment using linked bank debit cards'),
('PayPal', 'Online payment via PayPal account'),
('Apple Pay', 'Mobile payment using Apple devices'),
('Google Pay', 'Digital wallet payment with Google account'),
('Bank Transfer', 'Direct transfer from bank account'),
('Cash on Delivery', 'Pay with cash when receiving the order'),
('Gift Card', 'Use store-issued or third-party gift cards'),
('Cryptocurrency', 'Payment with Bitcoin, Ethereum, or other crypto'),
('Mobile Banking', 'Payment via banking apps on smartphones'),
('Line Pay', 'Mobile wallet service from LINE'),
('Alipay', 'Popular digital wallet in China'),
('WeChat Pay', 'Mobile payment service integrated with WeChat'),
('QR Code Payment', 'Scan QR code to complete payment'),
('Prepaid Card', 'Payment using prepaid cards with stored value'),
('E-wallet', 'Generic term for all digital wallet services'),
('Installment', 'Buy now, pay later with monthly installments'),
('Bank Draft', 'Secure payment via bank-issued draft'),
('POS Payment', 'Payment at point-of-sale terminals'),
('Voucher', 'Redeem store-issued vouchers or coupons');


INSERT INTO Shipping_Method (Method_Name, Description, Cost_per_product, average_delivery_time_per_km) VALUES
('Standard Shipping', 'Basic delivery with standard timing', 2.50, 0.60),
('Express Shipping', 'Fast delivery within 1–2 days', 5.00, 0.40),
('Overnight Shipping', 'Next-day delivery for urgent orders', 8.00, 0.25),
('Same-Day Delivery', 'Delivery on the same day of order', 10.00, 0.15),
('Two-Day Delivery', 'Delivery within 2 business days', 6.00, 0.35),
('Economy Shipping', 'Low-cost, slower delivery', 1.80, 0.90),
('Pickup Point', 'Delivered to a local pickup location', 1.20, 0.70),
('In-Store Pickup', 'Customer picks up item in-store', 0.00, 0.00),
('International Standard', 'Standard international delivery', 12.00, 0.50),
('International Express', 'Fast international shipping', 20.00, 0.30),
('Drone Delivery', 'Automated drone-based shipping', 15.00, 0.20),
('Eco Shipping', 'Environmentally-friendly delivery option', 3.00, 0.80),
('Weekend Delivery', 'Delivery available on weekends', 4.50, 0.50),
('Scheduled Delivery', 'Customer chooses delivery time slot', 5.00, 0.55),
('Refrigerated Shipping', 'Temperature-controlled for perishables', 7.50, 0.45),
('Bulky Item Delivery', 'Special handling for large items', 9.00, 0.70),
('Courier Service', 'Third-party courier for personal service', 6.50, 0.40),
('Locker Delivery', 'Delivered to a secure smart locker', 2.20, 0.65),
('Subscription Shipping', 'Part of a monthly subscription plan', 0.00, 0.00),
('Customs-Cleared Express', 'Faster international shipping with customs clearance', 25.00, 0.28);


INSERT INTO Shipping_Address (Customer_ID, Receiver_Name, Receiver_Phone, Country, City, Province_State, Postal_Code, Is_Default) VALUES
(1, 'John Doe', '1234567890', 'USA', 'New York', 'NY', '10001', TRUE),
(2, 'Jane Smith', '0987654321', 'USA', 'Los Angeles', 'CA', '90001', TRUE),
(3, 'Alice Nguyen', '0912345678', 'USA', 'Chicago', 'IL', '60601', TRUE),
(4, 'Bob Tanaka', '0801234567', 'Japan', 'Tokyo', 'Tokyo', '100-0001', TRUE),
(5, 'Emma Wang', '0709876543', 'China', 'Beijing', 'Beijing', '100000', TRUE),
(6, 'Lucas Martin', '0612345678', 'France', 'Paris', 'Île-de-France', '75001', TRUE),
(7, 'Sofia Lee', '0501122334', 'South Korea', 'Seoul', 'Seoul', '04524', TRUE),
(8, 'Liam Kim', '0402233445', 'South Korea', 'Busan', 'Busan', '48794', TRUE),
(9, 'Olivia Chen', '0303344556', 'Taiwan', 'Taipei', 'Taipei', '100', TRUE),
(10, 'Noah Tran', '0204455667', 'Vietnam', 'Hanoi', 'Hanoi', '100000', TRUE),
(11, 'Ava Saito', '0905566778', 'Japan', 'Osaka', 'Osaka', '530-0001', TRUE),
(12, 'Mason Kawasaki', '0816677889', 'Japan', 'Kyoto', 'Kyoto', '600-8001', TRUE),
(13, 'Mia Hoang', '0827788990', 'Vietnam', 'Ho Chi Minh City', 'HCMC', '700000', TRUE),
(14, 'Ethan Yamada', '0838899001', 'Japan', 'Sapporo', 'Hokkaido', '060-0001', TRUE),
(15, 'Isabella Takahashi', '0849900112', 'Japan', 'Nagoya', 'Aichi', '450-0001', TRUE),
(16, 'Logan Pham', '0851011121', 'Vietnam', 'Da Nang', 'Da Nang', '550000', TRUE),
(17, 'Amelia Nakamura', '0862122232', 'Japan', 'Fukuoka', 'Fukuoka', '810-0001', TRUE),
(18, 'James Vo', '0873233343', 'Vietnam', 'Can Tho', 'Can Tho', '900000', TRUE),
(19, 'Charlotte Ito', '0884344454', 'Japan', 'Kobe', 'Hyogo', '650-0001', TRUE),
(20, 'Benjamin Truong', '0895455565', 'Vietnam', 'Hue', 'Thua Thien-Hue', '530000', TRUE);



INSERT INTO Promotion (Description, Discount_Type, Discount_Value, Start_Date, End_Date, Coupon_Code, Minimum_Order, Status) VALUES
('Spring Sale 10% off', 'percentage', 10.00, '2025-03-01', '2025-03-31', 'SPRING10', 50.00, 'expired'),
('Summer Blowout - $15 Off', 'fixed_amount', 15.00, '2025-06-01', '2025-06-15', 'SUMMER15', 75.00, 'active'),
('Black Friday 25%', 'percentage', 25.00, '2025-11-28', '2025-11-28', 'BLACK25', 100.00, 'inactive'),
('Holiday Discount $20', 'fixed_amount', 20.00, '2025-12-20', '2025-12-31', 'HOLIDAY20', 150.00, 'inactive'),
('Free Shipping Promo', 'fixed_amount', 5.00, '2025-01-01', '2025-01-10', 'FREESHIP', 30.00, 'expired'),
('Flash Deal 30%', 'percentage', 30.00, '2025-04-01', '2025-04-03', 'FLASH30', 40.00, 'expired'),
('Welcome Bonus $10', 'fixed_amount', 10.00, '2025-01-01', '2025-12-31', 'WELCOME10', 20.00, 'active'),
('Student Discount 12%', 'percentage', 12.00, '2025-02-01', '2025-12-31', 'STUDENT12', 40.00, 'active'),
('Loyalty Reward - $8', 'fixed_amount', 8.00, '2025-03-15', '2025-04-15', 'LOYAL8', 60.00, 'expired'),
('Weekend Special 5%', 'percentage', 5.00, '2025-04-19', '2025-04-20', 'WEEKEND5', 25.00, 'expired'),
('VIP Deal $25', 'fixed_amount', 25.00, '2025-05-01', '2025-05-10', 'VIP25', 200.00, 'active'),
('Flash Friday 20%', 'percentage', 20.00, '2025-04-25', '2025-04-25', 'FLASH20', 50.00, 'active'),
('Autumn Sale - $12', 'fixed_amount', 12.00, '2025-09-01', '2025-09-30', 'AUTUMN12', 45.00, 'inactive'),
('Halloween Deal 18%', 'percentage', 18.00, '2025-10-28', '2025-10-31', 'SPOOKY18', 65.00, 'inactive'),
('Cyber Monday 22%', 'percentage', 22.00, '2025-12-01', '2025-12-01', 'CYBER22', 80.00, 'inactive'),
('Back to School $9 Off', 'fixed_amount', 9.00, '2025-08-15', '2025-09-05', 'SCHOOL9', 35.00, 'inactive'),
('Birthday Promo 14%', 'percentage', 14.00, '2025-01-01', '2025-12-31', 'BDAY14', 30.00, 'active'),
('Green Day $7', 'fixed_amount', 7.00, '2025-04-22', '2025-04-22', 'GREEN7', 20.00, 'active'),
('New Year Kickoff 15%', 'percentage', 15.00, '2025-01-01', '2025-01-05', 'NEWYEAR15', 100.00, 'expired'),
('Refer-a-Friend $5', 'fixed_amount', 5.00, '2025-01-01', '2025-12-31', 'REFER5', 10.00, 'active');


INSERT INTO Product (Product_Name, Category_ID, Brand_ID, Description, Price, Stock_Quantity, Image_URLs, Specifications)
VALUES
('Product 1', 1, 1, 'Description for Product 1', 100.00, 50, 'http://example.com/image1.jpg', 'Specification details for Product 1'),
('Product 2', 2, 2, 'Description for Product 2', 150.00, 100, 'http://example.com/image2.jpg', 'Specification details for Product 2'),
('Product 3', 1, 1, 'Description for Product 3', 200.00, 75, 'http://example.com/image3.jpg', 'Specification details for Product 3'),
('Product 4', 3, 3, 'Description for Product 4', 50.00, 200, 'http://example.com/image4.jpg', 'Specification details for Product 4'),
('Product 5', 2, 2, 'Description for Product 5', 120.00, 60, 'http://example.com/image5.jpg', 'Specification details for Product 5'),
('Product 6', 1, 3, 'Description for Product 6', 80.00, 30, 'http://example.com/image6.jpg', 'Specification details for Product 6'),
('Product 7', 2, 1, 'Description for Product 7', 90.00, 150, 'http://example.com/image7.jpg', 'Specification details for Product 7'),
('Product 8', 3, 3, 'Description for Product 8', 110.00, 80, 'http://example.com/image8.jpg', 'Specification details for Product 8'),
('Product 9', 2, 2, 'Description for Product 9', 130.00, 200, 'http://example.com/image9.jpg', 'Specification details for Product 9'),
('Product 10', 1, 1, 'Description for Product 10', 70.00, 90, 'http://example.com/image10.jpg', 'Specification details for Product 10'),
('Product 11', 3, 1, 'Description for Product 11', 200.00, 100, 'http://example.com/image11.jpg', 'Specification details for Product 11'),
('Product 12', 2, 3, 'Description for Product 12', 75.00, 150, 'http://example.com/image12.jpg', 'Specification details for Product 12'),
('Product 13', 1, 2, 'Description for Product 13', 160.00, 50, 'http://example.com/image13.jpg', 'Specification details for Product 13'),
('Product 14', 3, 1, 'Description for Product 14', 130.00, 200, 'http://example.com/image14.jpg', 'Specification details for Product 14'),
('Product 15', 1, 3, 'Description for Product 15', 210.00, 75, 'http://example.com/image15.jpg', 'Specification details for Product 15'),
('Product 16', 2, 2, 'Description for Product 16', 90.00, 250, 'http://example.com/image16.jpg', 'Specification details for Product 16'),
('Product 17', 1, 1, 'Description for Product 17', 55.00, 50, 'http://example.com/image17.jpg', 'Specification details for Product 17'),
('Product 18', 3, 3, 'Description for Product 18', 170.00, 100, 'http://example.com/image18.jpg', 'Specification details for Product 18'),
('Product 19', 2, 2, 'Description for Product 19', 135.00, 60, 'http://example.com/image19.jpg', 'Specification details for Product 19'),
('Product 20', 1, 3, 'Description for Product 20', 180.00, 150, 'http://example.com/image20.jpg', 'Specification details for Product 20');


INSERT INTO `Order` (
    Customer_ID, Payment_Method_ID, Shipping_Method_ID, Shipping_Address_ID, Promotion_ID,
    Order_Date, Total_Amount, Shipping_Fee, Discount,
    Payment_Status, Order_Status, Estimated_Delivery_Date, Note
)
VALUES
(1, 1, 1, 1, 1, '2025-04-01 10:30:00', 150.00, 5.00, 10.00, 'paid', 'Processing', '2025-04-05', 'Leave at front door'),
(2, 2, 2, 2, 2, '2025-04-02 15:00:00', 200.00, 10.00, 15.00, 'paid', 'Shipped', '2025-04-07', ''),
(3, 1, 1, 3, 3, '2025-04-03 09:45:00', 80.00, 4.00, 8.00, 'pending', 'Pending', '2025-04-08', 'Call before delivery'),
(4, 3, 2, 4, 4, '2025-04-04 14:20:00', 300.00, 12.00, 20.00, 'paid', 'Delivered', '2025-04-06', ''),
(5, 2, 1, 5, NULL, '2025-04-05 11:10:00', 50.00, 3.00, 0.00, 'unpaid', 'Pending', '2025-04-10', ''),
(1, 1, 2, 1, 5, '2025-04-06 12:00:00', 120.00, 5.00, 5.00, 'paid', 'Cancelled', '2025-04-09', ''),
(2, 3, 1, 2, NULL, '2025-04-07 13:45:00', 95.00, 4.50, 0.00, 'pending', 'Processing', '2025-04-11', ''),
(3, 2, 2, 3, 6, '2025-04-08 10:30:00', 130.00, 6.00, 10.00, 'paid', 'Shipped', '2025-04-12', ''),
(4, 1, 1, 4, 7, '2025-04-09 16:15:00', 210.00, 8.00, 15.00, 'unpaid', 'Processing', '2025-04-14', ''),
(5, 2, 3, 5, 8, '2025-04-10 11:00:00', 175.00, 7.50, 12.00, 'paid', 'Delivered', '2025-04-13', ''),
(1, 1, 1, 1, NULL, '2025-04-11 09:20:00', 90.00, 4.00, 0.00, 'paid', 'Shipped', '2025-04-15', ''),
(2, 3, 2, 2, 9, '2025-04-12 14:30:00', 160.00, 6.00, 8.00, 'paid', 'Delivered', '2025-04-16', ''),
(3, 1, 1, 3, NULL, '2025-04-13 13:15:00', 45.00, 2.00, 0.00, 'unpaid', 'Cancelled', '2025-04-17', ''),
(4, 2, 3, 4, 10, '2025-04-14 12:45:00', 220.00, 9.00, 18.00, 'paid', 'Processing', '2025-04-18', ''),
(5, 3, 2, 5, NULL, '2025-04-15 16:10:00', 300.00, 10.00, 0.00, 'paid', 'Shipped', '2025-04-19', ''),
(1, 1, 1, 1, 11, '2025-04-16 11:35:00', 70.00, 3.00, 5.00, 'pending', 'Pending', '2025-04-20', ''),
(2, 2, 2, 2, NULL, '2025-04-17 10:50:00', 85.00, 4.50, 0.00, 'unpaid', 'Cancelled', '2025-04-21', ''),
(3, 3, 3, 3, 12, '2025-04-18 14:00:00', 110.00, 6.00, 10.00, 'paid', 'Processing', '2025-04-22', ''),
(4, 1, 2, 4, NULL, '2025-04-19 13:25:00', 65.00, 4.00, 0.00, 'paid', 'Delivered', '2025-04-23', ''),
(5, 2, 1, 5, 13, '2025-04-20 09:40:00', 190.00, 7.00, 12.00, 'paid', 'Shipped', '2025-04-24', 'Gift order');


INSERT INTO Order_Item (Order_ID, Product_ID, Quantity)
VALUES
(1, 1, 2),
(1, 3, 1),
(2, 2, 5),
(2, 4, 2),
(3, 1, 3),
(3, 5, 1),
(4, 3, 2),
(4, 2, 4),
(5, 4, 1),
(5, 1, 6),
(6, 2, 3),
(6, 3, 2),
(7, 5, 2),
(8, 4, 1),
(9, 1, 1),
(9, 2, 3),
(10, 5, 4),
(11, 3, 5),
(12, 4, 2),
(13, 1, 1);

INSERT INTO Review (Product_ID, Customer_ID, Rating, Comment, Images)
VALUES
(1, 1, 5, 'Excellent product, highly recommend!', 'http://example.com/review_image1.jpg'),
(2, 2, 4, 'Good quality, but could be improved in terms of design.', 'http://example.com/review_image2.jpg'),
(3, 3, 3, 'Average product, not as expected.', 'http://example.com/review_image3.jpg'),
(4, 4, 5, 'Loved it! Worth every penny.', 'http://example.com/review_image4.jpg'),
(5, 5, 2, 'Disappointing. The product broke after a week of use.', 'http://example.com/review_image5.jpg'),
(6, 6, 4, 'Great value for money. Would buy again!', 'http://example.com/review_image6.jpg'),
(7, 7, 5, 'Perfect product! I am very satisfied with the purchase.', 'http://example.com/review_image7.jpg'),
(8, 8, 3, 'Not bad, but I expected better quality for the price.', 'http://example.com/review_image8.jpg'),
(9, 9, 4, 'Good product, works as advertised. Would recommend.', 'http://example.com/review_image9.jpg'),
(10, 10, 1, 'Very poor quality. Not worth the money at all.', 'http://example.com/review_image10.jpg'),
(11, 11, 5, 'Highly recommend this product, it exceeded my expectations!', 'http://example.com/review_image11.jpg'),
(12, 12, 2, 'Not good. The product stopped working after a few uses.', 'http://example.com/review_image12.jpg'),
(13, 13, 4, 'Pretty decent, but could use some improvements.', 'http://example.com/review_image13.jpg'),
(14, 14, 5, 'Absolutely amazing! Exactly what I was looking for.', 'http://example.com/review_image14.jpg'),
(15, 15, 3, 'Okay product, but I had higher hopes.', 'http://example.com/review_image15.jpg'),
(16, 16, 4, 'Satisfied with my purchase. Worth the price.', 'http://example.com/review_image16.jpg'),
(17, 17, 2, 'The product did not match the description.', 'http://example.com/review_image17.jpg'),
(18, 18, 5, 'Excellent! Would definitely buy again.', 'http://example.com/review_image18.jpg'),
(19, 19, 3, 'It works fine, but nothing special.', 'http://example.com/review_image19.jpg'),
(20, 20, 4, 'Good quality for the price. Would buy again.', 'http://example.com/review_image20.jpg');








