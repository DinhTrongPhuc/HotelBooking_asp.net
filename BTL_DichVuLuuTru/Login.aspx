<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BTL_DichVuLuuTru.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang Đăng Nhập</title>
    <style>
        /* Reset CSS */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            /*display: flex;*/
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        .login-container {
            width: 100%;
            max-width: 400px;
            background-color: #fff;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }

        .login-container h2 {
            text-align: center;
            margin-bottom: 1.5rem;
            color: #333;
        }

        .form-group {
            margin-bottom: 1rem;
        }

        .form-group label {
            display: block;
            margin-bottom: 0.5rem;
            color: #666;
        }

        .form-group input {
            width: 100%;
            padding: 0.75rem;
            font-size: 1rem;
            border: 1px solid #ccc;
            border-radius: 4px;
            outline: none;
            transition: border-color 0.3s;
        }

        .form-group input:focus {
            border-color: #f57c00; /* Màu cam cho hiệu ứng focus */
        }

        .login-button {
            width: 100%;
            padding: 0.75rem;
            font-size: 1rem;
            color: #fff;
            background-color: #f57c00; /* Màu cam cho nút đăng nhập */
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .login-button:hover {
            background-color: #e06700; /* Màu cam đậm hơn khi hover */
        }

        .login-container p {
            text-align: center;
            margin-top: 1rem;
            color: #666;
        }

        .login-container p a {
            color: #f57c00;
            text-decoration: none;
        }

        .login-container p a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>Đăng Nhập</h2>
            <div class="form-group">
                <label for="txtUsername">Tên Đăng Nhập</label>
                <asp:TextBox ID="txtUsername" runat="server" required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtPassword">Mật Khẩu</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" required="true"></asp:TextBox>
            </div>
<asp:Button ID="LoginButton" runat="server" Text="Đăng Nhập" CssClass="login-button" OnClick="LoginButton_Click" />
            <p>Chưa có tài khoản? <a href="#">Đăng ký ngay</a></p>
        </div>
    </form>
</body>
</html>
