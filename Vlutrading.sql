USE [sep21t14]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 7/1/2018 7:06:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_item] [int] NOT NULL,
	[id_user] [int] NOT NULL,
	[comment_txt] [nvarchar](max) NULL,
	[name_comment] [nvarchar](50) NULL,
	[created_by] [varchar](20) NULL,
	[created_date] [datetime] NULL,
	[updated_by] [nvarchar](20) NULL,
	[updated_date] [datetime] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[item]    Script Date: 7/1/2018 7:06:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[item](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[item_name] [nvarchar](100) NULL,
	[description] [nvarchar](max) NULL,
	[quantity] [int] NULL,
	[status] [int] NULL,
	[phone_contact] [varchar](20) NULL,
	[seller_id] [int] NOT NULL,
	[buyer_id] [int] NULL,
	[create_by] [nvarchar](20) NULL,
	[create_date] [datetime] NULL,
	[update_by] [nvarchar](20) NULL,
	[update_date] [datetime] NULL,
	[index_image] [varchar](max) NULL,
	[detail_image1] [varchar](max) NULL,
	[detail_image2] [varchar](max) NULL,
	[detail_image3] [varchar](max) NULL,
	[detail_image4] [varchar](max) NULL,
	[detail_image5] [varchar](max) NULL,
	[price] [money] NULL,
	[approve] [int] NULL,
 CONSTRAINT [PK_item] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[item_status]    Script Date: 7/1/2018 7:06:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[item_status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [nvarchar](255) NOT NULL,
	[description] [nvarchar](500) NULL,
	[create_by] [nvarchar](20) NULL,
	[create_date] [datetime] NULL,
	[update_by] [nvarchar](20) NULL,
	[update_date] [datetime] NULL,
	[stage] [int] NULL,
 CONSTRAINT [PK_item_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 7/1/2018 7:06:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[orderid] [int] IDENTITY(1,1) NOT NULL,
	[buyerid] [int] NOT NULL,
	[order_status] [int] NOT NULL,
	[buyer_name] [nvarchar](50) NULL,
	[orderdate] [datetime] NULL,
 CONSTRAINT [PK_Order_1] PRIMARY KEY CLUSTERED 
(
	[orderid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 7/1/2018 7:06:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_detail](
	[orderid] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[quantity] [int] NULL,
	[totalprice] [money] NULL,
	[item_status] [int] NULL,
	[item_orderdate] [datetime] NULL,
	[item_name] [nvarchar](100) NULL,
	[buyer_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_order_detail] PRIMARY KEY CLUSTERED 
(
	[orderid] ASC,
	[item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 7/1/2018 7:06:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](50) NULL,
	[description] [nvarchar](255) NULL,
	[create_by] [varchar](20) NULL,
	[create_date] [datetime] NULL,
	[update_by] [varchar](20) NULL,
	[update_date] [datetime] NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[security_question]    Script Date: 7/1/2018 7:06:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[security_question](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[question] [nvarchar](255) NOT NULL,
	[is_active] [int] NULL,
 CONSTRAINT [PK_security_question] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tempshoppingcart]    Script Date: 7/1/2018 7:06:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tempshoppingcart](
	[temporderid] [int] IDENTITY(1,1) NOT NULL,
	[item_id] [int] NOT NULL,
	[item_name] [nvarchar](100) NOT NULL,
	[quantity] [int] NULL,
	[price] [money] NULL,
	[buyer_id] [int] NOT NULL,
	[buyer_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_tempshoppingcart] PRIMARY KEY CLUSTERED 
(
	[temporderid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 7/1/2018 7:06:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](20) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[role] [int] NULL,
	[email] [varchar](50) NOT NULL,
	[id_security_question] [int] NULL,
	[answer_security_question] [varchar](50) NULL,
	[is_active] [int] NULL,
	[last_login_date] [datetime] NULL,
	[last_logout_date] [datetime] NULL,
	[ip_last_login] [varchar](20) NULL,
	[ip_last_logout] [varchar](20) NULL,
	[create_by] [nvarchar](20) NULL,
	[create_date] [datetime] NULL,
	[update_by] [nvarchar](20) NULL,
	[update_date] [datetime] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_personal_information]    Script Date: 7/1/2018 7:06:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_personal_information](
	[id] [int] NOT NULL,
	[id_user] [int] NOT NULL,
	[phone] [varchar](15) NULL,
	[address] [nvarchar](100) NULL,
	[update_by] [varchar](20) NULL,
	[update_date] [datetime] NULL,
 CONSTRAINT [PK_user_personal_information] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[comment] ON 

INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (1, 2045, 1, N'asdas', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (2, 2045, 1, N'asdasd', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (3, 2045, 4, N'12321312a', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (4, 2045, 4, N'abscxxcvdasv', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (5, 1039, 1, N'23456', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (6, 1039, 1, N'123123sad', N'Nguyễn Phạm Hữu Vinh', N'vinh', CAST(N'2018-06-16T19:12:20.713' AS DateTime), NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (7, 1039, 1, N'asdzxvsdgvcvcxvfsdb', N'Nguyễn Phạm Hữu Vinh', N'vinh', CAST(N'2018-06-16T19:13:02.097' AS DateTime), NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (8, 1039, 1, N'asdzxvsdv', N'Nguyễn Phạm Hữu Vinh', N'vinh', CAST(N'2018-06-16T19:13:43.423' AS DateTime), NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (9, 1042, 7, N'Delicious', N'Vi', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (10, 1042, 7, N'U should try <3', N'Vi', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (11, 1038, 14, N'Delicious', N'Thang Nguyen', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (12, 1038, 1, N'This cafe is too expensive but really good', N'Nguyễn Phạm Hữu Vinh', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (13, 1040, 14, N'2', N'Thang Nguyen', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (14, 1040, 14, N'', N'Thang Nguyen', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (15, 1040, 14, N' ', N'Thang Nguyen', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (16, 1040, 14, N'Best of the best', N'Thang Nguyen', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (17, 1041, 14, N'I bought this last weeks. My family really like it, so do I. I''m saving my money to buy some more packs', N'Thang Nguyen', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (18, 2040, 14, N'Cheaper than Circle K and B''s mart', N'Thang Nguyen', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (19, 2043, 1012, N'', N'account_admin', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (20, 2043, 1012, N'        ', N'account_admin', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (21, 1039, 1012, N'sdsdcdsc', N'account_admin', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (22, 1038, 13, N'very good', N'minh', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (23, 1038, 13, N'dawa', N'minh', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (24, 1041, 13, N'gerg', N'minh', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (25, 1043, 13, N'dad', N'minh', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (26, 1043, 13, N'dwdx', N'minh', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (27, 1044, 13, N'dawdw', N'minh', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (28, 2030, 13, N'dawd', N'minh', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (29, 1046, 13, N'vsvse', N'minh', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (30, 1039, 13, N'okjhkjhkjhkhkhkj', N'minh', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (31, 1039, 13, N'socola very good', N'minh', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (32, 2030, 1, N'wdkqhdwqwwwwwwwwwww', N'Nguyễn Phạm Hữu Vinh', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (33, 2031, 14, N'Very fresh and delicious!', N'Thang Nguyen', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (34, 1041, 14, N'I bought it yesterday. 10/10', N'Thang Nguyen', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (35, 1043, 14, N'i love this kind of shoes', N'Thang Nguyen', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (36, 1039, 2031, N'Toại đẹp trai cuto', N'Toai Huynh', NULL, NULL, NULL, NULL)
INSERT [dbo].[comment] ([id], [id_item], [id_user], [comment_txt], [name_comment], [created_by], [created_date], [updated_by], [updated_date]) VALUES (37, 1045, 2048, N'This sweeter is really nice and cheap. I love it', N'Phi Thang', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[comment] OFF
SET IDENTITY_INSERT [dbo].[item] ON 

INSERT [dbo].[item] ([id], [item_name], [description], [quantity], [status], [phone_contact], [seller_id], [buyer_id], [create_by], [create_date], [update_by], [update_date], [index_image], [detail_image1], [detail_image2], [detail_image3], [detail_image4], [detail_image5], [price], [approve]) VALUES (1038, N'CAFE STARBUCKS', N'From Korea', 20, 1, N'0991334554', 14, NULL, N'Thang Nguyen', CAST(N'2018-05-28T23:48:35.517' AS DateTime), N'Thang Nguyen', CAST(N'2018-05-28T23:48:35.517' AS DateTime), N'12d71dd1-8d80-434f-88fe-0e73240e1c79.jpg', N'bf43c1d4-8cf9-4a30-8ca9-ab513c44fa92.jpg', N'd4641366-16fd-4717-9dfa-8b9133c36cba.jpg', N'307aeb45-4fb6-4d77-863e-c904314a22f0.jpg', N'7e9cc641-8e5c-4d2c-8038-cf63a5a53678.jpg', N'754b06f0-c825-488e-b69d-045651403a82.jpg', 4.0000, 2)
INSERT [dbo].[item] ([id], [item_name], [description], [quantity], [status], [phone_contact], [seller_id], [buyer_id], [create_by], [create_date], [update_by], [update_date], [index_image], [detail_image1], [detail_image2], [detail_image3], [detail_image4], [detail_image5], [price], [approve]) VALUES (1039, N'SOCOLA MALTESERS', N'Made in USA', 100, 1, N'0912321421', 2031, NULL, N'Toại Huỳnh', CAST(N'2018-05-28T23:51:22.833' AS DateTime), N'Toại Huỳnh', CAST(N'2018-05-28T23:51:22.833' AS DateTime), N'ca368c83-9822-4c02-88a2-26f839701c36.jpg', N'971096a7-26c2-4988-908a-535f30069836.jpg', N'815d0ee0-9152-40db-a099-1a47d7665c78.jpg', N'c7793497-4407-40b7-9d62-f683fe55accb.jpg', N'1652afe2-4862-41f3-bc34-089767103d0f.jpg', N'eda457ac-5ebc-4040-9b7f-7e3c602e3e13.jpg', 20.0000, 1)
INSERT [dbo].[item] ([id], [item_name], [description], [quantity], [status], [phone_contact], [seller_id], [buyer_id], [create_by], [create_date], [update_by], [update_date], [index_image], [detail_image1], [detail_image2], [detail_image3], [detail_image4], [detail_image5], [price], [approve]) VALUES (1040, N'CHOCOLATE M&M', N'Made in USA', 25, 1, N'0982884784', 14, NULL, N'Thang Nguyen', CAST(N'2018-05-28T23:57:45.287' AS DateTime), N'Thang Nguyen', CAST(N'2018-05-28T23:57:45.287' AS DateTime), N'ee3db48d-3d08-451d-9176-23909365e9f4.jpg', N'89f0c46f-9fc7-4a83-bc43-9230b193f8e9.jpg', N'b76bae3b-dc2c-4485-801c-2957c20a2e32.jpg', N'109bc090-f07d-4616-a0d9-53e6b0d2ed97.jpg', N'e72ccbf2-0924-4f45-a6f7-ff7c7ea04e28.jpg', N'1471aed1-54f7-40f8-809a-1c2c0842b4d5.jpg', 15.0000, 1)
INSERT [dbo].[item] ([id], [item_name], [description], [quantity], [status], [phone_contact], [seller_id], [buyer_id], [create_by], [create_date], [update_by], [update_date], [index_image], [detail_image1], [detail_image2], [detail_image3], [detail_image4], [detail_image5], [price], [approve]) VALUES (1041, N'COOKIES RASPBERRY', N'Delicious. Must try!', 10, 1, N'0987654321', 14, NULL, N'Thang Nguyen', CAST(N'2018-05-28T23:59:08.647' AS DateTime), N'Thang Nguyen', CAST(N'2018-05-28T23:59:08.647' AS DateTime), N'bde1532d-8e0e-4999-9c60-788d6bcb52b2.jpg', N'9b9e4d13-2f1c-4916-a5dc-91aaf04fdf3d.jpg', N'7170b3fc-91d2-48af-8d84-899c9746ddfa.jpg', N'07b4417c-2840-41c8-84d8-cceecc455dd6.jpg', N'e9cb9bc5-a1b4-4f00-a08d-2c2ab6c7111e.jpg', N'9b31979a-2d24-4260-abbb-5fff2708d054.jpg', 4.0000, 1)
INSERT [dbo].[item] ([id], [item_name], [description], [quantity], [status], [phone_contact], [seller_id], [buyer_id], [create_by], [create_date], [update_by], [update_date], [index_image], [detail_image1], [detail_image2], [detail_image3], [detail_image4], [detail_image5], [price], [approve]) VALUES (1042, N'Grape', N'Fresh. 8$ / 1 kg', 500, 1, N'0987123456', 7, NULL, N'Thuy Vi', CAST(N'2018-05-29T00:00:36.383' AS DateTime), N'Thuy Vi', CAST(N'2018-05-29T00:00:36.383' AS DateTime), N'169ea03f-00ce-4301-9068-5da164f2c759.jpg', N'3ebca392-dfa2-45ba-82a8-cae10b09aa91.jpg', N'3083b070-51a0-47e5-9b76-2b4fb88022ed.jpg', N'fe0e10d3-c743-46df-b0cf-0f25a66c6ef8.jpg', N'', NULL, 8.0000, 1)
INSERT [dbo].[item] ([id], [item_name], [description], [quantity], [status], [phone_contact], [seller_id], [buyer_id], [create_by], [create_date], [update_by], [update_date], [index_image], [detail_image1], [detail_image2], [detail_image3], [detail_image4], [detail_image5], [price], [approve]) VALUES (1043, N'Biti''s Hunter', N'Limited Edition', 4, 2, N'01223345678', 14, NULL, N'Thang Nguyen', CAST(N'2018-05-29T00:15:24.157' AS DateTime), N'Thang Nguyen', CAST(N'2018-05-29T00:15:24.157' AS DateTime), N'77221117-2de7-4b3a-a70c-c5a84f2e472b.jpg', N'e5d2787b-c8df-44c4-a4cb-03ce72ea1e81.jpg', N'7646df8e-8bcf-43b7-b37c-7dfa849354c6.jpg', N'593d6d9f-3490-4b58-a08d-7a1e3a5fb58e.jpg', N'0b85f5ce-aadb-43e9-be5d-e33ab4c26062.jpg', N'083bfb47-0b80-4594-ad3e-0118b13317a9.jpg', 80.0000, 0)
INSERT [dbo].[item] ([id], [item_name], [description], [quantity], [status], [phone_contact], [seller_id], [buyer_id], [create_by], [create_date], [update_by], [update_date], [index_image], [detail_image1], [detail_image2], [detail_image3], [detail_image4], [detail_image5], [price], [approve]) VALUES (1044, N'BELCUBE ', N'15 cubes / pack', 100, 1, N'01213312324', 14, NULL, N'Thang Nguyen', CAST(N'2018-05-29T00:16:36.460' AS DateTime), N'Thang Nguyen', CAST(N'2018-05-29T00:16:36.460' AS DateTime), N'da1d1e1e-dd2b-4240-83eb-60be8a6799bd.jpg', N'1313b49a-0eec-4beb-8389-540fd02d75b6.jpg', N'a1d2b110-b654-4709-b827-ea1c0345608f.jpg', N'a6630bc8-9d65-4b84-89a2-b84f4069346e.jpg', N'3cdb10df-9026-400a-b534-5a33e516337c.jpg', N'0109f539-ec5b-459b-ab0d-0e00c918c658.jpg', 5.0000, 1)
INSERT [dbo].[item] ([id], [item_name], [description], [quantity], [status], [phone_contact], [seller_id], [buyer_id], [create_by], [create_date], [update_by], [update_date], [index_image], [detail_image1], [detail_image2], [detail_image3], [detail_image4], [detail_image5], [price], [approve]) VALUES (1045, N'SWEETER UNISEX', N'For Men & Women', 50, 1, N'0956743222', 7, NULL, N'Thuy Vi', CAST(N'2018-05-29T00:17:45.747' AS DateTime), N'Thuy Vi', CAST(N'2018-05-29T00:17:45.747' AS DateTime), N'bad067ee-b182-42af-9ef4-7f5fb299b1d4.jpg', N'fa9c556b-bb6d-4daa-800e-266049499eb0.jpg', N'dc97dad5-332a-449f-bd34-ff4eb1d82ddb.jpg', N'83633009-9460-4f02-931b-ff4c314dd410.jpg', N'', NULL, 28.0000, 1)
INSERT [dbo].[item] ([id], [item_name], [description], [quantity], [status], [phone_contact], [seller_id], [buyer_id], [create_by], [create_date], [update_by], [update_date], [index_image], [detail_image1], [detail_image2], [detail_image3], [detail_image4], [detail_image5], [price], [approve]) VALUES (1046, N'APPLE ENVY', N'Made in New Zealand', 100, 1, N'0967667843', 7, NULL, N'Thuy Vi', CAST(N'2018-05-29T00:19:58.323' AS DateTime), N'Thuy Vi', CAST(N'2018-05-29T00:19:58.323' AS DateTime), N'5c6d01d9-8d80-4841-9537-ed9217ee6701.jpg', N'98b3266e-b570-4843-bffd-5bcc62f6d3f0.jpg', N'', NULL, NULL, NULL, 10.0000, 3)
INSERT [dbo].[item] ([id], [item_name], [description], [quantity], [status], [phone_contact], [seller_id], [buyer_id], [create_by], [create_date], [update_by], [update_date], [index_image], [detail_image1], [detail_image2], [detail_image3], [detail_image4], [detail_image5], [price], [approve]) VALUES (1047, N'BLACK BAG CHIA', N'Good for your health', 45, 1, N'0923454555', 7, NULL, N'Thuy Vi', CAST(N'2018-05-29T00:21:22.220' AS DateTime), N'Thuy Vi', CAST(N'2018-05-29T00:21:22.220' AS DateTime), N'7b1894b8-ef49-42c1-b76f-3c1a3d6588ba.jpg', N'8ce2b627-84b1-415f-aca0-0ec9d36c745c.jpg', N'8bcbe01c-7332-4e90-a87f-fd226b83438c.jpg', N'204732f4-da6e-4a49-97d0-3e6b2a20fdec.jpg', N'', NULL, 28.0000, 2)
INSERT [dbo].[item] ([id], [item_name], [description], [quantity], [status], [phone_contact], [seller_id], [buyer_id], [create_by], [create_date], [update_by], [update_date], [index_image], [detail_image1], [detail_image2], [detail_image3], [detail_image4], [detail_image5], [price], [approve]) VALUES (2030, N'BENTO THAILAND', N'Delecious', 200, 1, N'0988112233', 14, NULL, N'Thang Nguyen', CAST(N'2018-05-29T10:33:59.640' AS DateTime), N'Thang Nguyen', CAST(N'2018-05-29T10:33:59.640' AS DateTime), N'e128c65e-3567-4869-b454-0e018d912af9.jpg', N'cd7119c8-582a-42f1-80b4-f2eb0901eb7b.jpg', N'd49c7004-6e8d-49f5-9fc9-19bcd8e9c51b.jpg', N'33f94347-2341-4a4f-9f03-62522e514535.jpg', N'1a478808-49df-4727-99c3-a6615384d113.jpg', N'e146c311-3571-4853-bea9-ba5cda46a114.jpg', 1.0000, 1)
INSERT [dbo].[item] ([id], [item_name], [description], [quantity], [status], [phone_contact], [seller_id], [buyer_id], [create_by], [create_date], [update_by], [update_date], [index_image], [detail_image1], [detail_image2], [detail_image3], [detail_image4], [detail_image5], [price], [approve]) VALUES (2031, N'GREEN GRAPE ', N'CONTACT ME', 20, 1, N'01213456789', 14, NULL, N'Thang Nguyen', CAST(N'2018-05-29T10:35:24.720' AS DateTime), N'Thang Nguyen', CAST(N'2018-05-29T10:35:24.720' AS DateTime), N'c56cd45d-83c0-4d3c-b9d5-0761a5cc9945.jpg', N'394af523-c23f-4b9e-9f54-272ef61f29e6.jpg', N'5fbd79b6-a5c7-45bb-a3cd-ac5a18ce6289.jpg', N'9e425f9b-ab09-4666-9e13-f88217bfd99b.jpg', N'9e6d7c14-dae8-439c-a078-cea13eba6964.jpg', N'709ffbc9-90e6-4873-a555-cba5a1f06f18.jpg', 2.0000, 1)
INSERT [dbo].[item] ([id], [item_name], [description], [quantity], [status], [phone_contact], [seller_id], [buyer_id], [create_by], [create_date], [update_by], [update_date], [index_image], [detail_image1], [detail_image2], [detail_image3], [detail_image4], [detail_image5], [price], [approve]) VALUES (2040, N'Milo', N'Free', 5, 1, N'0987678999', 2031, NULL, N'Toại Huỳnh', CAST(N'2018-05-30T10:36:32.170' AS DateTime), N'Toại Huỳnh', CAST(N'2018-05-30T10:36:32.170' AS DateTime), N'7ed23b02-fdc2-492e-9a08-fd2e7fff794f.jpg', N'e209f97f-a585-42e9-b7c4-ef4d561eb903.jpg', N'9647fb43-6c24-4a02-b831-22152b5749d9.jpg', N'51545b2a-378f-4d5a-bf10-3c95bb4e11ef.jpg', N'00e647a0-905f-4ff9-b8d0-b549cf5865b8.jpg', N'47294e9c-7ff0-4adb-9907-8141e24fd1d3.jpg', 3.0000, 0)
INSERT [dbo].[item] ([id], [item_name], [description], [quantity], [status], [phone_contact], [seller_id], [buyer_id], [create_by], [create_date], [update_by], [update_date], [index_image], [detail_image1], [detail_image2], [detail_image3], [detail_image4], [detail_image5], [price], [approve]) VALUES (2043, N'Kisses chocolate', N'Now Available in Shop', 100, 1, N'0943446565', 14, NULL, N'Thang Nguyen', CAST(N'2018-06-04T17:15:47.343' AS DateTime), N'Thang Nguyen', CAST(N'2018-06-04T17:15:47.343' AS DateTime), N'd1fd903e-71bd-4077-848c-75021b39699b.jpg', N'b3413d72-9a57-46f2-bf9a-9e0b061a18e5.jpg', N'e1cb2274-79d9-408e-9f2c-6464ff4117d9.jpg', N'1b4c983b-93eb-4ca0-93f9-76d6ebc198e9.jpg', N'1347c6e8-9a07-4fa0-9d13-f77f7e268a99.jpg', N'ef3f128b-3eaa-4e30-a52b-de3696fbb2af.jpg', 22.0000, 1)
INSERT [dbo].[item] ([id], [item_name], [description], [quantity], [status], [phone_contact], [seller_id], [buyer_id], [create_by], [create_date], [update_by], [update_date], [index_image], [detail_image1], [detail_image2], [detail_image3], [detail_image4], [detail_image5], [price], [approve]) VALUES (2045, N'Glasses', N'White Colour', 1, 1, N'0965567676', 7, NULL, N'Thuy Vi', CAST(N'2018-06-06T19:49:55.240' AS DateTime), N'Thuy Vi', CAST(N'2018-06-06T19:49:55.240' AS DateTime), N'060a950a-5947-4162-9a47-63d785138de3.jpg', N'ac2953aa-0326-4c10-95f1-6a999129a045.jpg', N'1e6859ac-d132-4749-9524-1488af07f243.jpg', N'860906b5-3982-4271-8ba0-6f6e73cfc1f4.jpg', N'1f612753-e3c1-4441-9085-f10048651ec4.jpg', N'b6f455e4-9c09-4f22-a297-d437bf9f74b2.jpg', 23.0000, 1)
INSERT [dbo].[item] ([id], [item_name], [description], [quantity], [status], [phone_contact], [seller_id], [buyer_id], [create_by], [create_date], [update_by], [update_date], [index_image], [detail_image1], [detail_image2], [detail_image3], [detail_image4], [detail_image5], [price], [approve]) VALUES (3058, N'Short Kaki for Men', N'Short for men in summer days', 50, 1, N'0908778778', 7, NULL, N'Thuy Vi', CAST(N'2018-06-28T11:41:12.177' AS DateTime), N'Thuy Vi', CAST(N'2018-06-28T11:41:12.177' AS DateTime), N'b1f0ede1-ece0-4b43-a08d-1c5a19d6511e.jpg', N'137788e4-adcc-4c3f-9ef6-436fa785066d.png', N'38d2fc28-20b6-4e9f-8915-5be6f4961315.jpg', N'2c2298d9-bcea-406a-b2ca-df7069ebf8b7.jpg', N'a91e14bb-eb8b-4e5e-ae3a-c8e44c21d755.jpg', N'034b08c6-9c85-4d38-acf7-d9ca94b0af0b.jpg', 30.0000, 0)
INSERT [dbo].[item] ([id], [item_name], [description], [quantity], [status], [phone_contact], [seller_id], [buyer_id], [create_by], [create_date], [update_by], [update_date], [index_image], [detail_image1], [detail_image2], [detail_image3], [detail_image4], [detail_image5], [price], [approve]) VALUES (3059, N'Sport Bag GinHui', N'Free style Free color', 30, 1, N'0909009009', 2031, NULL, N'Toại Huỳnh', CAST(N'2018-06-28T12:23:56.960' AS DateTime), N'Toại Huỳnh', CAST(N'2018-06-28T12:23:56.960' AS DateTime), N'97e06aab-af37-4768-942e-52e939b07128.jpg', N'17566b64-3d7b-4e2a-a3ad-d065226f5255.jpg', N'098d18a0-c231-4ad4-9a82-c98d191b4044.jpg', N'90a6ab67-1619-415d-8efc-4006e0cb6edf.jpg', N'ce92253a-603f-40e2-b779-43c0d98f5a78.jpg', N'2bfc6ed6-4221-48b4-894f-b9484bb711d9.jpg', 10.0000, 1)
INSERT [dbo].[item] ([id], [item_name], [description], [quantity], [status], [phone_contact], [seller_id], [buyer_id], [create_by], [create_date], [update_by], [update_date], [index_image], [detail_image1], [detail_image2], [detail_image3], [detail_image4], [detail_image5], [price], [approve]) VALUES (3063, N'Iphone 7 plus 99%', N'Silver. Like new 99% 256GB
Full box', 2, 1, N'0999313678', 14, NULL, N'Thang Nguyen', CAST(N'2018-06-28T22:44:40.137' AS DateTime), N'Thang Nguyen', CAST(N'2018-06-28T22:44:40.137' AS DateTime), N'61356af7-a9d8-483d-9180-45d98a350897.jpg', N'770ce85b-99a2-4ca2-bef4-2afc4591db3a.jpg', N'126eb7fa-2542-4df2-a2a0-2f9011ab89a1.jpg', N'65fef405-d272-4a01-b653-d5aca0dde419.jpg', N'8c964506-0db5-429d-b158-fcd3d741e49f.jpg', N'26731c8a-4b63-406c-9ccb-6cc07caa1525.jpg', 600.0000, 2)
INSERT [dbo].[item] ([id], [item_name], [description], [quantity], [status], [phone_contact], [seller_id], [buyer_id], [create_by], [create_date], [update_by], [update_date], [index_image], [detail_image1], [detail_image2], [detail_image3], [detail_image4], [detail_image5], [price], [approve]) VALUES (3071, N'Laptop Dell 7570', N'8th Generation Intel Core i5-8250U8GB 2400MHz DDR41 TB 5400 RP15.6-inch FHD Windows 10 Home 64-bit', 12, 1, N'0981213214', 14, NULL, N'Thang Nguyen', CAST(N'2018-06-29T22:51:27.727' AS DateTime), N'Thang Nguyen', CAST(N'2018-06-29T22:51:27.727' AS DateTime), N'c17bc78f-42eb-41ac-9587-0c92712602bb.jpg', N'55b34313-9c66-4274-bee1-3d7a3ec729c8.jpg', N'1d0c03d4-97ab-40b2-8b83-9cd77c905d0c.jpg', N'cbf5ffd6-f4b2-47b0-8c18-bac574db8972.jpg', N'778c7ce0-7e3d-4e23-a7cd-a189ac66b6d9.jpg', N'caf769a5-2969-4305-a8a1-0e75c7bafb06.jpg', 670.0000, 2)
INSERT [dbo].[item] ([id], [item_name], [description], [quantity], [status], [phone_contact], [seller_id], [buyer_id], [create_by], [create_date], [update_by], [update_date], [index_image], [detail_image1], [detail_image2], [detail_image3], [detail_image4], [detail_image5], [price], [approve]) VALUES (3079, N'Vitamin C Kirland', N'Vitamin C good for the health of any person', 100, 1, N'0987009874', 14, NULL, N'Thang Nguyen', CAST(N'2018-07-01T15:40:19.037' AS DateTime), N'Thang Nguyen', CAST(N'2018-07-01T15:40:19.037' AS DateTime), N'c6c86ed3-eb9b-4314-8d4c-31463922bb65.jpg', N'fe3df936-8ee0-4d86-8652-95706565df9a.jpg', N'531d61da-3e48-48c6-990d-103df246c856.jpg', N'0a6d7e39-8613-43c3-b67c-2fad73d05636.jpg', N'c5bfab78-d389-40b0-94c3-b5f04d3cd6d6.jpg', N'2bc47407-7b5e-488e-baab-08a7fb9037e1.jpg', 13.0000, 0)
INSERT [dbo].[item] ([id], [item_name], [description], [quantity], [status], [phone_contact], [seller_id], [buyer_id], [create_by], [create_date], [update_by], [update_date], [index_image], [detail_image1], [detail_image2], [detail_image3], [detail_image4], [detail_image5], [price], [approve]) VALUES (3080, N'Boots for gentlemen', N'The boots were smooth and pliable. Expensive materials, autumn and winter boots are more warm and comfortable', 10, 1, N'012243364581', 2031, NULL, N'Toại Huỳnh', CAST(N'2018-07-01T15:52:40.670' AS DateTime), N'Toại Huỳnh', CAST(N'2018-07-01T15:52:40.670' AS DateTime), N'ad5fe296-3288-4abd-9142-f22f3a6beddf.jpg', N'b2a42489-4c27-48b3-933a-23175a83710d.jpg', N'0756afee-fb63-40bb-a429-291f56395408.jpg', N'643a91a8-530e-4014-8c81-8b541252fd7d.jpg', N'0ebcb3b0-3784-4507-85cb-aa0f9b7bb4fe.jpg', N'bf91234a-bbe0-4ed7-b749-64d4630ffabd.jpg', 80.0000, 1)
INSERT [dbo].[item] ([id], [item_name], [description], [quantity], [status], [phone_contact], [seller_id], [buyer_id], [create_by], [create_date], [update_by], [update_date], [index_image], [detail_image1], [detail_image2], [detail_image3], [detail_image4], [detail_image5], [price], [approve]) VALUES (3083, N'Soda Sangria', N'This is the only naturally sweetened soda you''ll want', 120, 1, N'0987999888', 7, NULL, N'Thuy Vi', CAST(N'2018-07-01T16:01:18.573' AS DateTime), N'Thuy Vi', CAST(N'2018-07-01T16:01:18.573' AS DateTime), N'23fce645-8b6d-4def-8187-a888ffec3d68.jpg', N'b38416cb-f8c7-4d59-a697-ce8cdcd4d997.jpg', N'fbd67460-4182-4ce1-9c36-5b9b5680d9d0.jpg', N'51647b76-785f-48d9-8695-051072073a05.jpg', N'47b5c20a-3b32-4c40-950e-cc406faf1b67.jpg', N'ab0022b6-eafd-4249-bf22-4135f8f91e85.jpg', 2.0000, 2)
SET IDENTITY_INSERT [dbo].[item] OFF
SET IDENTITY_INSERT [dbo].[item_status] ON 

INSERT [dbo].[item_status] ([id], [status], [description], [create_by], [create_date], [update_by], [update_date], [stage]) VALUES (1, N'Có hàng', N'Có hàng', N'vinh', CAST(N'2018-04-09T19:44:28.000' AS DateTime), N'vinh', CAST(N'2018-04-09T19:44:33.000' AS DateTime), NULL)
INSERT [dbo].[item_status] ([id], [status], [description], [create_by], [create_date], [update_by], [update_date], [stage]) VALUES (2, N'Hết hàng', N'Hết hàng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[item_status] ([id], [status], [description], [create_by], [create_date], [update_by], [update_date], [stage]) VALUES (3, N'Hết hàng 2', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[item_status] ([id], [status], [description], [create_by], [create_date], [update_by], [update_date], [stage]) VALUES (4, N'Hết hàng 3', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[item_status] OFF
SET IDENTITY_INSERT [dbo].[order] ON 

INSERT [dbo].[order] ([orderid], [buyerid], [order_status], [buyer_name], [orderdate]) VALUES (16, 4, 0, N'team04', CAST(N'2018-06-20T01:06:17.877' AS DateTime))
INSERT [dbo].[order] ([orderid], [buyerid], [order_status], [buyer_name], [orderdate]) VALUES (17, 4, 0, N'team04', CAST(N'2018-06-20T01:48:49.523' AS DateTime))
INSERT [dbo].[order] ([orderid], [buyerid], [order_status], [buyer_name], [orderdate]) VALUES (18, 4, 0, N'team04', CAST(N'2018-06-21T19:30:28.003' AS DateTime))
INSERT [dbo].[order] ([orderid], [buyerid], [order_status], [buyer_name], [orderdate]) VALUES (19, 2031, 0, N'Toai Huynh', CAST(N'2018-06-27T14:30:35.147' AS DateTime))
INSERT [dbo].[order] ([orderid], [buyerid], [order_status], [buyer_name], [orderdate]) VALUES (21, 14, 0, N'Thang Nguyen', CAST(N'2018-06-28T11:22:58.173' AS DateTime))
INSERT [dbo].[order] ([orderid], [buyerid], [order_status], [buyer_name], [orderdate]) VALUES (23, 4, 0, N'team04', CAST(N'2018-06-28T11:31:21.653' AS DateTime))
INSERT [dbo].[order] ([orderid], [buyerid], [order_status], [buyer_name], [orderdate]) VALUES (24, 4, 0, N'team04', CAST(N'2018-06-28T11:33:01.053' AS DateTime))
INSERT [dbo].[order] ([orderid], [buyerid], [order_status], [buyer_name], [orderdate]) VALUES (26, 14, 0, N'Thang Nguyen', CAST(N'2018-06-28T22:11:15.827' AS DateTime))
INSERT [dbo].[order] ([orderid], [buyerid], [order_status], [buyer_name], [orderdate]) VALUES (27, 1, 0, N'Nguyễn Phạm Hữu Vinh', CAST(N'2018-06-29T12:06:56.393' AS DateTime))
INSERT [dbo].[order] ([orderid], [buyerid], [order_status], [buyer_name], [orderdate]) VALUES (28, 7, 0, N'Nguyen Thuy Thuy Vi', CAST(N'2018-06-30T15:08:13.943' AS DateTime))
INSERT [dbo].[order] ([orderid], [buyerid], [order_status], [buyer_name], [orderdate]) VALUES (29, 2031, 0, N'Toai Huynh', CAST(N'2018-06-30T15:44:43.843' AS DateTime))
INSERT [dbo].[order] ([orderid], [buyerid], [order_status], [buyer_name], [orderdate]) VALUES (30, 2048, 0, N'Phi Thang', CAST(N'2018-06-30T22:02:51.420' AS DateTime))
SET IDENTITY_INSERT [dbo].[order] OFF
INSERT [dbo].[order_detail] ([orderid], [item_id], [quantity], [totalprice], [item_status], [item_orderdate], [item_name], [buyer_name]) VALUES (21, 1043, 1, 80.0000, 2, CAST(N'2018-06-28T11:22:58.173' AS DateTime), N'BITI''S HUNTER TRIBAL', N'Thang Nguyen')
INSERT [dbo].[order_detail] ([orderid], [item_id], [quantity], [totalprice], [item_status], [item_orderdate], [item_name], [buyer_name]) VALUES (26, 1043, 1, 80.0000, 0, CAST(N'2018-06-28T22:11:15.827' AS DateTime), N'BITI''S HUNTER TRIBAL', N'Thang Nguyen')
SET IDENTITY_INSERT [dbo].[role] ON 

INSERT [dbo].[role] ([id], [role_name], [description], [create_by], [create_date], [update_by], [update_date]) VALUES (1, N'User', N'User', NULL, CAST(N'2018-04-03T22:26:03.000' AS DateTime), NULL, CAST(N'2018-04-03T22:26:06.000' AS DateTime))
INSERT [dbo].[role] ([id], [role_name], [description], [create_by], [create_date], [update_by], [update_date]) VALUES (2, N'Admin', N'Admin', NULL, NULL, NULL, NULL)
INSERT [dbo].[role] ([id], [role_name], [description], [create_by], [create_date], [update_by], [update_date]) VALUES (1002, N'Admin123', N'transaction_Admin', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[role] OFF
SET IDENTITY_INSERT [dbo].[security_question] ON 

INSERT [dbo].[security_question] ([id], [question], [is_active]) VALUES (1, N'Where was your father born?', 1)
INSERT [dbo].[security_question] ([id], [question], [is_active]) VALUES (2, N'What is the last name of your best childhood friend?', 1)
INSERT [dbo].[security_question] ([id], [question], [is_active]) VALUES (3, N'What is the name of your primary school?', 1)
INSERT [dbo].[security_question] ([id], [question], [is_active]) VALUES (4, N'What is the name of the street where you grew up?', 1)
INSERT [dbo].[security_question] ([id], [question], [is_active]) VALUES (5, N'What was the name of your first pet?', 1)
INSERT [dbo].[security_question] ([id], [question], [is_active]) VALUES (6, N'Who is your favorite musician?', 1)
INSERT [dbo].[security_question] ([id], [question], [is_active]) VALUES (7, N'What is the last name of your favorite teacher in primary school?', 1)
INSERT [dbo].[security_question] ([id], [question], [is_active]) VALUES (8, N'What was your favorite cartoon when you were a child?', 1)
INSERT [dbo].[security_question] ([id], [question], [is_active]) VALUES (9, N'What was your favorite food when you were a child?', 1)
INSERT [dbo].[security_question] ([id], [question], [is_active]) VALUES (10, N'What is the movie character you like best?', 1)
INSERT [dbo].[security_question] ([id], [question], [is_active]) VALUES (11, N'Who is your favorite author?', 1)
INSERT [dbo].[security_question] ([id], [question], [is_active]) VALUES (12, N'What is the name of your favorite sports team?', 1)
INSERT [dbo].[security_question] ([id], [question], [is_active]) VALUES (13, N'What is the title of the book you like best?', 1)
SET IDENTITY_INSERT [dbo].[security_question] OFF
SET IDENTITY_INSERT [dbo].[tempshoppingcart] ON 

INSERT [dbo].[tempshoppingcart] ([temporderid], [item_id], [item_name], [quantity], [price], [buyer_id], [buyer_name]) VALUES (149, 3078, N'Samsung Galaxy S9', 1, 600.0000, 2048, N'Phi Thang')
SET IDENTITY_INSERT [dbo].[tempshoppingcart] OFF
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [username], [password], [name], [role], [email], [id_security_question], [answer_security_question], [is_active], [last_login_date], [last_logout_date], [ip_last_login], [ip_last_logout], [create_by], [create_date], [update_by], [update_date]) VALUES (1, N'vinhnguyen', N'ff462901f02545a0bb4ffcdce90be3e1', N'Hữu Vinh', 1, N'vinh_nguyen1211@yahoo.com', 8, N'Disney Channel', 1, CAST(N'2018-07-01T11:58:00.340' AS DateTime), CAST(N'2018-07-01T11:58:24.353' AS DateTime), N'::1', N'::1', N'vinh', CAST(N'2018-04-14T10:07:07.970' AS DateTime), N'vinh', CAST(N'2018-04-14T10:07:07.970' AS DateTime))
INSERT [dbo].[user] ([id], [username], [password], [name], [role], [email], [id_security_question], [answer_security_question], [is_active], [last_login_date], [last_logout_date], [ip_last_login], [ip_last_logout], [create_by], [create_date], [update_by], [update_date]) VALUES (4, N'team04', N'e10adc3949ba59abbe56e057f20f883e', N'team04', 1, N'team4@vlutrading.com', 4, N'nguyen khac nhu', 1, CAST(N'2018-07-01T13:49:33.723' AS DateTime), CAST(N'2018-07-01T13:49:39.520' AS DateTime), N'::1', N'::1', N'team04', CAST(N'2018-05-09T10:11:15.020' AS DateTime), N'team04', CAST(N'2018-05-09T10:11:15.020' AS DateTime))
INSERT [dbo].[user] ([id], [username], [password], [name], [role], [email], [id_security_question], [answer_security_question], [is_active], [last_login_date], [last_logout_date], [ip_last_login], [ip_last_logout], [create_by], [create_date], [update_by], [update_date]) VALUES (5, N't1506666', N'ae93d52a2c4aeb6b8d173e16a494f411', N't1506666@gmail.com', 1, N't1506666@gmail.com', 1, N't1506666@gmail.com', 1, CAST(N'2018-05-11T17:07:22.713' AS DateTime), CAST(N'2018-05-11T17:09:04.147' AS DateTime), N'125.234.238.130', N'125.234.238.130', N't1506666', CAST(N'2018-05-11T17:07:04.840' AS DateTime), N't1506666', CAST(N'2018-05-11T17:07:04.840' AS DateTime))
INSERT [dbo].[user] ([id], [username], [password], [name], [role], [email], [id_security_question], [answer_security_question], [is_active], [last_login_date], [last_logout_date], [ip_last_login], [ip_last_logout], [create_by], [create_date], [update_by], [update_date]) VALUES (7, N'thuysvii', N'18eb191e1f439d8f3a8a87ab4a155d87', N'Thuy Vi', 1, N'thuysvii@gmail.com', 13, N'Se co thien than thay anh yeu em', 1, CAST(N'2018-07-01T16:09:28.210' AS DateTime), CAST(N'2018-07-01T16:10:05.117' AS DateTime), N'::1', N'::1', N'thuysvii', CAST(N'2018-05-18T21:18:32.350' AS DateTime), N'thuysvii', CAST(N'2018-05-18T21:18:32.350' AS DateTime))
INSERT [dbo].[user] ([id], [username], [password], [name], [role], [email], [id_security_question], [answer_security_question], [is_active], [last_login_date], [last_logout_date], [ip_last_login], [ip_last_logout], [create_by], [create_date], [update_by], [update_date]) VALUES (13, N'minhvo', N'ff462901f02545a0bb4ffcdce90be3e1', N'Minh Võ', 1, N'minhvo@vlutrading.com', 3, N'minhvo', 1, CAST(N'2018-07-01T16:15:08.680' AS DateTime), CAST(N'2018-07-01T16:25:48.040' AS DateTime), N'::1', N'::1', N'minhvo', CAST(N'2018-05-23T11:15:15.640' AS DateTime), N'minhvo', CAST(N'2018-05-23T11:15:15.640' AS DateTime))
INSERT [dbo].[user] ([id], [username], [password], [name], [role], [email], [id_security_question], [answer_security_question], [is_active], [last_login_date], [last_logout_date], [ip_last_login], [ip_last_logout], [create_by], [create_date], [update_by], [update_date]) VALUES (14, N'Thangnguyen', N'ff462901f02545a0bb4ffcdce90be3e1', N'Thang Nguyen', 1, N'thangnguyen@gmail.com', 3, N'Tran Quang Vinh', 1, CAST(N'2018-07-01T16:10:42.270' AS DateTime), CAST(N'2018-07-01T16:15:01.977' AS DateTime), N'::1', N'::1', N'Thang', CAST(N'2018-05-23T11:43:40.667' AS DateTime), N'Thang', CAST(N'2018-05-23T11:43:40.667' AS DateTime))
INSERT [dbo].[user] ([id], [username], [password], [name], [role], [email], [id_security_question], [answer_security_question], [is_active], [last_login_date], [last_logout_date], [ip_last_login], [ip_last_logout], [create_by], [create_date], [update_by], [update_date]) VALUES (1008, N'haicaomi', N'ff462901f02545a0bb4ffcdce90be3e1', N'haicaomimha', 1, N'awa@vlutrading.com', 2, N'haitoaicao', 1, CAST(N'2018-05-29T17:59:48.283' AS DateTime), NULL, N'::1', NULL, N'haicaomi', CAST(N'2018-05-29T17:59:48.283' AS DateTime), N'haicaomi', CAST(N'2018-05-29T17:59:48.283' AS DateTime))
INSERT [dbo].[user] ([id], [username], [password], [name], [role], [email], [id_security_question], [answer_security_question], [is_active], [last_login_date], [last_logout_date], [ip_last_login], [ip_last_logout], [create_by], [create_date], [update_by], [update_date]) VALUES (1012, N'Admin256', N'ff462901f02545a0bb4ffcdce90be3e1', N'Account Admin', 2, N'Admin@vlutrading.com', 13, N'sach ma', 1, CAST(N'2018-07-01T17:06:09.663' AS DateTime), CAST(N'2018-07-01T16:01:28.723' AS DateTime), N'::1', N'::1', N'Admin256', CAST(N'2018-05-29T18:23:41.363' AS DateTime), N'Admin256', CAST(N'2018-05-29T18:23:41.363' AS DateTime))
INSERT [dbo].[user] ([id], [username], [password], [name], [role], [email], [id_security_question], [answer_security_question], [is_active], [last_login_date], [last_logout_date], [ip_last_login], [ip_last_logout], [create_by], [create_date], [update_by], [update_date]) VALUES (1017, N'thuyvii', N'e10adc3949ba59abbe56e057f20f883e', N'Vi Nguyễn', 1, N'nguyenthuythuyvi2478@vanlanguni.vn', 13, N'S? có thiên th?n thay anh yêu em', 1, CAST(N'2018-06-16T11:56:01.823' AS DateTime), CAST(N'2018-06-16T11:50:56.533' AS DateTime), N'::1', N'::1', N'thuyvii', CAST(N'2018-06-02T16:49:14.983' AS DateTime), N'thuyvii', CAST(N'2018-06-02T16:49:14.983' AS DateTime))
INSERT [dbo].[user] ([id], [username], [password], [name], [role], [email], [id_security_question], [answer_security_question], [is_active], [last_login_date], [last_logout_date], [ip_last_login], [ip_last_logout], [create_by], [create_date], [update_by], [update_date]) VALUES (1018, N'khaivi', N'49202492d86f9acef357a1bb9ad22915', N'Khải Vi', 1, N'1234@vanlanguni.vn', 13, N'S? có thiên th?n thay anh yêu em', 1, CAST(N'2018-06-02T18:02:01.077' AS DateTime), NULL, N'183.80.83.232', NULL, N'khaivi', CAST(N'2018-06-02T18:02:01.077' AS DateTime), N'khaivi', CAST(N'2018-06-02T18:02:01.077' AS DateTime))
INSERT [dbo].[user] ([id], [username], [password], [name], [role], [email], [id_security_question], [answer_security_question], [is_active], [last_login_date], [last_logout_date], [ip_last_login], [ip_last_logout], [create_by], [create_date], [update_by], [update_date]) VALUES (2015, N'Admin123', N'ff462901f02545a0bb4ffcdce90be3e1', N'Transaction Admin', 1002, N'Admin123@vlutrading.com', 13, N'doreamon', 1, CAST(N'2018-07-01T18:59:04.507' AS DateTime), CAST(N'2018-07-01T16:26:34.790' AS DateTime), N'::1', N'::1', N'Admin123', CAST(N'2018-06-11T15:30:25.833' AS DateTime), N'Admin123', CAST(N'2018-06-11T15:30:25.833' AS DateTime))
INSERT [dbo].[user] ([id], [username], [password], [name], [role], [email], [id_security_question], [answer_security_question], [is_active], [last_login_date], [last_logout_date], [ip_last_login], [ip_last_logout], [create_by], [create_date], [update_by], [update_date]) VALUES (2028, N'minhvo123456', N'285ad0e1c5d9a4fbad0b3509f9644245', N'minhaaa', 1, N'haidawdawd@vlutrading.coms', 13, N'truyen kinh di', 1, CAST(N'2018-06-19T13:47:40.500' AS DateTime), CAST(N'2018-06-19T13:47:45.110' AS DateTime), N'::1', N'::1', N'minhvo123456', CAST(N'2018-06-19T13:45:45.130' AS DateTime), N'minhvo123456', CAST(N'2018-06-19T13:45:45.130' AS DateTime))
INSERT [dbo].[user] ([id], [username], [password], [name], [role], [email], [id_security_question], [answer_security_question], [is_active], [last_login_date], [last_logout_date], [ip_last_login], [ip_last_logout], [create_by], [create_date], [update_by], [update_date]) VALUES (2031, N'toaihuynh', N'ff462901f02545a0bb4ffcdce90be3e1', N'Toại Huỳnh', 1, N'pinz.impossible@vanlanguni.edu.vn', 3, N'lamson', 1, CAST(N'2018-07-01T16:10:11.943' AS DateTime), CAST(N'2018-07-01T16:10:26.287' AS DateTime), N'::1', N'::1', N'toaihuynh', CAST(N'2018-06-19T23:49:04.180' AS DateTime), N'toaihuynh', CAST(N'2018-06-19T23:49:04.180' AS DateTime))
INSERT [dbo].[user] ([id], [username], [password], [name], [role], [email], [id_security_question], [answer_security_question], [is_active], [last_login_date], [last_logout_date], [ip_last_login], [ip_last_logout], [create_by], [create_date], [update_by], [update_date]) VALUES (2032, N'Vi1234', N'940d759b576002642b28514f4387fb12', N'Thúy Vi', 1, N'vi@gmail.com', 2, N'Nguy?n', 0, CAST(N'2018-06-20T17:54:33.300' AS DateTime), NULL, N'::1', NULL, N'Vi1234', CAST(N'2018-06-20T17:54:33.300' AS DateTime), N'Vi1234', CAST(N'2018-06-20T17:54:33.300' AS DateTime))
INSERT [dbo].[user] ([id], [username], [password], [name], [role], [email], [id_security_question], [answer_security_question], [is_active], [last_login_date], [last_logout_date], [ip_last_login], [ip_last_logout], [create_by], [create_date], [update_by], [update_date]) VALUES (2045, N'thuysvii01', N'ff462901f02545a0bb4ffcdce90be3e1', N'Thúi Vi', 1, N'vinguyen6969@vanlanguni.vn', 13, N'"Se co thien than thay anh yeu em"', 0, CAST(N'2018-06-29T16:19:39.100' AS DateTime), NULL, N'::1', NULL, N'thuysvii01', CAST(N'2018-06-29T16:19:39.100' AS DateTime), N'thuysvii01', CAST(N'2018-06-29T16:19:39.100' AS DateTime))
INSERT [dbo].[user] ([id], [username], [password], [name], [role], [email], [id_security_question], [answer_security_question], [is_active], [last_login_date], [last_logout_date], [ip_last_login], [ip_last_logout], [create_by], [create_date], [update_by], [update_date]) VALUES (2047, N'Emily123', N'85b4d2b5a1b333eb4ea4be7e8ba1da35', N'Emily Nguyễn', 1, N'Emily@vanlanguni.edu.vn', 1, N'123456', 0, CAST(N'2018-06-30T12:44:56.480' AS DateTime), NULL, N'::1', NULL, N'Emily123', CAST(N'2018-06-30T12:44:56.480' AS DateTime), N'Emily123', CAST(N'2018-06-30T12:44:56.480' AS DateTime))
INSERT [dbo].[user] ([id], [username], [password], [name], [role], [email], [id_security_question], [answer_security_question], [is_active], [last_login_date], [last_logout_date], [ip_last_login], [ip_last_logout], [create_by], [create_date], [update_by], [update_date]) VALUES (2048, N'phithang', N'ff462901f02545a0bb4ffcdce90be3e1', N'Phi Thang', 1, N'thangphi@vanlanguni.edu.vn', 4, N'Bui Dinh Tuy', 1, CAST(N'2018-07-01T11:42:22.740' AS DateTime), CAST(N'2018-07-01T11:42:33.863' AS DateTime), N'::1', N'::1', N'phithang', CAST(N'2018-06-30T21:27:37.677' AS DateTime), N'phithang', CAST(N'2018-06-30T21:27:37.677' AS DateTime))
INSERT [dbo].[user] ([id], [username], [password], [name], [role], [email], [id_security_question], [answer_security_question], [is_active], [last_login_date], [last_logout_date], [ip_last_login], [ip_last_logout], [create_by], [create_date], [update_by], [update_date]) VALUES (2050, N'LuongTheVinh', N'ff462901f02545a0bb4ffcdce90be3e1', N'Vinh Lương', 1, N'luongthevinh@vanalnguni.edu.vn', 3, N'Tran Quang Vinh', 1, CAST(N'2018-06-30T21:40:19.563' AS DateTime), NULL, N'::1', NULL, N'LuongTheVinh', CAST(N'2018-06-30T21:40:19.563' AS DateTime), N'LuongTheVinh', CAST(N'2018-06-30T21:40:19.563' AS DateTime))
INSERT [dbo].[user] ([id], [username], [password], [name], [role], [email], [id_security_question], [answer_security_question], [is_active], [last_login_date], [last_logout_date], [ip_last_login], [ip_last_logout], [create_by], [create_date], [update_by], [update_date]) VALUES (2051, N'vocongminh256', N'ff462901f02545a0bb4ffcdce90be3e1', N'vocongminh', 1, N'vocongminh256@vanlanguni.vn', 13, N'truyen kinh di', 0, CAST(N'2018-07-01T10:41:31.090' AS DateTime), NULL, N'::1', NULL, N'vocongminh256', CAST(N'2018-07-01T10:41:31.093' AS DateTime), N'vocongminh256', CAST(N'2018-07-01T10:41:31.093' AS DateTime))
SET IDENTITY_INSERT [dbo].[user] OFF
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_item] FOREIGN KEY([id_item])
REFERENCES [dbo].[item] ([id])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK_Comment_item]
GO
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_user] FOREIGN KEY([id_user])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK_Comment_user]
GO
ALTER TABLE [dbo].[item]  WITH CHECK ADD  CONSTRAINT [FK_item_item_status] FOREIGN KEY([status])
REFERENCES [dbo].[item_status] ([id])
GO
ALTER TABLE [dbo].[item] CHECK CONSTRAINT [FK_item_item_status]
GO
ALTER TABLE [dbo].[item]  WITH CHECK ADD  CONSTRAINT [FK_item_userBuyerId] FOREIGN KEY([buyer_id])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[item] CHECK CONSTRAINT [FK_item_userBuyerId]
GO
ALTER TABLE [dbo].[item]  WITH CHECK ADD  CONSTRAINT [FK_item_userSellerId] FOREIGN KEY([seller_id])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[item] CHECK CONSTRAINT [FK_item_userSellerId]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK_order_user] FOREIGN KEY([buyerid])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK_order_user]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FK_order_detail_item1] FOREIGN KEY([item_id])
REFERENCES [dbo].[item] ([id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FK_order_detail_item1]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FK_order_detail_Order1] FOREIGN KEY([orderid])
REFERENCES [dbo].[order] ([orderid])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FK_order_detail_Order1]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_roleId] FOREIGN KEY([role])
REFERENCES [dbo].[role] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_roleId]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_security_questionId] FOREIGN KEY([id_security_question])
REFERENCES [dbo].[security_question] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_security_questionId]
GO
ALTER TABLE [dbo].[user_personal_information]  WITH CHECK ADD  CONSTRAINT [FK_user_personal_information_userId] FOREIGN KEY([id_user])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[user_personal_information] CHECK CONSTRAINT [FK_user_personal_information_userId]
GO
