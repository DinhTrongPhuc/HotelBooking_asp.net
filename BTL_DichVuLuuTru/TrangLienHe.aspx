<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangLienHe.aspx.cs" Inherits="BTL_DichVuLuuTru.TrangLienHe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chillies | Liên Hệ</title>
        <link href="assets/css1/Liên hệ.css?v=2" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
    <header>
        <nav id="navbar">
            <div class="container">
                <h1 class="logo"><a href="TrangChu.aspx">Chillies</a></h1>
            <ul>
                <li><a href="TrangChu.aspx">Trang Chủ</a></li>
                <li><a href="TrangGioiThieu.aspx">Giới Thiệu</a></li>
                <li><a href="Trangphong.aspx">Phòng nghỉ</a></li>
                <li><a href="TrangDatPhong.aspx">Đặt Phòng</a></li>
                <li><a href="TrangDichVu.aspx">Dịch Vụ</a></li>
                <li><a class ="current" href="TrangLienHe.aspx">Liên Hệ</a></li>
                <li><a href="QuanLyDatPhong.aspx">Quản Lý</a></li>
            </ul>
            </div>
        </nav>
        
    </header>
    <section id="contact-form" class="py-3">
        <div class="containder">
            <h1 class="l-heading"><span class="text-primary">Liên hệ</span> với chúng tôi</h1>
            <p>Làm ơn hãy điền thông tin và ý kiến của bạn cho chúng tôi</p>
            <form action="process.php">
                <div class="form-group">
                    <label for="name">Tên</label>
                    <input type="text" name="name" id="name">
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" name="email" id="email">
                </div>
                <div class="form-group">
                    <label for="message">Ý kiến</label>
                    <textarea name="message" id="message"></textarea>
                </div>
                <button type="submit" class="btn">Gửi</button>
            </form>
        </div>
    </section>
    <section id="contact-info" class="bg-dark">
        <div class="container">
            <div class="box1 bg-light">
                <img src="assets/img2/hotel.png" alt="Logo" width="100" height="100">
                <h3>Vị trí</h3>
                <p>
                    phố Lý Thường Kiệt, Hoàn Kiếm
                </p>
            </div>
            <div class="box1 bg-light">
                <img src="assets/img2/dienthoai.png" alt="Logo" width="100" height="100">
                <h3>Điện thoại</h3>
                <p>
                    0123456789
                </p>
            </div>
            <div class="box1 bg-light">
                <img src="assets/img2/email.png" alt="Logo" width="100" height="100">
                <h3>Email</h3>
                <p>
                    Chillieshotel@gmail.com
                </p>
            </div>
        </div>
    </section>
    <div class="clr"></div>
    <footer id="main-footer">
        <p> © [2024] Chillies. Hân hạnh được phục vụ.</p>
    </footer>

    </form>
</body>
</html>
