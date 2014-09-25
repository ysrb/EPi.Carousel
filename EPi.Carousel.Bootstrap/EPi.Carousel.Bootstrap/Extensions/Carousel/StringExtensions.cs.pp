using System.Globalization;
using EPiServer;
using Geta.EPi.Extensions.QueryString;

namespace $rootnamespace$.Extensions.Carousel
{
    public static class StringExtensions
    {
        public static string GetCarouselImageUrl(this string url, int width, int height)
        {
            return string.IsNullOrEmpty(url) ? string.Format("http://placehold.it/{0}x{1}", width, height)
                : url.GetResizedImageUrl(width, height);
        }

        public static string GetResizedImageUrl(this string url, int width, int height)
        {
            return QueryStringBuilder.Create(url)
                .Add("w", width.ToString(CultureInfo.InvariantCulture))
                .Add("h", height.ToString(CultureInfo.InvariantCulture))
                .ToHtmlString();
        }
    }
}
