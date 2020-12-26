using System;
using System.Timers;
using System.Web;

namespace WebAutomaticCheckIn
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //this.Page.ClientScript.RegisterStartupScript(this.Page.GetType(), "", "<script> wuliu();</script>", true);


            //定义定时器  
            System.Timers.Timer myTimer = new System.Timers.Timer(5000);
            myTimer.Elapsed += new ElapsedEventHandler(myTimer_Elapsed);
            myTimer.Enabled = true;
            myTimer.AutoReset = true;
        }

        public void myTimer_Elapsed(object source, ElapsedEventArgs e)
        {
            try
            {

                CheckinTip();


            }

            catch (Exception ee)
            {
            }

        }


        public bool CheckinTip()
        {
            bool isIJ = false;
            //在这里写你 签到时间
            if (DateTime.Now > DateTime.Parse("2020-12-18 21:48") && DateTime.Now < DateTime.Parse("2020-12-25 22:10"))
            {
                isIJ = true;
            }
            return isIJ;
        }



    }
}