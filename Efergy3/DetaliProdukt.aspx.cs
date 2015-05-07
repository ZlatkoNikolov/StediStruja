using Efergy3.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
//using DevExpress.Web;


namespace Efergy3
{
    public partial class DetaliProdukt : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
//    public partial class ImageZoom_ImageZoomNavigator : Page 
//{
//    protected void Page_Load(object sender, EventArgs e) {
//        zoomNavigator.ActiveItemChangeAction = (ActiveItemChangeAction)ddlActiveItemChangeAction.Value;
//        zoomNavigator.NavigationButtonVisibility = (NavigationButtonVisibilityMode)ddlNavigationButtonVisibilityMode.Value;
//    }
//}




            var connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            var productid = Request.QueryString["productid"];
            var productDetailsId = Request.QueryString["ProductDetailsId"];

            var aList = new ProductModel();
            var bList = new ProductDetails();

            if (!string.IsNullOrEmpty(productid))
            {
                using (var context = new Efergy3DataContext(connString))
                {
                    var data = from l in context.Products
                               join c in context.Categories on l.categoryid equals c.categoryid
                               where l.productid == int.Parse(productid)
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
                        //video = m.video,
                        tekstDetali = m.tekstDetali,
                        slikiDetali = m.slikiDetali
                    }).FirstOrDefault();



                
                }
                using (var context = new Efergy3DataContext(connString))
                {
                    var data = from pd in context.ProductDetails
                               join p in context.Products on pd.ProductId equals p.productid
                               // where pd.ProductDetailsId == int.Parse(productDetailsId)
                               where p.productid == int.Parse(productid)

                               select pd;

                    bList = data.Select(m => new ProductDetails
                    {
                        ProductDetailsId = m.ProductDetailsId,
                        img1 = m.img1,
                        img2 = m.img2,
                        img3 = m.img3,
                        img4 = m.img4,
                        img5 = m.img5,
                        img6 = m.img6,
                        img7 = m.img7,
                        img8 = m.img8,
                        img9 = m.img9,
                        img10 = m.img10,
                        img11 = m.img11,
                        img12 = m.img12,
                        img13 = m.img13,
                        img14 = m.img14,
                        img15 = m.img15,
                    }).FirstOrDefault();
                }
            }
            
                
                //Img1.Src = bList.img1;
                //Img2.Src = bList.img2;
                //Img3.Src = bList.img3;
                //Img4.Src = bList.img4;
                //Img5.Src = bList.img5;
                //Img6.Src = bList.img6;
                //Img7.Src = bList.img7;
                //Img8.Src = bList.img8;
                //Img9.Src = bList.img9;
                //Img10.Src = bList.img10;
                //Img11.Src = bList.img11;
                //Img12.Src = bList.img12;
                //Img13.Src = bList.img13;
                //Img14.Src = bList.img14;
                //Img15.Src = bList.img15;

                

            //A1.HRef = bList.img1;
            //sl1.Src = bList.img1;//"Images/Produkti/AvtomatskaKontrola/ego smart socket and app/Small/appliance_control_1_1_1_1_1_1_2_1_1.jpg";
                bread.InnerText = aList.proname;
                naslov.InnerText = aList.proname;
                oldPrice.InnerText = aList.oldprice.ToString();

                //if (aList.video != null)
                //{
                //    video.Src = aList.video;
                    
                //}
                //else
                //{
                //    video.Visible = false;
                //}
                
                opis.InnerHtml = aList.tekstDetali;
                price.InnerText = aList.price.ToString();
                slikiDetali.InnerHtml = aList.slikiDetali.ToString();

           





            }
            
         


        }
    }
