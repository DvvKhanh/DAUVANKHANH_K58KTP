USE [QLSV]
GO
INSERT [dbo].[Khoa] ([Makhoa], [Tenkhoa]) VALUES (N'DT01', N'Điện tử')
INSERT [dbo].[Khoa] ([Makhoa], [Tenkhoa]) VALUES (N'DT02', N'Điện')
INSERT [dbo].[Khoa] ([Makhoa], [Tenkhoa]) VALUES (N'DT03', N'Cơ khí')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [Makhoa]) VALUES (N'BM01', N'CNTT', N'DT01')
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [Makhoa]) VALUES (N'BM02', N'Điện tử số', N'DT02')
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [Makhoa]) VALUES (N'BM03', N'Chế tạo máy', N'DT03')
GO
INSERT [dbo].[GiaoVien] ([Magv], [Hoten], [Ngaysinh], [MaBM]) VALUES (N'GV01', N'Nguyễn Thị A', CAST(N'1988-04-20' AS Date), N'BM01')
INSERT [dbo].[GiaoVien] ([Magv], [Hoten], [Ngaysinh], [MaBM]) VALUES (N'GV02', N'Nguyễn Văn B', CAST(N'1980-02-10' AS Date), N'BM02')
INSERT [dbo].[GiaoVien] ([Magv], [Hoten], [Ngaysinh], [MaBM]) VALUES (N'GV03', N'Hoàng Văn H', CAST(N'2000-08-15' AS Date), N'BM03')
GO
INSERT [dbo].[MonHoc] ([Mamon], [Tenmon], [STC]) VALUES (N'TEE01', N'Hệ quản trị CSDL', 3)
INSERT [dbo].[MonHoc] ([Mamon], [Tenmon], [STC]) VALUES (N'TEE02', N'Quản trị mạng', 3)
INSERT [dbo].[MonHoc] ([Mamon], [Tenmon], [STC]) VALUES (N'TEE03', N'Phân tích thiết kế hệ thống', 2)
GO
INSERT [dbo].[LopHP] ([MalopHP], [TenlopHP], [HK], [Mamon], [Magv]) VALUES (N'LHP01', N'KMT', 3, N'TEE03', N'GV01')
INSERT [dbo].[LopHP] ([MalopHP], [TenlopHP], [HK], [Mamon], [Magv]) VALUES (N'LHP02', N'KTP', 2, N'TEE02', N'GV02')
INSERT [dbo].[LopHP] ([MalopHP], [TenlopHP], [HK], [Mamon], [Magv]) VALUES (N'LHP03', N'KDT', 1, N'TEE01', N'GV03')
GO
INSERT [dbo].[Lop] ([Malop], [Tenlop]) VALUES (N'L101', N'K58.KTP')
INSERT [dbo].[Lop] ([Malop], [Tenlop]) VALUES (N'L102', N'K59.KMT')
INSERT [dbo].[Lop] ([Malop], [Tenlop]) VALUES (N'L103', N'K60.KMT')
GO
INSERT [dbo].[GVCN] ([Malop], [Magv], [HK]) VALUES (N'L101', N'GV01', 2)
INSERT [dbo].[GVCN] ([Malop], [Magv], [HK]) VALUES (N'L102', N'GV02', 1)
INSERT [dbo].[GVCN] ([Malop], [Magv], [HK]) VALUES (N'L103', N'GV03', 3)
GO
INSERT [dbo].[SinhVien] ([Masv], [Hoten], [Ngaysinh]) VALUES (N'K225480106097', N'Nguyen Van A', CAST(N'2004-02-22' AS Date))
INSERT [dbo].[SinhVien] ([Masv], [Hoten], [Ngaysinh]) VALUES (N'K225480106098', N'Nguyen Van B', CAST(N'2000-10-10' AS Date))
INSERT [dbo].[SinhVien] ([Masv], [Hoten], [Ngaysinh]) VALUES (N'K225480106099', N'Nguyen Van C', CAST(N'2002-05-05' AS Date))
GO
INSERT [dbo].[DKMH] ([id_dk], [MalopHP], [Masv], [Diemthi], [Phantramthi]) VALUES (1, N'LHP03', N'K225480106099', 9, 0.6)
INSERT [dbo].[DKMH] ([id_dk], [MalopHP], [Masv], [Diemthi], [Phantramthi]) VALUES (2, N'LHP02', N'K225480106098', 7, 0.6)
INSERT [dbo].[DKMH] ([id_dk], [MalopHP], [Masv], [Diemthi], [Phantramthi]) VALUES (3, N'LHP01', N'K225480106097', 8, 0.6)
GO
INSERT [dbo].[LopSV] ([Malop], [Masv], [Chucvu]) VALUES (N'L101', N'K225480106097', N'Lớp trưởng')
INSERT [dbo].[LopSV] ([Malop], [Masv], [Chucvu]) VALUES (N'L101', N'K225480106098', N'Lớp phó')
INSERT [dbo].[LopSV] ([Malop], [Masv], [Chucvu]) VALUES (N'L101', N'K225480106099', N'Đoàn viên')
GO
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (101, 1, 10)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (102, 2, 9)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (103, 3, 8)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (104, 1, 8)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (105, 1, 10)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (106, 2, 9)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (107, 3, 9)
GO
