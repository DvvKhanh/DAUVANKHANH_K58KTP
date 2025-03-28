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

## 1.Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
+ Sửa bảng DKMH: Xóa thuộc tính DiemTP, thêm thuộc tính id_dk và đặt id_dk làm khóa chính (PK)
  
![image](https://github.com/user-attachments/assets/1e63c17f-c629-4714-b931-dae7493f5850)

+ Thêm bảng Diem và đặt id làm khóa chính (PK)
![image](https://github.com/user-attachments/assets/73c22dd8-bbd7-48e2-957d-85fb127a4303)

+ Thêm khóa ngoại (FK) cho bảng Diem
![image](https://github.com/user-attachments/assets/77faec88-9b93-4646-96b8-a7107a973bc0)

## 2.Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
☘ Bảng Sinh Vien

![image](https://github.com/user-attachments/assets/be96c3e5-5234-4f75-b13f-4d8cbf2a3888)

☘ Bảng Lop

![image](https://github.com/user-attachments/assets/29c8d543-6642-4d97-8eb7-d63368b1589f)

☘ Bảng GVCN

![image](https://github.com/user-attachments/assets/f022d9bb-b5ab-485c-9bae-9e35fe60ef3b)

☘ Bảng LopSV

![image](https://github.com/user-attachments/assets/98f175fc-a7cc-46ef-867d-ff686961c1d9)

☘ Bảng GiaoVien

![image](https://github.com/user-attachments/assets/2e7be0d3-74cb-457a-8716-b4307395d063)

☘ Bảng BoMon

![image](https://github.com/user-attachments/assets/745268e7-e6b0-49ef-882e-f3e2340662a4)

☘ Bảng Khoa

![image](https://github.com/user-attachments/assets/1e2e3231-2185-4b54-986f-37597a0ddc07)

☘ Bảng MonHoc

![image](https://github.com/user-attachments/assets/aff43ab0-1442-4398-9aa4-43185d496522)

☘ Bảng LopHP

![image](https://github.com/user-attachments/assets/1422e998-250f-4925-be3d-cb5c267efc27)

☘ Bảng DKMH

![image](https://github.com/user-attachments/assets/fa6adfe4-28a1-4049-be9a-cba55d828817)

☘ Bảng Diem

![image](https://github.com/user-attachments/assets/b66c3a65-dff7-4b84-848c-3e525f30ebca)







