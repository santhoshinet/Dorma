using System.Web.Mvc;

namespace Dorma.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "";
            return View();
        }
    }
}