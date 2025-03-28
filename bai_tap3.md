# Bài tập về nhà 03 của sinh viên : Đậu Văn Khánh - K225480106099 - Môn Hệ quản trị CSDL
## BÀI TẬP VỀ NHÀ 03 - MÔN HỆ QUẢN TRỊ CSDL:

## DEADLINE: 23H59 NGÀY 30/03/2025

## ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 2)

## BÀI TOÁN: Sửa bài 2 để có csdl như sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#id_dk, @maLopHP,@maSV,DiemThi,PhanTramThi)
  + Diem(#id, @id_dk, diem)

## YÊU CẦU:
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.

## HÌNH THỨC LÀM BÀI:
1. Tạo file bai_tap3.md trên cùng repository của bài tập 2:
   Nội dung chứa đề bài, và ảnh chụp quá trình thao tác các yêu cầu khác.
2. Chụp ảnh quá trình sửa bảng DKMH và quá trình thêm bảng Diem, chú ý @ là FK, và thêm CK cho trường điểm
3. Hình sau khi chụp paste trực tiếp vào file bai_tap3.md trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. dùng tính năng: Tasks -> Generate Scrips => sinh ra file: bai_tap_3_schema.sql  (chỉ chứa lệnh tạo cấu trúc của db)
5. dùng tính năng: Tasks -> Generate Scrips => advance => Check Data only => sinh ra file: bai_tap_3_data.sql  (chỉ chứa dữ liệu đã nhập demo vào db)
6. Tạo diagram mô tả các PK, FK của db. Chụp hình kết quả các bảng có các đường nối 1-->nhiều
7. upload 2 file  bai_tap_3_schema.sql và bai_tap_3_data.sql lên repository.
8. nhớ commit để save nội dung file bai_tap3.md

## Chú ý:
1. Được phép dùng AI và tham khảo bài của bạn, nhưng phải có sự khác biệt đáng kể.
2. Nghiêm cấm copy, clone. Tham khảo và copy là 2 việc khác hẳn nhau. Thầy có tool để check!
3. Bài làm phải có dấu ấn cá nhân (hãy sáng tạo và biết cách bảo vệ mình nếu bạn là bản chính)
4. Kết quả AI phải phù hợp với yêu cầu, nếu quá sai lệch <=> sv ko đọc => Cấm thi
5. Nên nhớ: cấm thi là ko có vùng cấm và thầy chưa bao giờ nói đùa về việc cấm thi.

## 1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
+ Sửa bảng DKMH: Xóa trường DiemTP, thêm trường id_dk và đặt id_dk làm khóa chính (PK)
  
![image](https://github.com/user-attachments/assets/1e63c17f-c629-4714-b931-dae7493f5850)

+ Thêm bảng Diem
  
![image](https://github.com/user-attachments/assets/96d08030-4f6c-42df-96b4-b560a8983069)

+ Đặt id làm khóa chính (PK)
![Screenshot 2025-03-28 181417](https://github.com/user-attachments/assets/2825f74b-156f-4cc2-9fb9-b341e8909606)

+ Thêm khóa ngoại (FK) cho bảng Diem
![image](https://github.com/user-attachments/assets/469b708f-e7a1-4861-a77a-f6ae2102123d)

![image](https://github.com/user-attachments/assets/945596f6-8c5b-4007-b969-b3ea5e3e7b9e)

![image](https://github.com/user-attachments/assets/244e3881-7db7-4693-a14b-1e2892bda2fc)

![image](https://github.com/user-attachments/assets/ca53b14d-9c55-42c0-bd56-3dab9217d839)

+ Thêm điều kiện (CK) cho bảng Diem: diem >= 0 AND diem <= 10
![image](https://github.com/user-attachments/assets/ed9dbb65-7ea1-4344-844d-f129ccb35389)

+ Kiểm tra điều kiện
![image](https://github.com/user-attachments/assets/7f297a27-98bd-4a7d-a9f5-25c33c72a8cf)

## 2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
☘ Bảng Sinh Vien

![image](https://github.com/user-attachments/assets/935d5825-a23d-4e01-9d82-5346164a4d07)

![image](https://github.com/user-attachments/assets/be96c3e5-5234-4f75-b13f-4d8cbf2a3888)

☘ Bảng Lop

![image](https://github.com/user-attachments/assets/29c8d543-6642-4d97-8eb7-d63368b1589f)

☘ Bảng GVCN

![image](https://github.com/user-attachments/assets/f022d9bb-b5ab-485c-9bae-9e35fe60ef3b)

☘ Bảng LopSV

![image](https://github.com/user-attachments/assets/c0857f8a-0885-4b82-8875-b9b133c95920)

☘ Bảng GiaoVien

![image](https://github.com/user-attachments/assets/3736448a-37f5-4a6f-a195-81aad61dae00)

☘ Bảng BoMon

![image](https://github.com/user-attachments/assets/745268e7-e6b0-49ef-882e-f3e2340662a4)

☘ Bảng Khoa

![image](https://github.com/user-attachments/assets/1e2e3231-2185-4b54-986f-37597a0ddc07)

☘ Bảng MonHoc

![image](https://github.com/user-attachments/assets/d6406836-5d42-454e-b077-8487132e1ae1)

☘ Bảng LopHP

![image](https://github.com/user-attachments/assets/1422e998-250f-4925-be3d-cb5c267efc27)

☘ Bảng DKMH

![image](https://github.com/user-attachments/assets/a84a87a2-111f-43b0-95e9-3d4317866e6e)

☘ Bảng Diem

![image](https://github.com/user-attachments/assets/b66c3a65-dff7-4b84-848c-3e525f30ebca)

## 3. Tạo diagram mô tả các PK, FK của db. Chụp hình kết quả các bảng có các đường nối 1-->nhiều
+ Thao tác để tạo diagram mô tả các PK, FK của db
![image](https://github.com/user-attachments/assets/3bd3b1d9-8bbd-4000-a0cd-af5de0192335)

![Screenshot 2025-03-28 214521](https://github.com/user-attachments/assets/cd6caab2-424a-4c94-bb29-416c9c15360b)

+ Kết quả thu được
![Screenshot 2025-03-28 083901](https://github.com/user-attachments/assets/8c42d846-5e87-45c7-9c2a-b5a45bdce829)

## 4. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.





