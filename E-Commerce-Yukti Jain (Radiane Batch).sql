USE [E-Commerce]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 07-03-2021 21:19:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[Address_Line_1] [nvarchar](max) NOT NULL,
	[Address_Line_2] [nvarchar](max) NULL,
	[City] [nvarchar](20) NOT NULL,
	[Pincode] [nvarchar](15) NOT NULL,
	[State] [nvarchar](20) NOT NULL,
	[Country] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 07-03-2021 21:19:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Cart_id] [varchar](20) NOT NULL,
	[CustomerID] [varchar](15) NULL,
	[SessionId] [varchar](20) NULL,
	[cart_status] [varchar](10) NULL,
	[CreatedAt] [smalldatetime] NULL,
	[UpdatedAt] [smalldatetime] NULL,
 CONSTRAINT [PK_Cart_id] PRIMARY KEY CLUSTERED 
(
	[Cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart_Item]    Script Date: 07-03-2021 21:19:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart_Item](
	[Cart_Item_id] [varchar](20) NOT NULL,
	[Price] [smallmoney] NOT NULL,
	[Quantity] [int] NULL,
	[CreatedAt] [smalldatetime] NULL,
	[UpdatedAt] [smalldatetime] NULL,
	[ProductID] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Cart_Item_id] PRIMARY KEY CLUSTERED 
(
	[Cart_Item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 07-03-2021 21:19:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Category_ID] [int] NOT NULL,
	[Category_Name] [varchar](20) NULL,
	[Category_Description] [varchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Category_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer_Address]    Script Date: 07-03-2021 21:19:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Address](
	[CustomerID] [varchar](15) NOT NULL,
	[AddressID] [int] NOT NULL,
	[DateFrom] [date] NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_Customer_Address] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_item]    Script Date: 07-03-2021 21:19:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_item](
	[OrderItemID] [nvarchar](20) NOT NULL,
	[OrderID] [nvarchar](20) NOT NULL,
	[Price] [money] NOT NULL,
	[Quantity] [nvarchar](10) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
	[ProductID] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Order_item] PRIMARY KEY CLUSTERED 
(
	[OrderItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 07-03-2021 21:19:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [nvarchar](20) NOT NULL,
	[UserID] [int] NOT NULL,
	[Payment_MethodID] [nvarchar](20) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[ShippingDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment_Method_Type]    Script Date: 07-03-2021 21:19:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment_Method_Type](
	[Payment_MethoD_Type_ID] [nvarchar](20) NOT NULL,
	[Payment_Method_Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Payment_Method_Type] PRIMARY KEY CLUSTERED 
(
	[Payment_MethoD_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethods]    Script Date: 07-03-2021 21:19:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethods](
	[Payment_MethodID] [nvarchar](20) NOT NULL,
	[UserID] [int] NOT NULL,
	[Payment_MethoD_Type_ID] [nvarchar](20) NOT NULL,
	[Card_Number] [nvarchar](20) NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTill] [date] NOT NULL,
 CONSTRAINT [PK_PaymentMethods] PRIMARY KEY CLUSTERED 
(
	[Payment_MethodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_category]    Script Date: 07-03-2021 21:19:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_category](
	[ProductCategory_name] [varchar](50) NULL,
	[ProductID] [nvarchar](20) NOT NULL,
	[Category_ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 07-03-2021 21:19:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[Product_Name] [varchar](20) NULL,
	[Product_Des] [varchar](50) NULL,
	[Price] [int] NULL,
	[Stock] [int] NULL,
	[ProductID] [nvarchar](20) NOT NULL,
	[Category_ID] [int] NOT NULL,
 CONSTRAINT [PK_ProductID] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 07-03-2021 21:19:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[UserID] [int] NOT NULL,
	[UserEmail] [varchar](50) NOT NULL,
	[UserPassword] [varchar](20) NOT NULL,
	[UserFirstName] [varchar](20) NOT NULL,
	[UserLastName] [varchar](20) NOT NULL,
	[UserPhone] [varchar](15) NULL,
 CONSTRAINT [PK_USERID] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cart]  WITH NOCHECK ADD  CONSTRAINT [FK_Cart_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer_Address] ([CustomerID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_CustomerID]
GO
ALTER TABLE [dbo].[Cart_Item]  WITH NOCHECK ADD  CONSTRAINT [FK_Cart_Item_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[products] ([ProductID])
GO
ALTER TABLE [dbo].[Cart_Item] CHECK CONSTRAINT [FK_Cart_Item_ProductID]
GO
ALTER TABLE [dbo].[Customer_Address]  WITH NOCHECK ADD  CONSTRAINT [FK_Customer_Address_CustomerID] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([AddressID])
GO
ALTER TABLE [dbo].[Customer_Address] CHECK CONSTRAINT [FK_Customer_Address_CustomerID]
GO
ALTER TABLE [dbo].[Customer_Address]  WITH NOCHECK ADD  CONSTRAINT [FK_Customer_Address_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[users] ([UserID])
GO
ALTER TABLE [dbo].[Customer_Address] CHECK CONSTRAINT [FK_Customer_Address_UserID]
GO
ALTER TABLE [dbo].[Order_item]  WITH NOCHECK ADD  CONSTRAINT [FK_Order_item_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[Order_item] CHECK CONSTRAINT [FK_Order_item_OrderID]
GO
ALTER TABLE [dbo].[Order_item]  WITH NOCHECK ADD  CONSTRAINT [FK_Order_Item_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[products] ([ProductID])
GO
ALTER TABLE [dbo].[Order_item] CHECK CONSTRAINT [FK_Order_Item_ProductID]
GO
ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD  CONSTRAINT [FK_Orders_Payment_MethodID] FOREIGN KEY([Payment_MethodID])
REFERENCES [dbo].[PaymentMethods] ([Payment_MethodID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Payment_MethodID]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_users] FOREIGN KEY([UserID])
REFERENCES [dbo].[users] ([UserID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_users]
GO
ALTER TABLE [dbo].[PaymentMethods]  WITH NOCHECK ADD  CONSTRAINT [FK_PaymentMethods_Payment_Method_Type_ID] FOREIGN KEY([Payment_MethoD_Type_ID])
REFERENCES [dbo].[Payment_Method_Type] ([Payment_MethoD_Type_ID])
GO
ALTER TABLE [dbo].[PaymentMethods] CHECK CONSTRAINT [FK_PaymentMethods_Payment_Method_Type_ID]
GO
ALTER TABLE [dbo].[PaymentMethods]  WITH NOCHECK ADD  CONSTRAINT [FK_PaymentMethods_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[users] ([UserID])
GO
ALTER TABLE [dbo].[PaymentMethods] CHECK CONSTRAINT [FK_PaymentMethods_UserID]
GO
ALTER TABLE [dbo].[product_category]  WITH NOCHECK ADD  CONSTRAINT [FK_product_category_Category_ID] FOREIGN KEY([Category_ID])
REFERENCES [dbo].[Categories] ([Category_ID])
GO
ALTER TABLE [dbo].[product_category] CHECK CONSTRAINT [FK_product_category_Category_ID]
GO
ALTER TABLE [dbo].[product_category]  WITH NOCHECK ADD  CONSTRAINT [FK_product_category_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[products] ([ProductID])
GO
ALTER TABLE [dbo].[product_category] CHECK CONSTRAINT [FK_product_category_ProductID]
GO
ALTER TABLE [dbo].[products]  WITH NOCHECK ADD  CONSTRAINT [FK_products_Category_ID] FOREIGN KEY([Category_ID])
REFERENCES [dbo].[Categories] ([Category_ID])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_Category_ID]
GO
