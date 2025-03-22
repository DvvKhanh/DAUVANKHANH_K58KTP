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
### Cách tạo Database mới
    + Chọn Database -> Nhấp chuột phải chọn New Database
   ![Screenshot 2025-03-21 205521](https://github.com/user-attachments/assets/b421b1cf-ad75-4cfe-899b-98aef36c560d)

### Tạo Database QLSV
   ![Untitled](https://github.com/user-attachments/assets/a4409155-565d-43fa-a793-fb0c4b8b9b1f)

### Cách tạo bảng trong Database QLSV
    + Chọn Database QLSV -> Chọn Table -> Nhấp chuột phải chọn New -> Table...
   ![Screenshot 2025-03-21 205704](https://github.com/user-attachments/assets/465d6a02-1658-4b5c-95e6-f9eb58b7838f)
   
  #### 1. Bảng SinhVien

![Untitled](https://github.com/user-attachments/assets/cdf87cf3-d159-4355-a773-be1f0adccea4)

      
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
            

   
   
