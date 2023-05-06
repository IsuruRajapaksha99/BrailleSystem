using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BraileCal
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            ServiceReference1.WebService1SoapClient client = new ServiceReference1.WebService1SoapClient();
            
            double Result = client.calculateCircumference(Convert.ToDouble(circlebox.Text));
            double Result1 = client.calculateRectanglePerimeter(Convert.ToDouble(rectLength.Text), Convert.ToDouble(rectBreadth.Text));
            double Result2 = client.calculateTrianglePerimeter(Convert.ToDouble(side1Box.Text), Convert.ToDouble(side2Box.Text), Convert.ToDouble(side3Box.Text));

            lblresult.Text = Result.ToString();
            lblresult1.Text = Result1.ToString();
            lblresult2.Text = Result2.ToString();

            int dot1 = Convert.ToInt32(Result) * 10;
            int dot2 = Convert.ToInt32(Result1) * 10;
            int dot3 = Convert.ToInt32(Result2) * 10;

            Label1.Text = dot1.ToString();
            Label2.Text = dot2.ToString();
            Label3.Text = dot3.ToString();


        }
    }
}