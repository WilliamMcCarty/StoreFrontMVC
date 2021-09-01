using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Web.Mvc;
using StoreFront.UI.MVC;

namespace IdentitySample.Controllers    
{
    public class HomeController : Controller
    {
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
            return View();
        }
    }
}
