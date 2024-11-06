using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_DichVuLuuTru
{
    public partial class TrangDatPhong : System.Web.UI.Page
    {
        protected void btnConfirmBooking_Click(object sender, EventArgs e)
        {
            // Lấy thông tin từ các trường nhập liệu
            string fullName = txtFullName.Text;
            string email = txtEmail.Text;
            string phone = txtPhone.Text;
            DateTime checkInDate = DateTime.Parse(txtCheckIn.Text);
            string roomType = ddlRoomType.SelectedValue;

            // Lưu thông tin đặt phòng vào session (hoặc lưu vào database tùy theo yêu cầu)
            var bookingInfo = new Booking
            {
                FullName = fullName,
                Email = email,
                Phone = phone,
                CheckInDate = checkInDate,
                RoomType = roomType
            };

            // Lưu danh sách đặt phòng vào session
            var bookings = (List<Booking>)Session["Bookings"] ?? new List<Booking>();
            bookings.Add(bookingInfo);
            Session["Bookings"] = bookings;

            // Chuyển hướng tới trang quản lý đặt phòng
            Response.Redirect("QuanLyDatPhong.aspx");
        }
    }

    // Class đại diện cho thông tin đặt phòng
    public class Booking
    {
        public string FullName { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public DateTime CheckInDate { get; set; }
        public string RoomType { get; set; }
    }
}
