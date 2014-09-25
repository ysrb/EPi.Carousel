using System.Web.Mvc;

namespace $rootnamespace$.Extensions.Carousel
{
    public static class HtmlHelperExtensions
    {
        public static bool ViewExists(this HtmlHelper html, string viewName)
        {
            var controllerContext = html.ViewContext.Controller.ControllerContext;
            var view = ViewEngines.Engines.FindView(controllerContext, viewName, masterName: null);
            return view != null
                && view.View != null;
        }
    }
}
