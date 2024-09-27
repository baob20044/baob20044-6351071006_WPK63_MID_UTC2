using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace de1.UserControl
{
    public partial class ucManageProduct : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            QLDoUongEntities context = new QLDoUongEntities();
            Beverage b = new Beverage();
            b.Name = txtName.Text;
            b.Price = decimal.Parse(txtPrice.Text);
            b.CatID = int.Parse(DropDownList1.SelectedValue);
            context.Beverages.Add(b);
            context.SaveChanges();
        }

        protected void GridViewEntityDataSource1_Updated(object sender, EntityDataSourceChangedEventArgs e)
        {
            Page.Master.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}