using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Web.Mvc;
using StoreFront.UI.MVC;
using StoreFront.DATA.EF;
using System.Linq;

namespace IdentitySample.Controllers
{
    public class HomeController : Controller
    {
        private StoreFrontEntities db = new StoreFrontEntities();

        [HttpGet]
        public ActionResult Index()
        {
            return View();
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
    }
}
