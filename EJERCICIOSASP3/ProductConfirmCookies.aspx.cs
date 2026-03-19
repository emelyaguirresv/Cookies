using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EJERCICIOSASP3
{
    public partial class ProductConfirmCookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Recuperar valores de las Cookies y asignarlos a los controles
            lblCategory.Text = Request.Cookies["ddlCategory"].Value;
            lblSupplier.Text = Request.Cookies["ddlSuplier"].Value; // Nota: en la imagen dice 'Suplier' con una sola 'p'
            lblProduct.Text = Request.Cookies["strProduct"].Value;
            txtDescription.Text = Request.Cookies["strDescription"].Value;
            lblImage.Text = Request.Cookies["strImage"].Value;

            // Conversión de precio a decimal para darle formato de moneda
            Decimal decPrice = Convert.ToDecimal(Request.Cookies["decPrice"].Value);
            lblPrice.Text = decPrice.ToString("c");

            lblValueInStock.Text = Request.Cookies["bytNumberInstock"].Value;
            lblValueInStock.Text = Request.Cookies["bytReorderLevel"].Value;
            lblValueOnOrder.Text = Request.Cookies["bytReorderLevel"].Value;

            // Cálculos de valores (Compute and display the values)
            Byte bytNumberInstock = Convert.ToByte(Request.Cookies["bytNumberInstock"].Value);
            Byte bytReorderLevel = Convert.ToByte(Request.Cookies["bytReorderLevel"].Value);

            Decimal decValueInStock = decPrice * bytNumberInstock;
            Decimal decValueOnOrder = decPrice * bytReorderLevel;

            // Asignación de resultados con formato de moneda de EE.UU.
            lblValueInStock.Text = decValueInStock.ToString("c", new System.Globalization.CultureInfo("en-US"));
            lblValueOnOrder.Text = decValueOnOrder.ToString("c", new System.Globalization.CultureInfo("en-US"));
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}