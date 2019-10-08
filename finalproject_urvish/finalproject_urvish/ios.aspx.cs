using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace finalproject_urvish
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Unnamed_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32((sender as LinkButton).CommandArgument);
            Response.Redirect("~/ProductView?id=" + id);
        }
    }
}