using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace BraileCal
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

        [WebMethod]
        public double calculateCircumference( double radius)
        {
            double circumference=2*Math.PI*radius;
            return circumference;
        }

        [WebMethod]
        public double calculateTrianglePerimeter(double side1,double side2, double side3)
        {
            double perimeter = side1 + side2 + side3;
            return perimeter;
        }

        [WebMethod]
        public double calculateRectanglePerimeter(double length, double breadth)
        {
            double perirect = 2*length + 2*breadth;
            return perirect;
        }






    }
}
