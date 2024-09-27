using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticeWebApplication.UserControls
{
    public partial class ucManageCategory : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ManageCategoryEntityDataSource_Updated(object sender, EntityDataSourceChangedEventArgs e)
        {
            Page.Master.DataBind();
        }
    }
}