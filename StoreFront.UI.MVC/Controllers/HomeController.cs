using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Web.Mvc;
using StoreFront.UI.MVC;
using StoreFront.DATA.EF;
using System.Linq;
using System;

namespace IdentitySample.Controllers
{
    public class HomeController : Controller
    {
        private StoreFrontEntities db = new StoreFrontEntities();

        [HttpGet]
        public ActionResult Index()
        {
            var products = (from p in db.Products
                            orderby p.Category.MainCategory, p.Category.ChildCategory, p.Title
                            select p).ToList();

            if (products == null)
            {
                return View();
            }

            var products2 = products.OrderBy(x => Guid.NewGuid()).Take(3);

            //return View(products);            
            return View(products2);
        }

        [HttpGet]
        public ActionResult About()
        {
            ViewBag.Message = "Your app description page.";

            return View();
        }

        [HttpGet]
        public ActionResult Services()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Contact(ContactViewModel cvm)
        {
            if (!ModelState.IsValid)
            {
                return View(cvm);
            }

            string myMessage = $"Message received from Floral Gifts & Collectibles.  From {cvm.Name} - Phone: {cvm.Phone} - Email: {cvm.Email} <br/>Message: {cvm.Message}";
            MailMessage mailMessage = new MailMessage(
            ConfigurationManager.AppSettings["EmailUser"].ToString(),
            ConfigurationManager.AppSettings["EmailTo"].ToString(),
            "Message From Floral Gifts & Collectibles Contact Form",
            myMessage);
            mailMessage.IsBodyHtml = true;
            SmtpClient client = new SmtpClient(ConfigurationManager.AppSettings["EmailClient"].ToString());
            client.Credentials = new NetworkCredential(ConfigurationManager.AppSettings["EmailUser"].ToString(), ConfigurationManager.AppSettings["EmailPass"].ToString());
            client.Port = 8889;
            try
            {
                client.Send(mailMessage);
                ViewBag.SuccessMessage = " - Message Sent.";
            }
            catch (System.Exception)
            {
                ViewBag.SuccessMessage = "Error: Please try again later.";
                return View(cvm);
            }

            return View();
        }

        [HttpGet]
        public ActionResult Products()
        {
            ViewBag.Categories = "All Products";

            var products = (from p in db.Products
                            orderby p.Category.MainCategory, p.Category.ChildCategory, p.Title
                            select p).ToList();

            if (products == null)
            {
                return View();
            }

            //return View(products);            
            return View(products);
        }

        [HttpGet]
        public ActionResult ProductsByMainCategory(int? id)
        {
            if (id == null)
            {
                return View();
            }

            var categories = (from p in db.Categories
                              where p.CategorieParentID == id
                              orderby p.MainCategory
                              select p).ToList();

            if (categories == null)
            {
                return View();
            }

            string sMainCategory = "";

            foreach (var item in categories)
            {
                sMainCategory = item.MainCategory;

                break;
            }

            var childCategories = (from p in db.Categories
                                   where p.MainCategory == sMainCategory
                                   orderby p.ChildCategory
                                   select p).ToList();

            if (childCategories == null)
            {
                return View();
            }

            int count = 1;
            foreach (var item in childCategories)
            {
                if (count == 1)
                {
                    ViewBag.Cat1 = item.ChildCategory;
                }
                if (count == 2)
                {
                    ViewBag.Cat2 = item.ChildCategory;
                }
                if (count == 3)
                {
                    ViewBag.Cat3 = item.ChildCategory;
                }
                if (count == 4)
                {
                    ViewBag.Cat4 = item.ChildCategory;
                }
                count++;
            }

            var products = (from p in db.Products
                            where p.Category.MainCategory == sMainCategory
                            orderby p.Category.MainCategory, p.Category.ChildCategory, p.Title
                            select p).ToList();

            if (products == null)
            {
                return View();
            }

            ViewBag.Categories = sMainCategory;

            //return View(products2);            
            return View(products);
        }

        [HttpGet]
        public ActionResult ProductsByCategory(int? id)
        {
            if (id == null)
            {
                return View();
            }

            var products = (from p in db.Products
                            where p.CategoriesID == id
                            orderby p.Title
                            select p).ToList();

            if (products == null)
            {
                return View();
            }

            foreach (var item in products)
            {
                ViewBag.Categories = item.Category.MainCategory + " | ";
                ViewBag.Categories += item.Category.ChildCategory;
            }

            //return View(products);
            return View(products);
        }

        [HttpGet]
        public ActionResult ProductDetail(int? id)
        {
            if (id == null)
            {
                return View();
            }

            var products = (from p in db.Products
                            where p.ProductID == id
                            orderby p.Title
                            select p).ToList();

            if (products == null)
            {
                return View();
            }

            return View(products);
        }
    }
}
