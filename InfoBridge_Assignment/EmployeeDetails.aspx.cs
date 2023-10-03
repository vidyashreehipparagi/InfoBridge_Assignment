using InfoBridge_Assignment.App_Code;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace InfoBridge_Assignment
{
    public partial class EmployeeDetails : System.Web.UI.Page
    {
        EmployeeDAL crud = new EmployeeDAL();
        private void GetAllEmps()
        {

            List<Employee> emps = crud.GetEmployees();
            GridView1.DataSource = emps;
            Page.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            GetAllEmps();
        }

        protected void BtSave_Click(object sender, EventArgs e)
        {
            try
            {
                //code to upload image
                string path=Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("EmployeeImages/")+path);
                path = "~/EmployeeImages/" + path;
                Employee emp = new Employee();

                emp.Id = Convert.ToInt32(txtId.Text);
                emp.Name = txtName.Text;
                emp.Sex= txtSex.Text;
                emp.Address = txtAddress.Text;
                emp.Phone = txtPhone.Text;
                emp.DateOfBirth = txtDob.Text;
                 emp.Image = path;
                int result = crud.AddEmployee(emp);
                if (result >= 1)
                {
                    GetAllEmps();
                }
                else
                {
                    lblMsg.Text = "Something went wrong";
                }
            }catch(Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
        }

       

        protected void lbUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                //code to upload image
                string path = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("EmployeeImages/") + path);
                path = "~/EmployeeImages/" + path;
                Employee emp = new Employee();

                emp.Id = Convert.ToInt32(txtId.Text);
                emp.Name = txtName.Text;
                emp.Sex = txtSex.Text;
                emp.Address = txtAddress.Text;
                emp.Phone = txtPhone.Text;
                emp.DateOfBirth = txtDob.Text;
                emp.Image = path;
                int result = crud.UpdateEmployee(emp);
                if (result >= 1)
                {
                    GetAllEmps();
                }
                else
                {
                    lblMsg.Text = "Something went wrong";
                }
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
        }

        protected void btDelete_Click(object sender, EventArgs e)
        {
            try
            {

                int res = crud.DeleteEmployee(Convert.ToInt32(txtId.Text));
                if (res > 0)
                {
                    GetAllEmps();
                }
                else
                {
                    lblMsg.Text = "Something went wrong";
                }
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
        }

        protected void txtPhone_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BtnSearch_Click1(object sender, EventArgs e)
        {
            try
            {
                //string path = Path.GetFileName(FileUpload1.FileName);
                //FileUpload1.SaveAs(Server.MapPath("EmployeeImages/") + path);
                //path = "~/EmployeeImages/" + path;

                Employee emp = crud.GetEmployeeById(Convert.ToInt32(txtId.Text));
                if (emp.Id > 0)
                {


                    txtName.Text = emp.Name;
                    txtDob.Text = emp.DateOfBirth;
                    txtSex.Text= emp.Sex;
                    txtAddress.Text = emp.Address;
                    txtPhone.Text = emp.Phone;

                    //emp.Image = path;
                        
                }
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }


        }
    }
    }
