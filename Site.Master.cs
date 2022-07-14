using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace carsharing
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (metods.iduser == -1)
            {
                h1.Visible = false;
                h2.Visible = false;
            }
            if (metods.mycarsid== -1)
            {
                h2.Visible = false;
            }
        }
    }
}