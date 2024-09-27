using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticeWebApplication
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected string GetSelectedClass(string pageName)
        {
            string currentPage = System.IO.Path.GetFileName(Request.Path);
            return currentPage.Equals(pageName, StringComparison.OrdinalIgnoreCase) ? "selected" : "";
        }
        public String ImageUrl
        {
            get { return imgBanner.ImageUrl; }
            set { imgBanner.ImageUrl = value; }
        }
        
        public Button BtnSearch
        {
            get { return btnSearch; }
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }
    }
}