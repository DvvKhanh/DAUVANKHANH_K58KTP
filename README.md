# Bài tập 02 của SV: K225480106099 - Đậu Văn Khánh - Môn Hệ quản trị CSDL

## BÀI TẬP VỀ NHÀ 02 - MÔN HỆ QUẢN TRỊ CSDL:

## DEADLINE: 23H59 NGÀY 25/03/2025

## ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 1)
1. Đã cài đặt SQL Server 2022 Dev.
2. Đã cài đặt SQL Managerment Studio bản mới nhất.
3. Đã kết nối từ SQL Managerment Studio vào SQL Server.
4. Đã có tài khoản github, biết cách tạo repository(kho lưu trữ) cho phép truy cập public.

## BÀI TOÁN:
- Tạo csdl quan hệ với tên QLSV gồm các bảng sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)

## YÊU CẦU:
1. Thực hiện các hành động sau trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán:
  + Tạo database mới, mô tả các tham số(nếu có) trong quá trình.
  + Tạo các bảng dữ liệu với các trường như mô tả, chọn kiểu dữ liệu phù hợp với thực tế (tự tìm hiểu)
  + Mỗi bảng cần thiết lập PK, FK(s) và CK(s) nếu cần thiết. (chú ý dấu # và @: # là chỉ PK, @ chỉ FK)
2. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql

## HÌNH THỨC LÀM BÀI:
1. Tạo repository mới, tạo file readme.md (có hướng dẫn trên zalo group)
2. Sinh viên thao tác trên máy tính cá nhân, chụp màn hình quá trình làm, chỉ cần chụp active window, thi thoảng chụp full màn hình để thấy sự cá nhân hoá.
3. Hình sau khi chụp paste trực tiếp vào file readme trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. upload các file liên quan: Script_DML.sql
5. Update link của repository vào cột bài tập 2 trên file excel online của thầy (đã ghim link trên zalo group)

## Chú ý:
1. Được phép dùng AI và tham khảo bài của bạn, nhưng phải có sự khác biệt đáng kể.
2. Nghiêm cấm copy, clone. Tham khảo và copy là 2 việc khác hẳn nhau. Thầy có tool để check!
3. Bài làm phải có dấu ấn cá nhân (hãy sáng tạo và biết cách bảo vệ mình nếu bạn là bản chính)
4. Kết quả AI phải phù hợp với yêu cầu, nếu quá sai lệch <=> sv ko đọc => Cấm thi
5. Nên nhớ: cấm thi là ko có vùng cấm và thầy chưa bao giờ nói đùa về việc cấm thi.

## BÀI LÀM:
### 1. Cách tạo Database mới

   ![image](https://github.com/user-attachments/assets/898b5bc7-4ffa-4bfb-9f95-24a04bd852b1)

  + Tạo Database QLSV
   ![Untitled](https://github.com/user-attachments/assets/a4409155-565d-43fa-a793-fb0c4b8b9b1f)

### 2. Cách tạo bảng trong Database QLSV
  + Chọn Database QLSV -> Nhấp chuột phải vào Table -> Chọn New -> Chọn Table...
   ![Screenshot 2025-03-21 205704](https://github.com/user-attachments/assets/465d6a02-1658-4b5c-95e6-f9eb58b7838f)
   
  #### 2.1 Bảng SinhVien
  + Bảng SinhVien với các trường: Masv, Hoten, Ngaysinh
  + Kiểu dữ liệu:
    - Masv: varchar(13) -> kiểu dữ liệu varchar có chuỗi ký tự tối đa là 13 ký tự
    - Hoten: nvarchar(50) -> kiểu dữ liệu nvarchar có chuỗi ký tự tối đa là 50 ký tự
    - Ngaysinh: date -> kiểu dữ liệu ngày tháng
  + Phân biệt giữa kiểu dữ liệu varchar và nvarchar:
    -  Varchar lưu trữ các ɡiá trị ASCII và nvarchar lưu các ký tự Unicode.
    -  Varchar ѕử dụnɡ một byte cho mỗi ký tự tronɡ khi nvarchar ѕử dụnɡ hai byte cho mỗi ký tự.
    -  Varchar [(n)] chứa các ký tự khônɡ phải là ký tự Unicode với độ dài thay đổi và Nvarchar [(n)] lưu trữ các ký tự Unicode với chiều dài thay đổi.
    -  Varchar có thể lưu trữ tối đa 8000 ký tự khônɡ phải Unicode và nvarchar lưu trữ tối đa 4000 ký tự Unicode hoặc khônɡ phải Unicode. 
       Varchar là tốt hơn để ѕử dụnɡ ở nhữnɡ nơi có biến với các ký tự khônɡ phải là ký tự Unicode. Nvarchar được ѕử dụnɡ ở nhữnɡ nơi có nhiều ký tự Unicode khác nhau.
    -  Kích thước lưu trữ của varchar là ѕố byte bằnɡ với ѕố ký tự cộnɡ với hai byte được dành riênɡ cho bù đắp. Nvarchar ѕử dụnɡ ѕố byte bằnɡ với hai lần ѕố ký tự cộnɡ với hai byte được dành riênɡ cho bù đắp.
    -  Tất cả các hệ điều hành hiện đại và các nền tảnɡ phát triển ѕử dụnɡ Unicode nội bộ. Vì vậy, nvarchar được ѕử dụnɡ rất nhiều thay vì varchar để tránh chuyển đổi các kiểu dữ liệu.
      
  ![Untitled](https://github.com/user-attachments/assets/cdf87cf3-d159-4355-a773-be1f0adccea4)

  + Chọn Masv làm khóa chính: Click chuột phải vào hàng Masv -> Chọn Set Primary Key. Khi chọn Masv làm khóa chính thì cột Allow Nulls của Masv không được tích vì không được để trống(not NULL).

  ![image](https://github.com/user-attachments/assets/1c1daef5-9c48-425e-9485-edba2726fb7f)
  
  + Ctrl+S để lưu tên bảng là SinhVien
  ![image](https://github.com/user-attachments/assets/0a1c9e26-bd84-4390-ba27-f61fa7271941)

  + Tiếp tục nhấp chuột phải vào Table -> Chọn New -> Chọn Table... để tạo bảng mới
  ![image](https://github.com/user-attachments/assets/04fd9c27-46fa-42cc-baf5-4464b369d71d)

  + Làm tương tự với các bảng còn lại theo yêu cầu đề bài
    
  #### 2.2 Bảng Lop
    
  ![image](https://github.com/user-attachments/assets/58d778c6-72e2-4e6c-b3e2-50969d9ed8c3)

    
  ![image](https://github.com/user-attachments/assets/02e9cc50-af30-4f71-896d-ab567a4280ee)

  + Ctrl+S để lưu bảng
    
  ![image](https://github.com/user-attachments/assets/74ad5b6c-52cb-4190-9fb0-dbd33ac980aa)


  #### 2.3 Bảng GVCN

  ![image](https://github.com/user-attachments/assets/a1a1d960-6c90-4992-9699-ac84b813769c)

  ![image](https://github.com/user-attachments/assets/3c2a8f5b-6c24-43e0-81f3-f44d0c86ff1b)

  + Ctrl+S để lưu bảng 

  ![image](https://github.com/user-attachments/assets/6654a0d5-a692-4ef4-aff4-9c347975a000)

  #### 2.4 Bảng LopSV

  ![image](https://github.com/user-attachments/assets/db410490-3dfd-4a7e-ba66-70ceb2edc18c)

  ![image](https://github.com/user-attachments/assets/b5a63c57-f81d-4682-9373-88aa62a232c1)

  + Ctrl+S để lưu bảng
   ![image](https://github.com/user-attachments/assets/f04a91e1-687f-4aa8-999d-9df3efca4572)

  #### 2.5 Bảng GiaoVien
  ![image](https://github.com/user-attachments/assets/197d2db3-a27e-428a-a4c3-beacc4f99d24)

  ![image](https://github.com/user-attachments/assets/34108364-9b4c-4f66-96e3-e71d5fff9507)

  ![Screenshot 2025-03-21 213501](https://github.com/user-attachments/assets/6a84eacb-9fbf-489c-87c3-8a8d82957b50)

  #### 2.6 Bảng BoMon
  ![image](https://github.com/user-attachments/assets/c85e84aa-865b-4698-8711-4c524fa8bdc4)

  ![Screenshot 2025-03-21 215946](https://github.com/user-attachments/assets/5130c4c7-db5d-474c-b7ed-d9157f043375)

  ![Screenshot 2025-03-21 220005](https://github.com/user-attachments/assets/7b9b22b7-0d63-40ee-a038-952354a687f9)

  #### 2.7 Bảng Khoa
  ![image](https://github.com/user-attachments/assets/eb4bd02f-349c-45ae-8873-9e2754969b45)

  ![image](https://github.com/user-attachments/assets/ec3b6cea-5109-4eac-b575-41df545051db)

  ![image](https://github.com/user-attachments/assets/2dbeb596-fa22-452d-bd53-69e8c677a93c)

  #### 2.8 Bảng MonHoc
  ![image](https://github.com/user-attachments/assets/b5056b50-cbe9-4eb5-90ab-7098b0e3b837)

  ![Screenshot 2025-03-21 220808](https://github.com/user-attachments/assets/45f0066e-201f-4cd7-ad73-a6936111ca0b)

  ![Screenshot 2025-03-21 220828](https://github.com/user-attachments/assets/8b137208-00a6-4c10-ae5b-1d509dc0c5f6)

  #### 2.9 Bảng LopHP
  ![image](https://github.com/user-attachments/assets/961c62cd-731f-4b46-9763-68607613f172)

  ![Screenshot 2025-03-21 221139](https://github.com/user-attachments/assets/caf04c49-bb58-4291-ad12-5d7ae210256e)

  ![Screenshot 2025-03-21 221202](https://github.com/user-attachments/assets/8cf1f0d2-ec21-4c24-93b5-5a542c9881d6)

  #### 2.10 Bảng DKMH
  ![image](https://github.com/user-attachments/assets/87eac70d-a2cb-4568-8474-a51d9169f260)

  ![Screenshot 2025-03-21 221941](https://github.com/user-attachments/assets/ce62541a-ec9f-413e-8a42-e267262ce84a)

  ![Screenshot 2025-03-21 222002](https://github.com/user-attachments/assets/d8a88301-b9ec-44af-9efc-2557e50b331d)

  + Sau khi tạo xong tất cả các bảng: Nhấn chuột phải vào Table -> Chọn Refresh để hiển thị tất cả các bảng vừa tạo
    
  ![image](https://github.com/user-attachments/assets/44acfec4-18fc-4073-97c4-d15fdd9342d6)

  + Kết quả hiển thị
    
  ![image](https://github.com/user-attachments/assets/5b2e4834-6fe1-4f04-b0e3-578455d3ca3a)


  ### 3. Thiết lập PK, FK(s) và CK(s)








  











  




   
   
