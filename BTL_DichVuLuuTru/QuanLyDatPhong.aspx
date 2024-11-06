<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanLyDatPhong.aspx.cs" Inherits="BTL_DichVuLuuTru.QuanLyDatPhong" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chillies | Quản Lý</title>
        <link href="assets/QuanLy.css?v=2" rel="stylesheet" type="text/css" />
    <style>
        /* Căn giữa form thêm mới trong các phần quản lý */
.management-section h3,
.employee-management-section h3 {
    text-align: center;
}

.management-section,
.employee-management-section {
    display: flex;
    flex-direction: column;
    align-items: center;
    max-width: 800px; /* Độ rộng tối đa cho các section */
    margin: 0 auto;
    padding: 20px;
}

/* Căn chỉnh input và button trong các form thêm mới */
.management-section input[type="text"],
.management-section input[type="email"],
.management-section input[type="date"],
.management-section select,
.management-section .button,
.employee-management-section input[type="text"],
.employee-management-section input[type="email"],
.employee-management-section .button {
    width: 100%;
    max-width: 400px; /* Độ rộng tối đa cho input và button */
    padding: 10px;
    margin: 8px 0;
    border: 1px solid #ddd;
    border-radius: 4px;
    box-sizing: border-box;
    font-size: 16px;
    text-align: center;
}

/* Style cho button */
.management-section .button,
.employee-management-section .button {
    background-color: #ff8c00; /* Màu cam cho nút */
    color: white;
    border: none;
    cursor: pointer;
}

.management-section .button:hover,
.employee-management-section .button:hover {
    background-color: #e07b00; /* Đổi màu khi hover */
}

/* Giữ các bảng (GridView) căn trái */
.gvBookings, .gvEmployees {
    width: 100%;
    margin-top: 20px;
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
                <li><a href="TrangDatPhong.aspx">Đặt Phòng</a></li>
                <li><a href="TrangDichVu.aspx">Dịch Vụ</a></li>
                <li><a href="TrangLienHe.aspx">Liên Hệ</a></li>
                <li><a class ="current" href="QuanLyDatPhong.aspx">Quản Lý</a></li>
            </ul>
            </div>
        </nav>
        
    </header>
    <section class="management-section">
            <h1 class="section-title">Quản Lý Đặt Phòng</h1>

            <!-- Form thêm đặt phòng -->
            <h3>Thêm Đặt Phòng Mới</h3>
            <asp:TextBox ID="txtNewFullName" runat="server" Placeholder="Họ và Tên" required="true"></asp:TextBox><br />
            <asp:TextBox ID="txtNewEmail" runat="server" Placeholder="Email" required="true"></asp:TextBox><br />
            <asp:TextBox ID="txtNewPhone" runat="server" Placeholder="Số Điện Thoại" required="true"></asp:TextBox><br />
            <asp:TextBox ID="txtNewCheckInDate" runat="server" TextMode="Date" required="true" Placeholder="Ngày Đến"></asp:TextBox><br />
            <asp:DropDownList ID="ddlNewRoomType" runat="server">
                <asp:ListItem Value="Suite">Suite</asp:ListItem>
                <asp:ListItem Value="Phòng Đôi">Phòng Đôi</asp:ListItem>
                <asp:ListItem Value="Phòng Đơn">Phòng Đơn</asp:ListItem>
                <asp:ListItem Value="Phòng Sang Trọng">Phòng Sang Trọng</asp:ListItem>
                <asp:ListItem Value="Phòng Sang">Phòng Sang</asp:ListItem>
                <asp:ListItem Value="PremiumRoom">Phòng Cao Cấp</asp:ListItem>
            </asp:DropDownList><br />

                    <asp:TextBox ID="Maxacnhan" runat="server" Placeholder="Mã Xác Nhận: SHU20" required="true"></asp:TextBox><br />

            <asp:Button ID="btnAddBooking" runat="server" Text="Thêm Đặt Phòng" OnClick="btnAddBooking_Click" CssClass="button" /><br /><br />

            <!-- GridView quản lý đặt phòng -->
            <asp:GridView ID="gvBookings" runat="server" AutoGenerateColumns="False" DataKeyNames="Phone" OnRowEditing="gvBookings_RowEditing" OnRowUpdating="gvBookings_RowUpdating" OnRowCancelingEdit="gvBookings_RowCancelingEdit" OnRowDeleting="gvBookings_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="FullName" HeaderText="Họ và Tên" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="Phone" HeaderText="Số Điện Thoại" ReadOnly="true" />
                    <asp:BoundField DataField="CheckInDate" HeaderText="Ngày Đến" DataFormatString="{0:dd/MM/yyyy}" />
                    <asp:BoundField DataField="RoomType" HeaderText="Loại Phòng" />

                    <asp:CommandField ShowEditButton="True" ButtonType="Button" />
                    <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                </Columns>
            </asp:GridView>
        </section>

    <section class="employee-management-section">
    <h1 class="section-title">Quản Lý Nhân Viên</h1>

    <!-- Form thêm nhân viên mới -->
    <h3>Thêm Nhân Viên Mới</h3>
    <asp:TextBox ID="txtNewEmployeeName" runat="server" Placeholder="Họ và Tên Nhân Viên" required="true"></asp:TextBox><br />
    <asp:TextBox ID="txtNewEmployeeEmail" runat="server" Placeholder="Email Nhân Viên" required="true"></asp:TextBox><br />
    <asp:TextBox ID="txtNewEmployeePhone" runat="server" Placeholder="Số Điện Thoại Nhân Viên" required="true"></asp:TextBox><br />
    <asp:TextBox ID="txtNewEmployeePosition" runat="server" Placeholder="Chức Vụ" required="true"></asp:TextBox><br />
    <asp:Button ID="btnAddEmployee" runat="server" Text="Thêm Nhân Viên" OnClick="btnAddEmployee_Click" CssClass="button" /><br /><br />

    <!-- GridView quản lý nhân viên -->
    <asp:GridView ID="gvEmployees" runat="server" AutoGenerateColumns="False" DataKeyNames="Phone" OnRowEditing="gvEmployees_RowEditing" OnRowUpdating="gvEmployees_RowUpdating" OnRowCancelingEdit="gvEmployees_RowCancelingEdit" OnRowDeleting="gvEmployees_RowDeleting">
        <Columns>
            <asp:BoundField DataField="EmployeeName" HeaderText="Họ và Tên" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="Phone" HeaderText="Số Điện Thoại" ReadOnly="true" />
            <asp:BoundField DataField="Position" HeaderText="Chức Vụ" />

            <asp:CommandField ShowEditButton="True" ButtonType="Button" />
            <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
        </Columns>
    </asp:GridView>
</section>
    <footer id="main-footer">
        <p> © [2024] Chillies. Hân hạnh được phục vụ.</p>
    </footer>

    </form>
</body>
</html>
