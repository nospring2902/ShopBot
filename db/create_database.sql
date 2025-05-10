create database ShopDB;
CREATE TABLE Brand (
    Brand_ID INT PRIMARY KEY AUTO_INCREMENT,
    Brand_Name VARCHAR(255) NOT NULL,
    Description TEXT,
    Logo_URL VARCHAR(500),
    Origin_Country VARCHAR(100)
);

CREATE TABLE Product_Category (
    Category_ID INT PRIMARY KEY AUTO_INCREMENT,
    Parent_Category_ID INT,
    Category_Name VARCHAR(255) NOT NULL,
    Description TEXT,
    FOREIGN KEY (Parent_Category_ID) REFERENCES Product_Category(Category_ID)
);

CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Email VARCHAR(255) UNIQUE,
    Phone VARCHAR(20),
    Name VARCHAR(255),
    Address TEXT
);

CREATE TABLE Payment_Method (
    Payment_Method_ID INT PRIMARY KEY AUTO_INCREMENT,
    Method_Name VARCHAR(100),
    Description TEXT
);

CREATE TABLE Shipping_Method (
    Shipping_Method_ID INT PRIMARY KEY AUTO_INCREMENT,
    Method_Name VARCHAR(100),
    Description TEXT,
    Cost_per_product DECIMAL(10,2),
    average_delivery_time_per_km DECIMAL(5,2)
);

CREATE TABLE Shipping_Address (
    Address_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_ID INT,
    Receiver_Name VARCHAR(255),
    Receiver_Phone VARCHAR(20),
    Country VARCHAR(100),
    City VARCHAR(100),
    Province_State VARCHAR(100),
    Postal_Code VARCHAR(20),
    Is_Default BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

CREATE TABLE Promotion (
    Promotion_ID INT PRIMARY KEY AUTO_INCREMENT,
    Description TEXT,
    Discount_Type ENUM('percentage', 'fixed_amount'),
    Discount_Value DECIMAL(10,2),
    Start_Date DATE,
    End_Date DATE,
    Coupon_Code VARCHAR(50),
    Minimum_Order DECIMAL(10,2),
    Status ENUM('active', 'inactive', 'expired')
);

CREATE TABLE Product (
    Product_ID INT PRIMARY KEY AUTO_INCREMENT,
    Product_Name VARCHAR(255) NOT NULL,
    Category_ID INT,
    Brand_ID INT,
    Description TEXT,
    Price DECIMAL(10,2),
    Stock_Quantity INT,
    Image_URLs TEXT,
    Specifications TEXT,
    Created_Date DATETIME DEFAULT CURRENT_TIMESTAMP,
    Updated_Date DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (Category_ID) REFERENCES Product_Category(Category_ID),
    FOREIGN KEY (Brand_ID) REFERENCES Brand(Brand_ID)
);

CREATE TABLE `Order` (
    Order_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_ID INT,
    Payment_Method_ID INT,
    Shipping_Method_ID INT,
    Shipping_Address_ID INT,
    Promotion_ID INT,
    Order_Date DATETIME DEFAULT CURRENT_TIMESTAMP,
    Total_Amount DECIMAL(12,2),
    Shipping_Fee DECIMAL(10,2),
    Discount DECIMAL(10,2),
    Payment_Status ENUM('paid', 'unpaid', 'pending'),
    Order_Status VARCHAR(100),
    Estimated_Delivery_Date DATE,
    Note TEXT,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Payment_Method_ID) REFERENCES Payment_Method(Payment_Method_ID),
    FOREIGN KEY (Shipping_Method_ID) REFERENCES Shipping_Method(Shipping_Method_ID),
    FOREIGN KEY (Shipping_Address_ID) REFERENCES Shipping_Address(Address_ID),
    FOREIGN KEY (Promotion_ID) REFERENCES Promotion(Promotion_ID)
);

CREATE TABLE Order_Item (
    Order_ID INT,
    Product_ID INT,
    Quantity INT,
    PRIMARY KEY (Order_ID, Product_ID),
    FOREIGN KEY (Order_ID) REFERENCES `Order`(Order_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

CREATE TABLE Review (
    Review_ID INT PRIMARY KEY AUTO_INCREMENT,
    Product_ID INT,
    Customer_ID INT,
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    Comment TEXT,
    Review_Date DATETIME DEFAULT CURRENT_TIMESTAMP,
    Images TEXT,
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);
show tables;
