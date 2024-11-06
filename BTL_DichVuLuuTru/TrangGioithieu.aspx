<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangGioithieu.aspx.cs" Inherits="BTL_DichVuLuuTru.TrangGioithieu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chillies | Giới Thiệu</title>
    <link href="assets/css1/Giới thiệu.css?v=4" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
       <header>
        <nav id="navbar">
            <div class="container">
                <h1 class="logo"><a href="TrangChu.aspx">Chillies</a></h1>
            <ul>
                <li><a href="TrangChu.aspx">Trang Chủ</a></li>
                <li><a class ="current" href="TrangGioiThieu.aspx">Giới Thiệu</a></li>
                <li><a href="Trangphong.aspx">Phòng nghỉ</a></li>
                <li><a href="TrangDatPhong.aspx">Đặt Phòng</a></li>
                <li><a href="TrangDichVu.aspx">Dịch Vụ</a></li>
                <li><a href="TrangLienHe.aspx">Liên Hệ</a></li>
                <li><a href="QuanLyDatPhong.aspx">Quản Lý</a></li>
            </ul>
            </div>
        </nav>
        
    </header>
    <section id="about-info" class="bg-light py-3" >
        <div class="container">
            <div class="info-left">
                <p>

                </p>
                <h1 class="l-heading"><span class="text-primary">Giới thiệu</span> về Chillies</h1>
                <p>Chillies là một điểm dừng chân lý tưởng nằm tại trung tâm thủ đô Hà Nội, nơi hội tụ vẻ đẹp cổ kính và 
                    hiện đại của thành phố nghìn năm văn hiến. Được thành lập vào năm 2010 và nhanh chóng trở thành một biểu tượng 
                    của sự sang trọng và dịch vụ đẳng cấp trong ngành lưu trú tại Hà Nội.
                    </p>
                    <p>   
                    Với vị trí đắc địa trên phố Lý Thường Kiệt, Quận Hoàn Kiếm, Chillies chỉ cách Hồ Hoàn Kiếm vài phút đi bộ và nằm 
                    gần các địa danh nổi tiếng như Khu phố cổ, Nhà hát lớn, và Văn Miếu - Quốc Tử Giám. Điều này mang lại cho du khách 
                    sự thuận tiện khi khám phá nét đẹp văn hóa, lịch sử và ẩm thực đặc sắc của Hà Nội.
                    </p>
                    <p>
                    Chillies gồm nhiều phòng nghỉ cao cấp với nhiều loại phòng từ tiêu chuẩn đến phòng tổng thống, được thiết kế tinh tế 
                    với phong cách kết hợp giữa truyền thống Việt Nam và nét hiện đại. Mỗi phòng đều có cửa sổ lớn với tầm nhìn 
                    ra quang cảnh thành phố hoặc khu vườn xanh mát, mang lại cảm giác thoải mái và thư giãn cho du khách.
                    </p>
                    <p>
                    Tiện nghi của khách sạn bao gồm nhà hàng sang trọng phục vụ các món ăn từ Việt Nam đến quốc tế, sky bar 
                    trên tầng thượng nơi du khách có thể thưởng thức đồ uống và ngắm nhìn thành phố về đêm, cùng trung tâm hội nghị 
                    với sức chứa 200 khách, thích hợp cho các sự kiện lớn nhỏ. Khách sạn còn cung cấp các dịch vụ chăm sóc sức khỏe 
                    với phòng gym hiện đại và spa thư giãn.
                    </p>
                    <p>
                    Chillies cam kết mang đến trải nghiệm lưu trú đẳng cấp với dịch vụ tận tâm, đội ngũ nhân viên chuyên nghiệp 
                    và không gian sang trọng. Đây là điểm đến lý tưởng cho những du khách muốn hòa mình vào không khí 
                    sôi động nhưng vẫn giữ được sự yên bình giữa lòng thủ đô.
                    </p>

            </div>
            <div class="info-right">
                <img src="assets/img2/gioithieu.jpg" alt="hotel">
            </div>
        </div>
    </section>
    <div class="clr"></div>
    
    <section id="testimonials" class="py-3">
        <div class="container">
            <h2 class="l-heading">Một vài đánh giá của khách hàng</h2>
            <div class="testimonials bg-primary">
                <img src="assets/img2/phuc.jpg" alt="Phúc">
                <p>Điều làm tôi ấn tượng nhất là sự sạch sẽ và yên tĩnh của khách sạn. 
                    Dịch vụ phòng nhanh chóng, nhân viên lễ tân vui vẻ và niềm nở. 
                    Tôi đã có những buổi sáng tuyệt vời khi nhâm nhi cà phê tại sky bar và nhìn ngắm Hà Nội thức giấc.
                </p>
            </div>
            <div class="testimonials bg-primary">
                <img src="assets/img2/hung.jpg" alt="Hùng" >
                <p>Tôi đã tổ chức một hội thảo nhỏ tại phòng hội nghị của khách sạn và mọi thứ diễn ra suôn sẻ. 
                    Trang thiết bị hiện đại và nhân viên hỗ trợ sự kiện rất chu đáo. 
                    Sau buổi làm việc, tôi còn có cơ hội thưởng thức các món ăn ngon tại nhà hàng của khách sạn. 
                    Đây thực sự là một nơi lý tưởng cho cả công tác và nghỉ ngơi.
                </p>
            </div>
        </div>
    </section>
    <footer id="main-footer">
        <p> © [2024] Chillies. Hân hạnh được phục vụ.</p>
    </footer>

    </form>
</body>
</html>
