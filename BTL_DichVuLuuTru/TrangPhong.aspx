<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangPhong.aspx.cs" Inherits="BTL_DichVuLuuTru.TrangPhong" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chillies | Phòng nghỉ</title>
        <link href="assets/css2/styles.css" rel="stylesheet" type="text/css" />

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
                <li><a class ="current" href="Trangphong.aspx">Phòng nghỉ</a></li>
                <li><a href="TrangDatPhong.aspx">Đặt Phòng</a></li>
                <li><a href="TrangDichVu.aspx">Dịch Vụ</a></li>
                <li><a href="TrangLienHe.aspx">Liên Hệ</a></li>
                <li><a href="QuanLyDatPhong.aspx">Quản Lý</a></li>
            </ul>    
        </nav>
    </header>


    <section class="room-section">
        <h1 class="section-title">Danh sách Phòng</h1>
        <div class="room-container">
            <div class="room-card">
                <img src="assets/Images/3.jpg" alt=" Suite" class="room-image">
                <h2 class="room-title">Suite</h2>
                <p class="room-price">Giá: 1,000,000 VND</p>
                <p class="room-status">Trạng Thái: Còn Trống</p>
                <button class="order"><a href="TrangDatPhong.aspx?room=Suite">Đặt Phòng</a></button>
              
            </div>
            <div class="room-card">
                <img src="assets/Images/2.jpg" alt="Phòng Đôi" class="room-image">
                <h2 class="room-title">Phòng Đôi</h2>
                <p class="room-price">Giá: 500,000 VND</p>
                <p class="room-status">Trạng Thái: Còn Trống</p>
                <button class="order"><a href="TrangDatPhong.aspx?room=Phòng Đôi">Đặt Phòng</a></button>
                
            </div>
            <div class="room-card">
                <img src="assets/Images/1.jpg" alt="Phòng Đơn" class="room-image">
                <h2 class="room-title">Phòng Đơn</h2>
                <p class="room-price">Giá: 800,000 VND</p>
                <p class="room-status">Trạng Thái: Còn Trống</p>
                <button class="order"><a href="TrangDatPhong.aspx?room=Phòng Đơn">Đặt Phòng</a></button>
                
            </div>
            <div class="room-card">
                <img src="assets/Images/5.jpg" alt="Phòng sang trọng" class="room-image">
                <h2 class="room-title">Phòng sang trọng</h2>
                <p class="room-price">Giá: 1,500,000 VND</p>
                <p class="room-status">Trạng Thái: Còn Trống</p>
                <button class="order"><a href="TrangDatPhong.aspx?room=Phòng sang trọng">Đặt Phòng</a></button>
                
            </div>
            <div class="room-card">
                <img src="assets/Images/6.jpg" alt="Phòng sang" class="room-image">
                <h2 class="room-title">Phòng sang</h2>
                <p class="room-price">Giá: 1,200,000 VND</p>
                <p class="room-status">Trạng Thái: Còn Trống</p>
                <button class="order"><a href="TrangDatPhong.aspx?room=Phòng sang">Đặt Phòng</a></button>
                
            </div>
            <div class="room-card">
                <img src="assets/Images/7.jpg" alt="Phòng cao cấp" class="room-image">
                <h2 class="room-title">Phòng cao cấp</h2>
                <p class="room-price">Giá: 1,000,000 VND</p>
                <p class="room-status">Trạng Thái: Còn Trống</p>
                <button class="order"><a href="TrangDatPhong.aspx?room=Phòng cao cấp">Đặt Phòng</a></button>
                
            </div>
            <div class="room-card">
                <img src="assets/Images/3.jpg" alt=" Suite" class="room-image">
                <h2 class="room-title">Suite</h2>
                <p class="room-price">Giá: 1,000,000 VND</p>
                <p class="room-status">Trạng Thái: Còn Trống</p>
                <button class="order"><a href="TrangDatPhong.aspx?room=Suite">Đặt Phòng</a></button>
              
            </div>
            <div class="room-card">
                <img src="assets/Images/2.jpg" alt="Phòng Đôi" class="room-image">
                <h2 class="room-title">Phòng Đôi</h2>
                <p class="room-price">Giá: 500,000 VND</p>
                <p class="room-status">Trạng Thái: Còn Trống</p>
                <button class="order"><a href="TrangDatPhong.aspx?room=Phòng Đôi">Đặt Phòng</a></button>
                
            </div>
            <div class="room-card">
                <img src="assets/Images/1.jpg" alt="Phòng Đơn" class="room-image">
                <h2 class="room-title">Phòng Đơn</h2>
                <p class="room-price">Giá: 800,000 VND</p>
                <p class="room-status">Trạng Thái: Còn Trống</p>
                <button class="order"><a href="TrangDatPhong.aspx?room=Phòng Đơn">Đặt Phòng</a></button>
                
            </div>
            <div class="room-card">
                <img src="assets/Images/5.jpg" alt="Phòng sang trọng" class="room-image">
                <h2 class="room-title">Phòng sang trọng</h2>
                <p class="room-price">Giá: 1,500,000 VND</p>
                <p class="room-status">Trạng Thái: Còn Trống</p>
                <button class="order"><a href="TrangDatPhong.aspx?room=Phòng sang trọng">Đặt Phòng</a></button>
                
            </div>
            <div class="room-card">
                <img src="assets/Images/6.jpg" alt="Phòng sang" class="room-image">
                <h2 class="room-title">Phòng sang</h2>
                <p class="room-price">Giá: 1,200,000 VND</p>
                <p class="room-status">Trạng Thái: Còn Trống</p>
                <button class="order"><a href="TrangDatPhong.aspx?room=Phòng sang">Đặt Phòng</a></button>
                
            </div>
            <div class="room-card">
                <img src="assets/Images/7.jpg" alt="Phòng cao cấp" class="room-image">
                <h2 class="room-title">Phòng cao cấp</h2>
                <p class="room-price">Giá: 1,000,000 VND</p>
                <p class="room-status">Trạng Thái: Còn Trống</p>
                <button class="order"><a href="TrangDatPhong.aspx?room=Phòng cao cấp">Đặt Phòng</a></button>
                
            </div>
        </div>
    </section>
        <footer id="main-footer">
    <p> © [2024] Chillies. Hân hạnh được phục vụ.</p>
</footer>
    </form>
</body>
</html>
