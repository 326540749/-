using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAutomaticCheckIn
{
    public partial class MainIndex : System.Web.UI.Page
    {
        public string vName = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            vName = Request.QueryString["Name"];
        }
    }
}