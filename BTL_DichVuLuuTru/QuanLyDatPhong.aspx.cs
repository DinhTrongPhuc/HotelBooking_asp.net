using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_DichVuLuuTru
{
    public partial class QuanLyDatPhong : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadBookingData();
                LoadEmployeeData();
            }
        }

        private void LoadBookingData()
        {
            // Lấy danh sách đặt phòng từ session
            var bookings = (List<Booking>)Session["Bookings"] ?? new List<Booking>();
            gvBookings.DataSource = bookings;
            gvBookings.DataBind();
        }

        protected void btnAddBooking_Click(object sender, EventArgs e)
        {
            // Tạo đối tượng Booking mới từ form nhập liệu
            var booking = new Booking
            {
                FullName = txtNewFullName.Text,
                Email = txtNewEmail.Text,
                Phone = txtNewPhone.Text,
                CheckInDate = DateTime.Parse(txtNewCheckInDate.Text),
                RoomType = ddlNewRoomType.SelectedValue
            };

            // Lưu đối tượng vào session
            var bookings = (List<Booking>)Session["Bookings"] ?? new List<Booking>();
            bookings.Add(booking);
            Session["Bookings"] = bookings;

            // Tải lại dữ liệu
            LoadBookingData();
        }

        protected void gvBookings_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvBookings.EditIndex = e.NewEditIndex;
            LoadBookingData();
        }

        protected void gvBookings_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            // Lấy danh sách đặt phòng từ session
            var bookings = (List<Booking>)Session["Bookings"];

            // Lấy thông tin dòng hiện tại để cập nhật
            GridViewRow row = gvBookings.Rows[e.RowIndex];
            string phone = gvBookings.DataKeys[e.RowIndex].Value.ToString();

            var booking = bookings.Find(b => b.Phone == phone);
            if (booking != null)
            {
                booking.FullName = ((TextBox)row.Cells[0].Controls[0]).Text;
                booking.Email = ((TextBox)row.Cells[1].Controls[0]).Text;
                booking.CheckInDate = DateTime.Parse(((TextBox)row.Cells[3].Controls[0]).Text);
                booking.RoomType = ((TextBox)row.Cells[4].Controls[0]).Text;
            }

            // Cập nhật session
            Session["Bookings"] = bookings;

            // Kết thúc chỉnh sửa và tải lại dữ liệu
            gvBookings.EditIndex = -1;
            LoadBookingData();
        }

        protected void gvBookings_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvBookings.EditIndex = -1;
            LoadBookingData();
        }

        protected void gvBookings_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // Lấy danh sách đặt phòng từ session
            var bookings = (List<Booking>)Session["Bookings"];

            // Xác định đặt phòng cần xóa
            string phone = gvBookings.DataKeys[e.RowIndex].Value.ToString();
            var booking = bookings.Find(b => b.Phone == phone);
            if (booking != null)
            {
                bookings.Remove(booking);
            }

            // Cập nhật session
            Session["Bookings"] = bookings;

            // Tải lại dữ liệu
            LoadBookingData();
        }
        private void LoadEmployeeData()
        {
            var employees = (List<Employee>)Session["Employees"] ?? new List<Employee>();
            gvEmployees.DataSource = employees;
            gvEmployees.DataBind();
        }

        protected void btnAddEmployee_Click(object sender, EventArgs e)
        {
            var employee = new Employee
            {
                EmployeeName = txtNewEmployeeName.Text,
                Email = txtNewEmployeeEmail.Text,
                Phone = txtNewEmployeePhone.Text,
                Position = txtNewEmployeePosition.Text
            };

            var employees = (List<Employee>)Session["Employees"] ?? new List<Employee>();
            employees.Add(employee);
            Session["Employees"] = employees;

            LoadEmployeeData();
        }

        // Các hàm xử lý sự kiện khác cho GridView nhân viên
        protected void gvEmployees_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvEmployees.EditIndex = e.NewEditIndex;
            LoadEmployeeData();
        }

        protected void gvEmployees_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            var employees = (List<Employee>)Session["Employees"];
            GridViewRow row = gvEmployees.Rows[e.RowIndex];
            string phone = gvEmployees.DataKeys[e.RowIndex].Value.ToString();

            var employee = employees.Find(emp => emp.Phone == phone);
            if (employee != null)
            {
                employee.EmployeeName = ((TextBox)row.Cells[0].Controls[0]).Text;
                employee.Email = ((TextBox)row.Cells[1].Controls[0]).Text;
                employee.Position = ((TextBox)row.Cells[3].Controls[0]).Text;
            }

            Session["Employees"] = employees;
            gvEmployees.EditIndex = -1;
            LoadEmployeeData();
        }

        protected void gvEmployees_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvEmployees.EditIndex = -1;
            LoadEmployeeData();
        }

        protected void gvEmployees_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            var employees = (List<Employee>)Session["Employees"];
            string phone = gvEmployees.DataKeys[e.RowIndex].Value.ToString();
            var employee = employees.Find(emp => emp.Phone == phone);
            if (employee != null)
            {
                employees.Remove(employee);
            }

            Session["Employees"] = employees;
            LoadEmployeeData();
        }
    }
}

    // Class đại diện cho thông tin đặt phòng
    public class Booking1
    {
        public string FullName { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public DateTime CheckInDate { get; set; }
        public string RoomType { get; set; }
    }
public class Employee
{
    public string EmployeeName { get; set; }
    public string Email { get; set; }
    public string Phone { get; set; }
    public string Position { get; set; }
}

