using Efergy3.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Efergy3
{
    public partial class AavtomatskaKontrola : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            var connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            var aList = new List<ProductModel>();
            //var bList = new List<ProductModel>();

            using (var context = new Efergy3DataContext(connString))
            {
                var data = from l in context.Products
                           //from c in context.Categories
                           join c in context.Categories on l.categoryid equals c.categoryid
                           where l.categoryid == 1
                           // where l.categoryid == 2
                           select l;

                aList = data.Select(m => new ProductModel
                {
                    productid = m.productid,
                    proname = m.proname,
                    rating = m.rating,
                    price = m.price,
                    minimalprice = m.minimalprice,
                    oldprice = m.oldprice,
                    image = m.image,
                    categoryid = m.categoryid,
                    //catname=m.catname,
                    detaliProduct = "DetaliProdukt.aspx?productid=" + m.productid
                }).ToList();
                repeaterProdukti.DataSource = aList;
                repeaterProdukti.DataBind();

            }
        }
    }
}