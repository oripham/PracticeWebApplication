using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticeWebApplication.UserControls
{
    public partial class ucManageProducts : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MyShopEntities context = new MyShopEntities();
            var query = (from p in context.Products
                         select p
                         ).ToList<Product>();
            GridViewProducts.DataSource = query;
            GridViewProducts.DataBind();
        }
    }   
}