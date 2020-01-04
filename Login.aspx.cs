using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelOccupancy2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if(userVerified(username.Text, password.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(username.Text, RemeberMe.Checked);
            }
        }

        private bool userVerified(string text1, string text2)
        {
            using(dbDataContext db = new dbDataContext())
            {
                var hashPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(text2, "SHA1");
                var record = db.Users.Where(n => n.UserName == text1 && n.Password == text2).SingleOrDefault();
                if (record != null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
    }
}