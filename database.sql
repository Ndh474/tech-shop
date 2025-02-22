USE [AssignmentPRJ]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 21/03/24 11:24:40 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 21/03/24 11:24:40 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[BrandID] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 21/03/24 11:24:40 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 21/03/24 11:24:40 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
	[ClientName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
	[PhoneNumber] [nvarchar](10) NOT NULL,
	[Products] [nvarchar](4000) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 21/03/24 11:24:40 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Image] [nvarchar](4000) NOT NULL,
	[Specifications] [nvarchar](4000) NOT NULL,
	[Description] [nvarchar](4000) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[BrandID] [int] NOT NULL,
	[SellerID] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 21/03/24 11:24:40 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([AccountID], [Username], [Password], [RoleID]) VALUES (0, N'admin', N'admin', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [RoleID]) VALUES (1, N'helloworld', N'helloworld', 2)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [RoleID]) VALUES (2, N'bestseller', N'bestseller', 2)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [RoleID]) VALUES (3, N'hacker', N'hacker', 2)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [RoleID]) VALUES (4, N'caniva', N'caniva', 2)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [RoleID]) VALUES (5, N'ggwp', N'ggwp', 2)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [RoleID]) VALUES (6, N'cleanc', N'cleanc', 2)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [RoleID]) VALUES (7, N'ndh', N'ndh', 3)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (1, N'Apple')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (2, N'Samsung')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (3, N'Xiaomi')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (4, N'Lenovo')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (5, N'Nvidia')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (6, N'AMD')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (7, N'Intel')
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (1, N'Smartphone')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (2, N'Laptop')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (3, N'Sound')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (4, N'Computer component')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [Price], [Quantity], [Image], [Specifications], [Description], [CategoryID], [BrandID], [SellerID]) VALUES (1, N'Xiaomi 13T Pro Light Blue 12/256', 649, 186, N'https://i02.appmifile.com/308_operatorx_operatorx_opx/26/09/2023/4796e703846ff6b8afdca74fc2755a10.png?thumb=1&w=500&f=webp&q=85', N'Display: AMOLED, 68 billion colors, 144Hz, Dolby Vision, HDR10+, 1200 nits (HBM), 2600 nits (peak), 6.67 inches, 1.5K (1220 x 2712 pixels), Aspect ratio 20:9, pixel density ~446 ppi, Corning Gorilla Glass 5; Operating System: Android 13, MIUI 14; Rear Camera: 50 MP, f/1.9, 24mm (wide), PDAF, OIS, 50 MP, f/1.9, 50mm (telephoto), PDAF, OIS, 2x optical zoom, 12 MP, f/2.2, 15mm (ultrawide), Video recording: 8K@24fps, 4K@24/30/60fps, 4K/1080p@30fps HDR10+, 1080p@30/60/120/240fps; 10-bit LOG, gyro-EIS; Front Camera: 20 MP, f/2.2 (wide), HDR, Video recording: 1080p@30fps, HDR10+; CPU: Mediatek Dimensity 9200+ (4 nm), Octa-core (1x3.35 & 3x3.0 GHz & 4x2.0 GHz), GPU: Immortalis-G715 MC11; RAM: 12-16GB, LPDDR5X; Internal Storage: 256GB-1TB, UFS 4.0; SIM Card: Dual SIM, Nano SIM, Or Nano SIM and eSIM; Battery Capacity: Li-Po 5000 mAh, 120W fast charging, PD3.0, QC4, Charge 100% in 19 mins (QC); Design: Aluminum frame, Glass/leather back, Front glass Gorilla Glass 5, Water and dust resistant, IP68.
', N'In addition to the 50MP main sensor and 12MP ultra-wide-angle sensor, the device has a 50MP telephoto camera instead of the macro sensor found on predecessor models, combined with the most powerful Dimensity chip currently available, and a brighter 144Hz screen. up to 2600nit, large battery and impressive super fast charging.
The Xiaomi T series always wins great hearts from a large number of users and promises that the Xiaomi 13T Pro will create a new fever in the near-high-end smartphone market instead of last year`s Xiaomi 12T Pro.
Both phone models have 12bit color AMOLED panels capable of reproducing up to 68 billion colors, but the 13T Pro`s scanning frequency from 144Hz is superior to 120Hz on its predecessor.
Xiaomi equips the 13T Pro phone model with the super powerful Dimensity 9200 Plus processor. Phone products running this chip have stronger performance than devices running Snapdragon 8 Gen 2. And of course, the performance of 13T Pro will be 15-20% stronger than Xiaomi 12T Pro with Snapdragon 8+ Gen 1.
Xiaomi has raised the camera level for the 13T Pro to the level of top high-end flagship devices with a 50MP main sensor, 50MP telephoto camera and 12MP ultra-wide-angle camera, refined and integrated with color filters and features of Leca. While the Xiaomi 12T Pro has a 200MP main sensor, an 8MP ultra-wide-angle sensor and a 2MP macro camera, this is a camera configuration often equipped for products with mid-range camera systems.', 1, 3, 0)
INSERT [dbo].[Product] ([ID], [Name], [Price], [Quantity], [Image], [Specifications], [Description], [CategoryID], [BrandID], [SellerID]) VALUES (2, N'Xiaomi Redmi 13C Green 4/128', 109, 235, N'https://i02.appmifile.com/477_operatorx_operatorx_opx/08/11/2023/a69b2ced4a4e2403fbfd446994c26a06.png?thumb=1&w=500&f=webp&q=85', N'Display: IPS LCD, 90Hz, 450 nits (typ), 600 nits (HBM), 6.74 inches, HD+ (720 x 1600 pixels), Pixel density ~260 ppi; Operating System: Android 13, MIUI 14; Rear Camera: 50 MP, f/1.8, 28mm (wide), PDAF, 2 MP (depth), Video recording: 1080p@30fps; Front Camera: 8 MP, f/2.2 (wide), Beautification, Portrait mode, Video recording: available; CPU: Mediatek MT6769Z Helio G85 (12nm), Octa-core (2x2.0 GHz & 6x1.8 GHz), GPU: Mali-G52 MC2; RAM: 4-6GB; Internal Storage: 128GB, eMMC 5.1; SIM Card: Dual SIM, Nano SIM; Battery Capacity: Li-Po 5000 mAh, 18W charging (10W included); Design: Plastic frame, plastic back, Waterdrop notch display, Side-mounted fingerprint unlock.
', N'The Xiaomi Redmi 13C product carries a powerful 8-core Helio chip, with a large 6.74-inch screen with an extremely smooth 90Hz refresh rate. The device has a high-spec 50MP camera that supports sharp Full HD video recording along with a high-capacity battery and supports fast charging.
Redmi 13C has a monolithic design with an integrated water drop screen and camera cluster that resembles the design of Redmi Note 13 and 13 Pro, creating a fashion highlight in the super low price segment. The device has 3 youthful and dynamic colors.
Both Redmi 13C and Redmi 12C devices have IPS LCD screens with HD+ resolution for pixel density that is not too high, providing just enough clarity for use. However, the Redmi 13C screen is larger at 6.74 inches compared to the Redmi 12C`s 6.71 inches, this difference is not significant.
The 5000mAh battery is equipped on both low-cost Redmi phone models, but the Redmi 13C has 18W fast charging with the popular and trendy Type-C charging port, while the Redmi 12C still uses the stray micro USB charging port. behind and only supports 10W basic charging.
The product uses RAM with capacities of 4GB and 6GB for users to freely choose. Regarding storage memory, in addition to 128GB memory, users can further expand it via external memory card up to 1TB.', 1, 3, 2)
INSERT [dbo].[Product] ([ID], [Name], [Price], [Quantity], [Image], [Specifications], [Description], [CategoryID], [BrandID], [SellerID]) VALUES (3, N'ASUS ROG Matrix GeForce RTX 4090 Platinum 24GB GDDR6X', 4009, 117, N'https://product.hstatic.net/1000333506/product/image__44__1b57b64b01ab43ad9491ce576bd4f647_grande.png', N'Graphics Processor: NVIDIA GeForce RTX 4090; Standard Bus: PCI Express 4.0; OpenGL: OpenGL 4.6; Video Memory: 24 GB GDDR6X; Clock Speed: OC Mode: 2700 MHz, Default Mode: 2670 MHz; CUDA Cores: 16384; Memory Speed: 21 Gbps; Memory Protocol: 384-bit; Resolution: Maximum Resolution 7680 x 4320; Ports: 2 x HDMI 2.1 (Native), 3 x DisplayPort 1.4a (Native); HDCP Support: 2.3; Maximum Supported Display Count: 4; NVlink/Crossfire Support: No.', N'ASUS ROG Matrix GeForce RTX 4090 Platinum 24GB GDDR6X', 4, 5, 0)
INSERT [dbo].[Product] ([ID], [Name], [Price], [Quantity], [Image], [Specifications], [Description], [CategoryID], [BrandID], [SellerID]) VALUES (4, N'Intel Core i7 14700F', 429, 190, N'https://product.hstatic.net/200000722513/product/n22459-001-rpl-i7f-fhs-dva-bc-univ_png_21fc4faaaca646ae9804e8bcc729ae57.png', N'Socket: FCLGA1700; CPU Series: Core i7; CPU: Intel® Core® i7-14700F (Raptor Lake); Number of Cores: 20 (8 Performance-cores/12 Efficient-cores); Number of Threads: 28; Maximum Turbo Frequency: --; Intel Turbo Boost Max Technology 3.0 Frequency: 5.4GHz; Maximum Turbo Speed of P-core: 5.3 GHz; Maximum Turbo Speed of E-core: 4.2 GHz; Base Speed of P-core: 2.1 GHz; Base Speed of E-core: 1.5 GHz; Power Consumption: 65W - 219W; Cache: 33MB Intel® Smart Cache; Compatible Motherboards: 600 and 700 series; Maximum Supported Memory: 192GB; Memory Type: DDR5, DDR4; Integrated Graphics: None; PCI Express Version: 5.0 and 4.0; Number of PCIe Lanes: 20.', N'Intel Core i7 14700F Processor / Turbo up to 5.4GHz / 20 Cores 28 Threads / 33MB / LGA 1700', 4, 7, 2)
INSERT [dbo].[Product] ([ID], [Name], [Price], [Quantity], [Image], [Specifications], [Description], [CategoryID], [BrandID], [SellerID]) VALUES (5, N'Intel Core i9 10980XE', 1099, 144, N'https://product.hstatic.net/200000722513/product/essor-box-core-i9-extreme-edition-1x1_dc431fd5edd0478f9240f3f00fc116ed_39c1d07d7a2c4a8c806e97d2faaedde3.png', N'
Socket: LGA2066; Cache: 24.75MB Smart Cache; Manufacturing Process: 14nm; Number of Cores: 18; Number of Threads: 36; Base Clock Speed: 3.0GHz; Turbo Boost Clock Speed: 4.6GHz; Thermal Design Power (TDP): 165W; Maximum Supported RAM: 256GB; RAM Type: DDR4-2933.', N'Processor Intel Core i9 10980XE / 3.0GHz Turbo 4.6GHz / 18 Cores 36 Threads / 24.75MB / LGA 2066', 4, 7, 8)
INSERT [dbo].[Product] ([ID], [Name], [Price], [Quantity], [Image], [Specifications], [Description], [CategoryID], [BrandID], [SellerID]) VALUES (6, N'GIGABYTE X670 AORUS ELITE AX (DDR5)', 349, 68, N'https://product.hstatic.net/200000722513/product/0001_c58e4676c44821517a795278c8156f32_842db5ac48d94e4f839b6114f507fc9a_c7b8d38f239d4217a58e6444bcef6ca3.jpg', N'Socket: AM5; CPU Support: AMD Ryzen™ 7000 Series; Chipset: AMD X670; Memory: DDR5 5200/4800/4400 MHz, up to 128 GB (32 GB per DIMM); Integrated Graphics: HDMI (4096x2160@60 Hz, HDMI 2.0, HDCP 2.3); Audio: Realtek® Audio CODEC, 2/4/5.1/7.1-channel; LAN: Realtek® 2.5GbE LAN chip; Wireless: AMD Wi-Fi 6E RZ616 (WIFI a/b/g/n/ac/ax/ax, Bluetooth 5.2); Expansion Slots: 1 x PCIe 4.0 x16, 1 x PCIe 4.0 x4, 1 x PCIe 3.0 x16, AMD CrossFire support; Storage: 1 x M.2 PCIe 5.0, 1 x M.2 PCIe 4.0, 2 x M.2 PCIe 4.0, 4 x SATA 6Gb/s; USB: CPU: 2 x USB 3.2 Gen 2, 2 x USB 3.2 Gen 1; CPU+Chipset: 2 x USB Type-C (3.2 Gen 2x2), 8 x USB 3.2 Gen 1, 4 x USB 2.0/1.1; Internal Connectors: ATX 24-pin, 2 x ATX 12V 8-pin, CPU fan, CPU water cooling, 3 x system fan, CPU cooler LED strip/RGB LED strip, 2 x Addressable LED strip, 2 x RGB LED strip, 4 x SATA 6Gb/s, 4 x M.2, front panel, front panel audio, USB Type-C, 2 x USB 3.2 Gen 1, 2 x USB 2.0/1.1, THB_U4, TPM, power button, reset button, Clear CMOS button, Clear CMOS jumper; Back Panel Connectors: Q-Flash Plus button, 2 x SMA antenna, HDMI 2.0, 6 x USB 3.2 Gen 1, 4 x USB 2.0/1.1, 2 x USB 3.2 Gen 2, RJ-45, 3 x audio jacks; I/O Controller: iTE® I/O Controller Chip; BIOS: 1 x 256 Mbit flash, AMI UEFI BIOS, PnP 1.0a, DMI 2.7, WfM 2.0, SM BIOS 2.7, ACPI 5.0; Special Features: GIGABYTE Control Center (GCC) support, Q-Flash support, Q-Flash Plus support, Smart Backup support; Bundle Software: Norton® Internet Security (OEM version), LAN bandwidth management software; OS Support: Windows 11 64-bit, Windows 10 64-bit; Form Factor: ATX; Dimensions: 30.5cm x 24.4cm.', N'Provides optimal performance
Acting as the frame of all PC components, GIGABYTE X670 AORUS ELITE AX will ensure the power of your entire PC system with a 16+2+2 power phase design. The high-end motherboard from GIGABYTE provides the best power for users` maximum overclocking needs.
Top notch cooling system
Aiming for the most stable and powerful performance, GIGABYTE X670 AORUS ELITE AX has been equipped with the most "excellent" cooling system. The first thing that comes to the user`s attention is the heatsink panel that covers the entire PCB and VRM system, still ensuring optimal heat dissipation for the internal components. The direct connection is an 80mm Mega-Heatpipe heat pipe, next to a 7W/mK thermal pad.
The layers in the PCB are made from copper with good thermal conductivity and impedance on GIGABYTE X670 AORUS ELITE AX. From there it turns into a heat dissipation area right on the motherboard`s microchips.
Supports super speed connection
Included in the box with GIGABYTE 2.4Gbps level. When talking about connectivity, we cannot help but mention gaming gear devices such as wireless mice, bluetooth keyboards, etc. GIGABYTE X670 AORUS ELITE AX also supports Bluetooth 5 so you can connect with responsive interactions. Instant recovery, minimizing latency compared to the old generation.', 4, 6, 8)
INSERT [dbo].[Product] ([ID], [Name], [Price], [Quantity], [Image], [Specifications], [Description], [CategoryID], [BrandID], [SellerID]) VALUES (7, N'AMD Ryzen 5 8500G', 209, 173, N'https://product.hstatic.net/200000722513/product/gearvn-bo-vi-xu-ly-amd-ryzen-5-8500g-1_95095ec638944459989cfed99eef9e61.png', N'Architecture: "Zen 4"; Cores: 6; Threads: 12; Processing Speed: 3.5GHz up to 5.0GHz; L2 Cache: 6MB; L3 Cache: 16MB; CPU Core Processing Technology: TSMC 4nm FinFET; Socket: AM5; PCIe Version: PCIe® 4.0; Cooling Solution (PIB): AMD Wraith Stealth; Default Power Consumption: 65W; Memory Support: DDR5, up to 256GB, 2 channels; Maximum Memory Speed: 2x1R DDR5-5200, 2x2R DDR5-5200, 4x1R DDR5-3600, 4x2R DDR5-3600; Graphics Features: Graphics Model: AMD RadeonTM 740M Graphics, Graphics Core Count: 4, Graphics Frequency: 2400MHz.
', N'Processor AMD Ryzen 5 8500G / 3.5GHz Boost 5.0GHz / 6 cores 12 threads / 22MB / AM5
As a product in the "AMD Ryzen 5 8000G" line, the AMD Ryzen 5 8500G processor will be suitable for PC designs that require high processing speed in imaging tasks.
Hybrid architecture combines "Zen 4" and "Zen 4c"
Possessing a quite special hybrid architecture "Zen 4" and "Zen 4c" the AMD Ryzen 5 8500G processor compared to just Zen 4 or Zen 4c architecture. For example, the ability to reduce power consumption will be reduced. when operating at high performance.

Graphics support with impressive specifications
AMD Ryzen 5 8500G with hybrid architecture and APU equipped with 6 cores/12 threads produces a base clock of 3.5GHz and reaches 5.0GHz in the Boost phase; L3 Cache is 16 MB while L2 Cache is 6 MB. The basic parameters that this CPU brings will really impress you when you experience it in practice.
Impressed with DDR5-5200 memory

Memory is the point that will make you choose this AMD Ryzen 5 8500G CPU, which supports DDR5 memory and the highest speed can reach 5200MT/s so you can rest assured when performing a variety of tasks. task while still achieving stability.', 4, 6, 5)
INSERT [dbo].[Product] ([ID], [Name], [Price], [Quantity], [Image], [Specifications], [Description], [CategoryID], [BrandID], [SellerID]) VALUES (8, N'iPhone 15 Pro Max Natural 256GB', 1249, 203, N'https://clickbuy.com.vn/uploads/images/2023/09/iphone-15-pro-max-titan-1.png', N'Screen Size: 6.7 inches; CPU: A17 Pro; Operating System: iOS 17; Internal Storage: 256 GB; RAM: 8 GB; Main Camera: 48MP, 24mm, ƒ/1.78, Ultra Wide Camera: 12MP, 13mm, ƒ/2.2; Front Camera: 12MP, ƒ/1.9; Battery Capacity: 4422 mAh; Screen Resolution: 2796 x 1290 pixels.




', N'iPhone 15 Pro Max brings outstanding improvements with:

The powerful A17 Pro chip handles all types of daily tasks as well as heavy gaming
5x zoom camera
Luxurious titanium design
  The current price has been deeply reduced and is available compared to the time of launch with discount and sale programs at Clickbuy
Stability of the IOS operating system and compatibility with the latest iPhone.
These features ensure that every moment of use is smooth and classy. You will experience leading technology and exquisite design that is second to none.
Type C port - charging port synchronized with all other Apple devices such as Macbook, iPad... is also a common connection standard in the future.', 1, 1, 5)
INSERT [dbo].[Product] ([ID], [Name], [Price], [Quantity], [Image], [Specifications], [Description], [CategoryID], [BrandID], [SellerID]) VALUES (9, N'Macbook Pro 14 M2 Pro ', 1969, 94, N'https://product.hstatic.net/200000722513/product/u-16gpu-16gb-512gb-silver-mphh3sa-a-1_87cecf4aadae4c0aa6d5b6aad5b75396_55741b9991794fa3bb046f135c575269_grande.png', N'CPU: M2 PRO 10CPU 16GPU; Display: 14-inch Liquid Retina XDR display; RAM: 16GB; Battery Life: Up to 18 hours; Storage: 512GB SSD; Ports: MagSafe 3, 3x Thunderbolt 4, HDMI, SDXC Card, 3.5mm Jack; Keyboard: Magic Keyboard & Touch ID; Wireless Connectivity: Bluetooth 5.3, Wi-Fi 6 (802.11ax); Camera: 1080p FaceTime HD camera; Audio: 3 micro studio, 6 speakers; Operating System: MacOS; Dimensions: 31.26 cm x 22.12 cm x 1.55 cm; Weight: 1.60 kg.', N'Leap performance from the M2 chip
Macbook Pro 14 M2 Pro, to evaluate the appearance compared to previous versions, probably hasn''t changed much. The appearance still retains its luxurious beauty with the characteristic Silver color tone. The difference you can feel on this Apple Macbook is the powerful performance from the M2 chip. With a 10-core CPU structure, work processing speed is smoother than ever. Combined with 16 GPU cores for beautiful graphics rendering. Meets all needs of image design, video editing, entertainment,...
Optimal cooling system for compact laptops
Macbook Pro 14 M2 Pro is equipped with an advanced cooling fan that quickly cools and circulates air so you always have stable performance for a long time. Ready for jobs that require continuous operation, tasks that require high processing ability while the machine is still extremely smooth.

The Macbook has the longest battery life ever
Macbook Pro 14 M2 Pro has the longest battery life ever. According to Apple, with this version Macbook can last up to 18 hours of productivity. You will have more comfortable and flexible working time without worrying about running out of energy.', 2, 1, 6)
INSERT [dbo].[Product] ([ID], [Name], [Price], [Quantity], [Image], [Specifications], [Description], [CategoryID], [BrandID], [SellerID]) VALUES (10, N'Samsung Galaxy S24 Ultra (5G) Black 12/256', 1039, 217, N'https://clickbuy.com.vn/uploads/pro/thumbs/samsung-galaxy-s24-ultra_197559.jpg', N'Screen Size: 6.8 inches; CPU: Snapdragon 8 Gen 3 (4 nm); Operating System: Android 14, One UI 6.1; Internal Storage: 256GB; RAM: 12GB; Main Camera: 200MP + 50MP + 10MP + 12MP; Front Camera: 12MP; Battery Capacity: 5000mAh; Colors: Black, Purple, Gray, Yellow; Screen Resolution: 1440 x 3088 pixels.', N'Impressive design down to every detail
Samsung Galaxy S24 Ultra, Samsung has a monolithic design covered with a border made of Titanium and covered with a Satin layer on the soft, smooth surface, providing a smooth experience. Colors are selected by Samsung with color schemes inspired by the colors of precious minerals in nature to suit the user`s aesthetic taste.

Samsung Galaxy S24 Ultra, has a power button and volume down button design on the side of the device, making it easier for users to open the device as well as make it simpler to use and adjust the volume depending on the user`s needs.
Huge screen size enhances the experience
Samsung Galaxy S24 Ultra, still retains the familiar punch-hole design of Samsung smartphones. Samsung understands people`s desires, so it has equipped this Samsung Galaxy S24 Ultra with an outstanding 6.8-inch QHD+ large screen, bringing the ultimate experience like never before.

In addition, Samsung`s screen is also equipped with a scanning frequency of up to 120Hz, providing the ability to move graphics and "touch" and "slide" operations smoothly and lightly as if gliding on water. . In addition, Samsung Galaxy S24 Ultra is also equipped with Gorilla Glass Victus, the two most advanced types of tempered glass to help protect the screen from scratches and cracks when impacted.

The camera set elevates its position to the pinnacle with AI power
Samsung Galaxy S24 Ultra, designed with ProVisual technology, enables the ability to take photos regardless of lighting conditions, any distance far or near, or zoom in close-up in detail while still maintaining sharpness in every detail. details. With all lighting conditions, with AI ISP technology, the Galaxy S24U still captures a bright and clear frame even in the dark with poor lighting conditions.', 1, 2, 6)
INSERT [dbo].[Product] ([ID], [Name], [Price], [Quantity], [Image], [Specifications], [Description], [CategoryID], [BrandID], [SellerID]) VALUES (11, N'Samsung Galaxy Buds 2', 69, 94, N'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-buds-2-new_9_.png', N'Color: Black, Green, Violet; Manufacturer: Genuine Samsung; Product Condition: New; Brand: Samsung; Water Resistance: IPX2 (Small water droplets); Audio Technology: Active Noise Cancellation (ANC), Dual Speaker, Surround Sound Mode; Microphone: 3 Noise Cancelling Mics; Control Method: Volume Control, Track Change, Mode Switching.




', N'Galaxy Buds 2 is small, light and luxurious
Covering the outside of each Galaxy Buds 2 R177N charging box is a pure white color. When opened, the inside of the box and housing are filled with unique, beautiful colors. Neat charging box design, soft rounded edges, small in-ear style housing, only 5 grams using 3 sizes of soft silicone earplugs for you to wear headphones that fit snugly, comfortably, without stress or pain. even when worn for long periods of time.
Vivid studio sound with AKG 2-way speakers
True Wireless headphones support 2 Woofer and Tweeter drivers with sound tuning by AKG, reproducing clear sound ranges, deep bass, and listening to many different music genres.
Choose the sound you want to hear with active noise cancellation (ANC) technology
The Bluetooth headset has 2 microphones that detect and actively block up to 98% of surrounding noise, allowing you to focus on your work and the music you`re enjoying whether you`re at home or outside a coffee shop. Besides, there is also an Ambient Sound mode with 3 customizable levels: high - medium - low so you can hear the surrounding sounds that best suit you.', 3, 2, 7)
INSERT [dbo].[Product] ([ID], [Name], [Price], [Quantity], [Image], [Specifications], [Description], [CategoryID], [BrandID], [SellerID]) VALUES (12, N'Laptop gaming Lenovo LOQ 15IAX9', 829, 135, N'https://product.hstatic.net/200000722513/product/khung-laptop-23_fd54463b52cb4cf79732623e567e930e.png', N'CPU: Intel® Core™ i5-12450HX, 8C (4P + 4E) / 12T, P-core up to 4.4GHz, E-core up to 3.1GHz, 12MB; RAM: 12GB (1 x 12GB) DDR5-4800 SO-DIMM (1 slot available, up to 32GB); Storage: 512GB SSD M.2 2242 PCIe 4.0x4 NVMe (2 Slots: M.2 2242/M.2 2280 PCIe 4.0 x4); Graphics Card: NVIDIA® GeForce RTX™ 3050 6GB GDDR6, Boost Clock 1732MHz, TGP 95W; Display: 15.6" FHD (1920x1080) IPS 300nits Anti-glare, 100% sRGB, 144Hz, G-SYNC®; Ports: 3x USB-A (USB 5Gbps / USB 3.2 Gen 1), 1x USB-C® (USB 10Gbps / USB 3.2 Gen 2) with PD 140W and DisplayPort™ 1.4, 1x HDMI® 2.1 (up to 8K/60Hz), 1x Headphone/microphone combo jack (3.5mm), 1x Ethernet (RJ-45), 1x Power connector; Keyboard: White Backlit, English; Audio: Stereo speakers, 2W x2, optimized with Nahimic Audio; LAN: 100/1000M; Wi-Fi + Bluetooth: Wi-Fi® 6, 11ax 2x2 + BT5.2; Webcam: FHD 1080p with E-shutter; Operating System: Windows® 11 Home Single Language, English; Battery: Integrated 60Wh (3 Cell); Weight: 2.38 kg; Color: Luna Grey; Material: PC-ABS (Top), PC-ABS (Bottom); Dimensions: 359.86 x 258.7 x 21.9-23.9 mm (14.17 x 10.19 x 0.86-0.94 inches).', N'Laptop for games that require high graphics
This laptop is equipped with Lenovo`s 12th generation Intel Core i5 chip with 8 cores, 12 threads combined with NVIDIA GeForce RTX 2050 VGA with the ability to handle heavy graphics tasks such as playing games and using device applications. design quickly. The Lenovo LOQ 15IAX9 83GS000FVN laptop is very suitable for users to experience games with high-end graphics.
Storage capacity is unlimited
Lenovo LOQ 15IAX9 83GS000FVN owns 8GB of RAM - a level of RAM just enough for office tasks, but you can also upgrade to a maximum of 32GB of RAM to be able to compete with other games. The Lenovo laptop`s 512GB hard drive also supports you while working or playing games comfortably.
Enjoy superior visuals with the 15.6`` screen
Lenovo LOQ 15IAX9 83GS000FVN laptop has a full HD screen combined with an IPS panel and 100% sRGB that will bring you sharp images with true colors at every viewing angle.
Laptops provide diverse connections
Lenovo LOQ 15IAX9 83GS000FVN is a gaming laptop, so you guys are probably very concerned about the connection ports of this laptop to be able to link many different gaming gear.', 2, 4, 7)
INSERT [dbo].[Product] ([ID], [Name], [Price], [Quantity], [Image], [Specifications], [Description], [CategoryID], [BrandID], [SellerID]) VALUES (13, N'Laptop Lenovo Yoga 9 2in1 14IMH9', 1889, 306, N'https://product.hstatic.net/200000722513/product/ava_9894017cfc3c462994377fe99d697c21.png', N'CPU: Intel® Core™ Ultra 7 155H, 16C (6P + 8E + 2LPE) / 22T, Max Turbo up to 4.8GHz, 24MB; RAM: 16GB Soldered LPDDR5x-7467 (Dual-channel, non-upgradable); SSD: 1TB SSD M.2 2242 PCIe® 4.0x4 NVMe® (non-upgradable); Graphics: Integrated Intel® Arc™ Graphics; Display: 14" 2.8K (2880x1800) OLED 400nits Glossy/Anti-fingerprint, 100% DCI-P3, 120Hz, Eyesafe®, Dolby® Vision™, DisplayHDR™ 500, Glass, Touch; Ports: 1x USB-A (USB 10Gbps / USB 3.2 Gen 2), Always On; 1x USB-C® (USB 10Gbps / USB 3.2 Gen 2) with USB PD 3.0 and DisplayPort™ 1.4; 2x USB-C® (Thunderbolt™ 4 / USB4® 40Gbps) with USB PD 3.0 and DisplayPort™ 1.4; 1x Headphone/microphone combo jack (3.5mm); Keyboard: White LED backlit; Audio: Stereo speakers, 3W x2 (woofers on the side), 2W x2 (front-facing tweeters on hinge bar), optimized with Dolby Atmos, sound by Bowers & Wilkins; Memory Card Reader: None; LAN: None; Wi-Fi Standard: Wi-Fi® 6E, 11ax 2x2; Bluetooth: v5.3; Webcam: 5.0MP + IR with Privacy Shutter; Operating System: Windows® 11 Home Single Language, English; Office: Home & Student 2021; Security: Touch Style, on Keyboard, IR camera for Windows® Hello; Battery: 4Cell 75Wh; Weight: 1.32 Kg; Color: Cosmic Blue; Material: Aluminium (Top), Aluminium (Bottom); Dimensions: 316 x 220 x 15.9 mm (12.44 x 8.66 x 0.63 inches).', N'Laptop Lenovo Yoga 9 2in1 14IMH9 83AC000SVN', 2, 4, 7)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Seller')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Normal User')
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Account]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Account] FOREIGN KEY([SellerID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Account]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Brand] FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([BrandID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Brand]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
