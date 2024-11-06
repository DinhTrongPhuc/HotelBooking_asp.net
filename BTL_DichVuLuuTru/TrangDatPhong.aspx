<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangDatPhong.aspx.cs" Inherits="BTL_DichVuLuuTru.TrangDatPhong" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chillies | Đặt Phòng</title>
        <link href="assets/css2/main.css?v=4" rel="stylesheet" type="text/css" />
    <style>
        /* Đảm bảo form chiếm tối đa chiều cao của viewport */
/* Đảm bảo form đặt phòng nằm giữa phần booking-section */
.booking-section {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    max-width: 500px; /* Độ rộng tối đa của form */
    margin: 0 auto;
    padding: 20px;
    background-color: #fff; /* Nền trắng cho form */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Hiệu ứng bóng */
    border-radius: 8px; /* Bo góc cho form */
}

/* Căn chỉnh các input và button */
.booking-section input[type="text"],
.booking-section input[type="email"],
.booking-section input[type="date"],
.booking-section select,
.booking-section .button {
    width: 100%;
    padding: 10px;
    margin: 8px 0;
    border: 1px solid #ddd;
    border-radius: 4px;
    box-sizing: border-box;
    font-size: 16px;
}

/* Style cho button */
.booking-section .button {
    background-color: #ff8c00; /* Màu cam cho nút */
    color: white;
    border: none;
    cursor: pointer;
}

.booking-section .button:hover {
    background-color: #e07b00; /* Đổi màu khi hover */
}


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
                <li><a class ="current" href="TrangDatPhong.aspx">Đặt Phòng</a></li>
                <li><a href="TrangDichVu.aspx">Dịch Vụ</a></li>
                <li><a href="TrangLienHe.aspx">Liên Hệ</a></li>
                <li><a href="QuanLyDatPhong.aspx">Quản Lý</a></li>
            </ul>    
        </nav>
    </header>

    <section class="booking-section">
            <h1 class="section-title">Đặt Phòng</h1>
            <asp:TextBox ID="txtFullName" runat="server" placeholder="Họ và Tên" required="true"></asp:TextBox><br />
            <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" required="true"></asp:TextBox><br />
            <asp:TextBox ID="txtPhone" runat="server" placeholder="Số Điện Thoại" required="true"></asp:TextBox><br />
            <asp:TextBox ID="txtCheckIn" runat="server" placeholder="Ngày Đến" TextMode="Date" required="true"></asp:TextBox><br />
            <asp:DropDownList ID="ddlRoomType" runat="server">
                <asp:ListItem Value="Suite">Suite</asp:ListItem>
                <asp:ListItem Value="Phòng Đôi">Phòng Đôi</asp:ListItem>
                <asp:ListItem Value="Phòng Đơn">Phòng Đơn</asp:ListItem>
                <asp:ListItem Value="Phòng Sang Trọng">Phòng Sang Trọng</asp:ListItem>
                <asp:ListItem Value="Phòng Sang">Phòng Sang</asp:ListItem>
                <asp:ListItem Value="PremiumRoom">Phòng Cao Cấp</asp:ListItem>
            </asp:DropDownList><br />
            <asp:Button ID="btnConfirmBooking" runat="server" Text="Xác Nhận Đặt Phòng" OnClick="btnConfirmBooking_Click" CssClass="button" />
        </section>

   <footer id="main-footer">
    <p> © [2024] Chillies. Hân hạnh được phục vụ.</p>
</footer>
    </form>
</body>
</html>
