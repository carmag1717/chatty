using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BookLesson.Models;

namespace BookLesson.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            int hour = DateTime.Now.Hour;
            ViewBag.Message = "Добро пожаловать в ASP.NET MVC!";
            ViewData["greeting"] = (hour < 12 ? "Доброе утро" : "Добрый день");

            return View();
            
        }
        //public ActionResult RSVPForm()
        //{
        //    return View();
        //}

        [AcceptVerbs(HttpVerbs.Get)]
        public ViewResult RSVPForm()
        {
            return View();
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ViewResult RSVPForm(GuestResponse guest)
        {
            if (ModelState.IsValid)
            {
                return View("Thanks", guest);
            }
            else
                return View();
        }
    }
}
