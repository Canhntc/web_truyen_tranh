# Hướng dẫn sử dụng WEB TRUYỆN TRANH

## Cấu hình sử dụng
# IDE: Netbean 12.0
# Phiên bản Java: JDK 1.8.0_291
# Phiên bản server: Apache Tomcat 9.0.44

## Kết nối Database
### Bước 0: Mở file TRUYENTRANH.sql
### Bước 1: Khi kết nối tới Microsoft SQL Server Management Studio bằng Window Authentication, ta chọn vào Security ở thanh Object Explorer bên trái
-> Chọn Logins -> Click phải vào sa chọn Properties
### Bước 2: Trong mục General -> chọn Password và Confirm Password là 123
### Bước 3: Thoát kết nối bằng cách click vào biểu tượng disconnect dưới thanh Object Explorer và tiến hành kết nối lại
### Bước 4: Kết nối lại Microsoft SQL Server Management Studio bằng SQL Server Authentication với tài khoản là sa và mật khẩu là 123
### Bước 5: Sau khi kết nối thành công thì bắt đầu chạy file để thực hiện thêm dữ liệu
### Bước 6: Thực hiện một vài lệnh truy vấn đơn giản để kiểm tra dữ liệu đã được thêm vào hay chưa
	Ví dụ: 
	select * from USERS
	select * from COMICS

## Khởi chạy đồ án
### Bước 0: Tiến hành cài đặt các file jar trong folder library_java
### Bước 1: Mở Netbean -> Chọn file ở góc trên cùng bên trái -> Chọn Open Project -> Chọn vào đồ án vừa tải về
### Bước 2: Chọn Projects ở thanh Group -> Click vào dấu cộng cạnh web_truyen_tranh -> Click phải vào Libraries chọn Add JAR/FOLDER... 
-> Lần lượt chọn từng file trong library_java và chọn Open. 
### Bước 3: Click phải vào Libraries chọn Add Library... -> Tìm JSTL và chọn Add Library
### Bước 4: Chọn Services ở thanh Group -> Click dấu cộng ở mục Databases -> Chọn Drivers
	-> Nếu không có Microsoft SQL Server 2005 thì click phải vào Drivers -> New Driver... -> Chọn mssql-jdbc-9.2.1.jre8.jar 
ở folder library_java
	-> Click phải vào Microsoft SQL Server 2005 -> chọn Connect Using 
-> Chọn Host: localhost, Port: 1433, Database WEB_TRUYEN_TRANH, User Name: sa, Password: 123. Tiến hành Test Connection để kiểm tra kết nối.
-> Nếu thành công thì chọn next -> Mục Select schema chọn dbo sau đó nhấn next và nhấn finish.
### Bước 5: CLick phải vào web_truyen_tranh chọn run -> sau đó nhập mật khẩu chạy server Tomcat của người sử dụng. 
-> Nếu thành công thì nhập vào trình duyệt với URL là: http://localhost:8080/webtruyentranh/ để vào trang chủ và khám phá


## Chú ý
### Chú ý 1: Tài khoản super admin là tuongphat và mật khẩu là 123
### Chú ý 2: Nếu tài khoản đăng nhập không có quyền admin thì sẽ bị điều hướng về trang chủ
### Chú ý 3: Từ giao diện người dùng không có liên kết tới trang admin. Muốn vào admin phải nhập URL trực tiếp là: http://localhost:8080/webtruyentranh/adminvà từ trang admin để đi tới các chức năng khác.

## Xử lý lỗi
## Nếu sau khi thực hiện đầy đủ các bước trên và chạy đồ án bị lỗi, và lỗi là: ...WEB-INF does not exist thì vui lòng thực hiện các bước sau
### Bước 1: Tạo lại một project Web Ant, không dùng bất kỳ framework nào.
### Bước 2: Copy các folder "java" trong "src", "guest" | "assets" | "admin" trong "web" từ project đã tải về sang project vừa tạo.
### Bước 3: Thực hiện lại các bước khởi chạy đồ án.
