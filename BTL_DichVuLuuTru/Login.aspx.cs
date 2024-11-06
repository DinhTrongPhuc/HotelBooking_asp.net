using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_DichVuLuuTru
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string userNameText = txtUsername.Text;
            string passwordText = txtPassword.Text;

            if (userNameText == "a" && passwordText == "b")
            {
                Response.Redirect("TrangChu.aspx");
            }
            else
            {
                Response.Write("<script>alert('Tên đăng nhập hoặc mật khẩu không đúng!');</script>");
            }
        }
    }
}