using EPiServer.Core;
using EPiServer.DataAbstraction;
using EPiServer.ServiceLocation;

namespace $rootnamespace$.Extensions.Carousel
{
    // ReSharper disable once InconsistentNaming
    public static class IContentExtensions
    {
        public static string GetCarouselSlidePartialViewName(this IContent content)
        {
            var contentTypeRepository = ServiceLocator.Current.GetInstance<IContentTypeRepository>();
            var contentType = contentTypeRepository.Load(content.ContentTypeID);

            return string.Format("~/Views/Shared/Blocks/Carousel{0}.cshtml", contentType.Name);
        }
    }

}
