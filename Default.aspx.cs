using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelOccupancy2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadDropdown();
                loadReadonlyAttribute();
                
            }
        }

        private void loadReadonlyAttribute()
        {
            country.Text = "India";
            country.Attributes.Add("readonly", "readonly");
            checkDate.Attributes.Add("readonly", "readonly");
        }

        private void loadDropdown()
        {
            using (dbDataContext db = new dbDataContext())
            {
                var records = db.States.ToList();
                state.DataSource = records;
                state.DataTextField = "Name";
                state.DataValueField = "ID";
                state.DataBind();
                state.Items.Insert(0, new ListItem("Select State"));
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                var record = new Record();
                record.Name = name.Text;
                record.IsForigner = isForigner.Checked;
                record.FatherName = fathersName.Text;
                record.Address = address.Text;
                if (isForigner.Checked)
                {

                    record.State = "";
                    record.District = "";
                    record.Pincode = "";

                }
                else
                {
                    record.State = state.SelectedItem.Text;
                    record.District = district.SelectedItem.Text;
                    record.Pincode = pincode.Text;
                }
                record.Country = country.Text;
                record.Mobile = mobile.Text;
                record.ICardType = idCardType.SelectedValue;
                record.ICardNumber = idCardNo.Text;
                record.RoomNumbers = roomNo.Text;
                record.CheckIn = Convert.ToDateTime(checkDate.Text);
                record.Duration = Convert.ToInt32(duration.Text);
                record.Accompanies = accompanies.Text;
                record.Photo = photo.FileBytes;
                using(dbDataContext db = new dbDataContext())
                {
                    db.Records.InsertOnSubmit(record);
                    db.SubmitChanges();
                    Response.Redirect(Request.RawUrl);
                }
            }
        }

        

        protected void state_TextChanged(object sender, EventArgs e)
        {
            if (state.SelectedValue != "Select State")
            {
                using (dbDataContext db = new dbDataContext())
                {
                    var records = db.Districts.Where(n => n.State_ID == Convert.ToInt32(state.SelectedValue)).ToList();
                    district.DataSource = records;
                    district.DataTextField = "Name";
                    district.DataValueField = "ID";
                    district.DataBind();
                    district.Items.Insert(0, new ListItem("Select district"));
                }
            }
        }

        protected void isForigner_CheckedChanged(object sender, EventArgs e)
        {
            if (isForigner.Checked)
            {
                district.Items.Insert(0, new ListItem("Select district"));
                state.SelectedValue = "Select State";
                state.Enabled = false;
                district.Enabled = false;
                pincode.Enabled = false;
                rfvDistrict.Enabled = false;
                rfvState.Enabled = false;
                rfvPincode.Enabled = false;
                country.Attributes.Remove("readonly");
                country.Text = "";
            }
            else
            {
                pincode.Enabled = true;
                state.Enabled = true;
                district.Enabled = true;
                rfvDistrict.Enabled = true;
                rfvState.Enabled = true;
                rfvPincode.Enabled = true;
                loadReadonlyAttribute();
            }
        }
    }
}