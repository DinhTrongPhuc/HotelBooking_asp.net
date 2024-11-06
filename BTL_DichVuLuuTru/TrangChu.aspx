<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="BTL_DichVuLuuTru.TrangChu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chillies | Trang chủ</title>
    <link href="assets/style.css?v=7" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
       <header>
        <nav id="navbar">
            <div class="container">
                <h1 class="logo"><a href="TrangChu.aspx">Chillies</a></h1>
            <ul>
                <li><a class ="current" href="TrangChu.aspx">Trang Chủ</a></li>
                <li><a href="TrangGioiThieu.aspx">Giới Thiệu</a></li>
                <li><a href="Trangphong.aspx">Phòng nghỉ</a></li>
                <li><a href="TrangDatPhong.aspx">Đặt Phòng</a></li>
                <li><a href="TrangDichVu.aspx">Dịch Vụ</a></li>
                <li><a href="TrangLienHe.aspx">Liên Hệ</a></li>
                <li><a href="QuanLyDatPhong.aspx">Quản Lý</a></li>
            </ul>
            </div>
        </nav>
        <div id="showcase">
            <div class="container">
                <div class="showcase-content">
                    <h1><span class ="text-primary">Tận hưởng</span> kì nghỉ của bạn</h1>
                    <p class ="lead"> </p>
                    <a class = "btn" href="TrangGioithieu.aspx">Giới thiệu về Chillies</a>
                </div>
            </div>
        </div>
    </header>
    <section id="home-info" class="bg-dark">
        <div class="info-img"></div>
        <div class="info-content">
            <h2><span class="text-primary">Thông tin</span> về khách sạn</h2>
            <p>
                Khách Sạn Chillies được thành lập vào năm 2010.  
                 Nằm ở khu vực trung tâm thủ đô Hà Nội, cách Hồ Hoàn Kiếm chỉ vài phút đi bộ, 
                 với vị trí thuận tiện để du khách khám phá các điểm tham quan nổi tiếng như Khu phố cổ Hà Nội, Nhà hát lớn, 
                 và Văn Miếu - Quốc Tử Giám.
            </p>
            <a href="TrangGioiThieu.aspx" class="btn btn-light">Tìm hiểu thêm</a>
        </div>
    </section>
    <section id="features">
        <div class="box bg-light">
            <img src="assets/img2/hotel.png" alt="Logo" width="100" height="100">
            <h3>Vị trí</h3>
            <p>
                Đây là khu vực trung tâm và rất gần với các địa điểm lịch sử, văn hóa, và khu vực ẩm thực đặc sắc của Hà Nội.
            </p>
        </div>
        <div class="box bg-primary">
            <img src="assets/img2/restaurant.png" alt="Logo" width="100" height="100">
            <h3>Nhà hàng</h3>
            <p>
                Nhà hàng phục vụ ẩm thực Việt Nam và quốc tế, với thực đơn phong phú từ các món ăn truyền thống Bắc Bộ đến các món Âu – Á.
            </p>
        </div>
        <div class="box bg-light">
            <img src="assets/img2/bar.png" alt="Logo" width="100" height="100">
            <h3>Sky bar</h3>
            <p>
                Nằm trên tầng thượng, nơi du khách có thể thưởng thức cocktail và ngắm nhìn toàn cảnh thành phố Hà Nội về đêm.
            </p>
        </div>
        <div class="box bg-primary">
            <img src="assets/img2/event.png" alt="Logo" width="100" height="100">
            <h3>Trung tâm hội nghị</h3>
            <p>
                Có sức chứa 200 khách, được trang bị hệ thống âm thanh, ánh sáng và các thiết bị hiện đại để phục vụ các sự kiện và hội thảo.
            </p>
        </div>
        <div class="box bg-light">
            <img src="assets/img2/gym.png" alt="Logo" width="100" height="100">
            <h3>Phòng gym và spa</h3>
            <p>
                Khu vực chăm sóc sức khỏe với các trang thiết bị hiện đại và dịch vụ mát-xa, xông hơi.
            </p>
        </div>
    </section>
    <div class="clr"></div>
    <footer id="main-footer">
        <p> © [2024] Chillies. Hân hạnh được phục vụ.</p>
    </footer>

    </form>
</body>
</html>
