using EPiServer.Core;
using EPiServer.DataAbstraction;
using EPiServer.ServiceLocation;
using System.Web.Mvc;
using System;

namespace $rootnamespace$.Extensions.Carousel
{
    // ReSharper disable once InconsistentNaming
    public static class IContentExtensions
    {
        public static string GetCarouselSlidePartialViewName(this IContent content, HtmlHelper html)
        {
            return content.GetModelType().GetCarouselSlidePartialViewName(html);
        }

        private static string GetCarouselSlidePartialViewName(this Type type, HtmlHelper html)
        {
            var partialViewName = string.Format("~/Views/Shared/Blocks/Carousel{0}.cshtml",
                type.Name);

            var viewExists = html.ViewExists(partialViewName);

            if (!viewExists
                && type.BaseType != null)
                partialViewName = type.BaseType.GetCarouselSlidePartialViewName(html);
            else if (!viewExists
                     && type.BaseType == null)
                partialViewName = "~/Views/Shared/Blocks/CarouselCannotDisplaySlide.cshtml";


            return partialViewName;
        }

        public static Type GetModelType(this IContent content)
        {
            var contentTypeRepository = ServiceLocator.Current.GetInstance<IContentTypeRepository>();
            return contentTypeRepository.Load(content.ContentTypeID).ModelType;
        }
    }

}
