<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangDichVu.aspx.cs" Inherits="BTL_DichVuLuuTru.TrangDichVu" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Chillies | Dịch Vụ</title>
    <link href="assets/css1/Dịch vụ.css?v=2" rel="stylesheet" type="text/css" />
    <style>
        /* Tạo bố cục grid */
/*.services-grid {
    display: grid;
    gap: 20px;*/ /* Khoảng cách giữa các phần tử */
/*}*/

/* Bố cục 2 cột cho thiết bị di động */
/*@media (max-width: 768px) {
    .services-grid {
        grid-template-columns: 1fr 1fr;
    }
}*/

/* Bố cục 3 cột cho desktop */
/*@media (min-width: 769px) {
    .services-grid {
        grid-template-columns: 1fr 1fr 1fr;
    }
}*/

    </style>

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
                <li><a class ="current" href="TrangDichVu.aspx">Dịch Vụ</a></li>
                <li><a href="TrangLienHe.aspx">Liên Hệ</a></li>
                <li><a href="QuanLyDatPhong.aspx">Quản Lý</a></li>
            </ul>
            </div>
        </nav>
        
    </header>
    <section id="services-info" class="bg-light py-3">
        <div class="container">
            <p>
                
            </p>
            <h1 class="l-heading"><span class="text-primary">Dịch vụ</span> của Chillies</h1>
            
            <div class="service">
                <div class="service-left">
                    <h2>Dịch vụ lưu trú</h2>
                    <p>Chillies cung cấp nhiều loại phòng nghỉ từ tiêu chuẩn đến phòng tổng thống, mỗi phòng đều được thiết kế sang trọng và tiện nghi. Dịch vụ dọn phòng hàng ngày đảm bảo không gian luôn sạch sẽ, gọn gàng. Các tiện ích trong phòng bao gồm TV màn hình phẳng, điều hòa, minibar, và Wi-Fi tốc độ cao.</p>
                </div>
                <div class="service-right">
                    <img src="assets/img2/luutru.jpg" alt="Dịch vụ lưu trú" width="300">
                </div>
            </div>

            <div class="service">
                <div class="service-left">
                    <h2>Nhà hàng và ẩm thực</h2>
                    <p>Nhà hàng chính của khách sạn phục vụ các món ăn đa dạng từ ẩm thực truyền thống Việt Nam đến các món quốc tế. Sky bar trên tầng thượng là nơi lý tưởng để du khách thưởng thức đồ uống cao cấp và ngắm nhìn toàn cảnh thành phố về đêm. Bữa sáng buffet với nhiều lựa chọn từ món ăn nhẹ, món ăn nóng, đến các loại bánh ngọt và trái cây tươi.</p>
                </div>
                <div class="service-right">
                    <img src="assets/img2/nhahang.jpg" alt="Nhà hàng và ẩm thực" width="300">
                </div>
            </div>

            <div class="service">
                <div class="service-left">
                    <h2>Spa và chăm sóc sức khỏe</h2>
                    <p>Khách sạn cung cấp dịch vụ spa với các liệu pháp massage thư giãn, chăm sóc da và xông hơi để giảm căng thẳng. Phòng gym hiện đại được trang bị đầy đủ máy tập, giúp du khách có thể duy trì thói quen tập luyện trong thời gian lưu trú.</p>
                </div>
                <div class="service-right">
                    <img src="assets/img2/spa.jpg" alt="Spa và chăm sóc sức khỏe" width="300">
                </div>
            </div>

            <div class="service">
                <div class="service-left">
                    <h2>Dịch vụ hội nghị và sự kiện</h2>
                    <p>Phòng hội nghị của Chillies có sức chứa lên đến 200 khách, trang bị hệ thống âm thanh, ánh sáng, máy chiếu và màn hình lớn, đảm bảo cho các sự kiện từ hội thảo doanh nghiệp đến buổi họp mặt cá nhân diễn ra thành công. Đội ngũ nhân viên hỗ trợ sự kiện chuyên nghiệp sẵn sàng phục vụ mọi nhu cầu của khách hàng.</p>
                </div>
                <div class="service-right">
                    <img src="assets/img2/hoinghi.jpg" alt="Dịch vụ hội nghị và sự kiện" width="300">
                </div>
            </div>

            <div class="service">
                <div class="service-left">
                    <h2>Tour du lịch và giải trí</h2>
                    <p>Chillies tổ chức các tour tham quan khám phá thành phố Hà Nội và các điểm đến lân cận như Vịnh Hạ Long và Tràng An. Khách sạn cũng cung cấp dịch vụ cho thuê xe ô tô và xe máy để du khách tự do khám phá thành phố. Lớp học nấu ăn truyền thống Việt Nam là hoạt động thú vị để du khách tìm hiểu về văn hóa ẩm thực địa phương.</p>
                </div>
                <div class="service-right">
                    <img src="assets/img2/tour.jpg" alt="Tour du lịch và giải trí" width="300">
                </div>
            </div>

            <div class="service">
                <div class="service-left">
                    <h2>Dịch vụ hỗ trợ khách hàng</h2>
                    <p>Lễ tân hoạt động 24/7 sẵn sàng hỗ trợ đặt phòng, chỉ dẫn, và giải đáp thắc mắc của khách hàng. Dịch vụ đưa đón sân bay giúp việc di chuyển trở nên tiện lợi và an toàn. Dịch vụ đặt vé và tư vấn du lịch giúp du khách lên kế hoạch chi tiết cho hành trình khám phá.</p>
                </div>
                <div class="service-right">
                    <img src="assets/img2/hotro.jpg" alt="Dịch vụ hỗ trợ khách hàng" width="300">
                </div>
            </div>

            <div class="service">
                <div class="service-left">
                    <h2>Các dịch vụ khác</h2>
                    <p>Chillies cung cấp dịch vụ giặt ủi nhanh chóng và khu vực giữ hành lý miễn phí. Dịch vụ phòng hoạt động 24/7 để đảm bảo sự tiện nghi tối đa cho du khách trong suốt thời gian lưu trú.</p>
                </div>
            </div>

        </div>
    </section>
    <footer id="main-footer">
        <p> © [2024] Chillies. Hân hạnh được phục vụ.</p>
    </footer>

    </form>
</body>
</html>
