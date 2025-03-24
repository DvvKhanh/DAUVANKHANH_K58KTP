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
   ![image](https://github.com/user-attachments/assets/3d67f181-60c0-4194-b963-adc483e8cdfe)

### 2. Cách tạo bảng trong Database QLSV
  + Chọn Database QLSV -> Nhấp chuột phải vào Table -> Chọn New -> Chọn Table...
   ![Screenshot 2025-03-21 205704](https://github.com/user-attachments/assets/465d6a02-1658-4b5c-95e6-f9eb58b7838f)
   
  #### 2.1 Bảng SinhVien(#masv,hoten,NgaySinh)
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

  ## + Làm tương tự với các bảng còn lại theo yêu cầu đề bài.
    
  #### 2.2 Bảng Lop(#maLop,tenLop)
    
  ![image](https://github.com/user-attachments/assets/58d778c6-72e2-4e6c-b3e2-50969d9ed8c3)

  ![image](https://github.com/user-attachments/assets/02e9cc50-af30-4f71-896d-ab567a4280ee)

  + Ctrl+S để lưu bảng
    
  ![image](https://github.com/user-attachments/assets/74ad5b6c-52cb-4190-9fb0-dbd33ac980aa)

  #### 2.3 Bảng GVCN(#@maLop,#@magv,#HK)

  ![image](https://github.com/user-attachments/assets/a1a1d960-6c90-4992-9699-ac84b813769c)

  ![image](https://github.com/user-attachments/assets/3c2a8f5b-6c24-43e0-81f3-f44d0c86ff1b)

  + Ctrl+S để lưu bảng 

  ![image](https://github.com/user-attachments/assets/6654a0d5-a692-4ef4-aff4-9c347975a000)

  #### 2.4 Bảng LopSV(#@maLop,#@maSV,ChucVu)

  ![image](https://github.com/user-attachments/assets/db410490-3dfd-4a7e-ba66-70ceb2edc18c)

  ![image](https://github.com/user-attachments/assets/b5a63c57-f81d-4682-9373-88aa62a232c1)

  + Ctrl+S để lưu bảng
   ![image](https://github.com/user-attachments/assets/f04a91e1-687f-4aa8-999d-9df3efca4572)

  #### 2.5 Bảng GiaoVien(#magv,hoten,NgaySinh,@maBM)
  ![image](https://github.com/user-attachments/assets/197d2db3-a27e-428a-a4c3-beacc4f99d24)

  ![image](https://github.com/user-attachments/assets/34108364-9b4c-4f66-96e3-e71d5fff9507)

  ![Screenshot 2025-03-21 213501](https://github.com/user-attachments/assets/6a84eacb-9fbf-489c-87c3-8a8d82957b50)

  #### 2.6 Bảng BoMon(#MaBM,tenBM,@maKhoa)
  ![image](https://github.com/user-attachments/assets/c85e84aa-865b-4698-8711-4c524fa8bdc4)

  ![Screenshot 2025-03-21 215946](https://github.com/user-attachments/assets/5130c4c7-db5d-474c-b7ed-d9157f043375)

  ![Screenshot 2025-03-21 220005](https://github.com/user-attachments/assets/7b9b22b7-0d63-40ee-a038-952354a687f9)

  #### 2.7 Bảng Khoa(#maKhoa,tenKhoa)
  ![image](https://github.com/user-attachments/assets/eb4bd02f-349c-45ae-8873-9e2754969b45)

  ![image](https://github.com/user-attachments/assets/ec3b6cea-5109-4eac-b575-41df545051db)

  ![image](https://github.com/user-attachments/assets/2dbeb596-fa22-452d-bd53-69e8c677a93c)

  #### 2.8 Bảng MonHoc(#mamon,Tenmon,STC)
  ![image](https://github.com/user-attachments/assets/b5056b50-cbe9-4eb5-90ab-7098b0e3b837)

  ![Screenshot 2025-03-21 220808](https://github.com/user-attachments/assets/45f0066e-201f-4cd7-ad73-a6936111ca0b)

  ![Screenshot 2025-03-21 220828](https://github.com/user-attachments/assets/8b137208-00a6-4c10-ae5b-1d509dc0c5f6)

  #### 2.9 Bảng LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  ![image](https://github.com/user-attachments/assets/961c62cd-731f-4b46-9763-68607613f172)

  ![Screenshot 2025-03-21 221139](https://github.com/user-attachments/assets/caf04c49-bb58-4291-ad12-5d7ae210256e)

  ![Screenshot 2025-03-21 221202](https://github.com/user-attachments/assets/8cf1f0d2-ec21-4c24-93b5-5a542c9881d6)

  #### 2.10 Bảng DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)
  ![image](https://github.com/user-attachments/assets/87eac70d-a2cb-4568-8474-a51d9169f260)

  ![Screenshot 2025-03-21 221941](https://github.com/user-attachments/assets/ce62541a-ec9f-413e-8a42-e267262ce84a)

  ![Screenshot 2025-03-21 222002](https://github.com/user-attachments/assets/d8a88301-b9ec-44af-9efc-2557e50b331d)

  + Sau khi tạo xong tất cả các bảng: Nhấn chuột phải vào Table -> Chọn Refresh để hiển thị tất cả các bảng vừa tạo
    
  ![image](https://github.com/user-attachments/assets/44acfec4-18fc-4073-97c4-d15fdd9342d6)

  + Kết quả hiển thị
    
  ![image](https://github.com/user-attachments/assets/5b2e4834-6fe1-4f04-b0e3-578455d3ca3a)


  ### 3. Thiết lập PK, FK(s) và CK(s)
  
  #### Thiết lập điều kiện cho Ngaysinh (Bảng SinhVien) → Check Constraints: Ràng buộc kiểm tra giúp đảm bảo dữ liệu nhập vào bảng phải thỏa mãn điều kiện nhất định.
  ![image](https://github.com/user-attachments/assets/8ae6042d-d0f3-4d55-874d-783dbdc4f544)

  ![image](https://github.com/user-attachments/assets/5f1a5a90-da9a-458a-a34f-e2dd5f57f147)

  ![image](https://github.com/user-attachments/assets/1c4b6229-cec1-424b-a3d5-963a961e11a9)

  ![image](https://github.com/user-attachments/assets/dc581b27-b3da-4648-9b25-dd8397d3bcc9)

  + Kiểm tra điều kiện:
    
  ![image](https://github.com/user-attachments/assets/bce2d80b-6fa5-4d3e-955b-5ce796381646)

  ![Screenshot 2025-03-24 162040](https://github.com/user-attachments/assets/ea62fb0a-bea1-4c8b-87f1-98a9f81b9d70)

  ![image](https://github.com/user-attachments/assets/df3424d0-2c4c-47c1-a668-57cface1d67a)
  → Như trong hình, em nhập Ngaysinh là '2025-03-25' không thỏa mãn điều kiện vì em vừa đặt điều kiện là: Ngaysinh >= '1995-01-01'AND Ngaysinh <= getdate() 
    (getdate có thể hiểu là <= ngày hiện tại) nên là không thoản mãn điều kiện.(Hôm nay ngày 24/03/2025)
    
  #### 3.1 Tạo FK cho bảng GVCN
  + Khóa ngoại (Foreign Key - FK) được dùng để tăng tính tham chiếu trong cơ sở dữ liệu SQL Server. Khóa ngoại nghĩa là giá trị trong bảng này phải xuất hiện trong bảng khác.
  + Trong cửa sổ thiết kế bảng -> Nhấn chuột phải vào vùng trống -> Chọn Relationships
    
  ![Screenshot 2025-03-22 222625](https://github.com/user-attachments/assets/b775f8ce-719b-4021-bc78-04fc06a00308)

  + FK_GVCN_Lop: Khóa ngoại trong bảng GVCN tham chiếu đến khóa chính của bảng Lop.

  ![image](https://github.com/user-attachments/assets/85012198-3f96-4aaa-83b7-74155c6f3340)

  + Khóa chính Malop trong bảng Lop được liên kết với khóa ngoại Malop trong bảng GVCN để đảm bảo tính toàn vẹn dữ liệu.
  ![image](https://github.com/user-attachments/assets/34792493-56c8-45f7-a868-9ff00348a6a0)

  ![image](https://github.com/user-attachments/assets/e1c08d85-d579-4a45-baaa-1d20afb55b81)

  ![image](https://github.com/user-attachments/assets/4f3733dd-8ff6-4863-b214-bb8b321acbeb)

  ![image](https://github.com/user-attachments/assets/16b06720-0081-4fa5-96cc-c6a7624dd430)

  + Thiết lập điều kiện cho HK (HK >= 1 AND HK <= 3)
  ![Screenshot 2025-03-24 172357](https://github.com/user-attachments/assets/4ff727a4-cb19-42d2-b1ce-04d2e9c89b8d)


  ## + Làm tương tự với các bảng khác.

  #### 3.2 Tạo FK cho bảng LopSV
  
  ![image](https://github.com/user-attachments/assets/6831b210-eb03-457e-86aa-5a46e8c4bf62)

  ![image](https://github.com/user-attachments/assets/9a733388-77d0-49a1-b5fb-f19f6d748eca)

  + Nhấn Close -> ctrl+S để lưu
  ![image](https://github.com/user-attachments/assets/589c6ce9-b7ef-4918-9f17-4ae0120f10f6)

  #### 3.3 Tạo FK cho bảng GiaoVien

  ![image](https://github.com/user-attachments/assets/b02932c1-0f30-4188-b162-a5c1d60f04a2)

  + Thiết lập điều kiện cho Ngaysinh (Ngaysinh >='1970-01-01' AND Ngaysinh<='2002-12-31')
  ![Screenshot 2025-03-24 174439](https://github.com/user-attachments/assets/c7a0da23-be1a-42f0-bbf0-ec9ed3e48697)
  
  #### 3.4 Tạo FK cho bảng BoMon

  ![image](https://github.com/user-attachments/assets/7338e51b-6747-4fc7-b38b-29e35e2b3dd8)

  #### 3.5 Tạo FK cho bảng LopHP

  ![image](https://github.com/user-attachments/assets/f395a4be-8f1d-41c2-9b3c-85dfffcc8c00)

  ![image](https://github.com/user-attachments/assets/7632e21f-5408-44e3-9299-cc6c6cf7c30d)

  + Nhấn Close -> Ctrl+S để lưu lại
  ![image](https://github.com/user-attachments/assets/75a1c5c6-87e4-4b6c-ab37-b7748a2ab8a6)

  + Thiết lập điều kiện cho HK (HK >= 1 AND HK <= 3)
  ![image](https://github.com/user-attachments/assets/e8950343-9ff2-49e3-a589-a741634d817a)

  #### 3.6 Tạo FK cho bảng DKMH

  ![image](https://github.com/user-attachments/assets/a329de82-d3fc-459b-889e-26e37ecbd804)

  ![image](https://github.com/user-attachments/assets/a5a35253-cfe7-452b-b0ef-9c443a913df1)

  + Nhấn Close -> Ctrl+S để lưu lại
  ![image](https://github.com/user-attachments/assets/5b8f80ea-ce26-486e-9265-b4788122361f)

  + Thiết lập điều kiện cho DiemTP (DiemTP >= 0 AND DiemTP <= 10 )
  ![image](https://github.com/user-attachments/assets/342c5fb7-0f64-456c-a3fc-c8ce5c4f9079)

  + Thiết lập điều kiện cho Diemthi (Diemthi >= 0 AND Diemthi <= 10)
  ![image](https://github.com/user-attachments/assets/5339516b-9497-4700-aa1e-34d0c3a3ca8e)

  + Thiết lập điều kiện cho Phantramthi (Phantramthi >= 0 AND Phantramthi <= 100)
  ![image](https://github.com/user-attachments/assets/76aa206d-91b1-40a8-a77a-a8afeb208cb7)

  #### Thiết lập điều kiện cho STC trong bảng MonHoc (STC >= 1 AND STC <= 4)
  ![image](https://github.com/user-attachments/assets/54565a5a-92de-45db-a6b7-3dcc789f3076)

  ### 4. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. Lưu tất cả các lệnh SQL trong file: Script_DML.sql
  






  

  










  











  




   
   
