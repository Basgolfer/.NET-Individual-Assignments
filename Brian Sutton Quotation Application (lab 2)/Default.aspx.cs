using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class _Default : System.Web.UI.Page

//Author: Brian Sutton
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode =
        System.Web.UI.UnobtrusiveValidationMode.None;
        if (!IsPostBack)
            txtSalesPrice.Text = "500";   
    }
    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            int salesPrice = Convert.ToInt32(txtSalesPrice.Text);
            decimal discountPercent = Convert.ToInt32(txtDiscountPercent.Text);
            decimal discountAmount = CalculateDiscountAmount(salesPrice, discountPercent);
            lblDiscountAmount.Text = discountAmount.ToString("c");
            decimal totalPrice = CalculateTotalPrice(salesPrice, discountAmount);
            lblTotalPrice.Text = totalPrice.ToString("c");
        }
        else
        {
            lblDiscountAmount.Text = "";
            lblTotalPrice.Text = "";
        }
    }
    protected decimal CalculateDiscountAmount(int salesPrice, decimal discountPercent)
    {
        decimal discountAmount = salesPrice * (discountPercent/100);
        return discountAmount;
    }

    protected decimal CalculateTotalPrice (int salesPrice, decimal discountAmount)
    {
        decimal totalPrice = salesPrice - discountAmount;
        return totalPrice;
    }
}