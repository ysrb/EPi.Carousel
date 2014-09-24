﻿using System.Globalization;
using EPiServer;
using Geta.EPi.Cms;

namespace EPi.Carousel.Bootstrap.Extensions
{
    public static class UrlExtensions
    {
        public static string GetResizedImageUrl(this Url url, int width, int height)
        {
            return QueryStringBuilder.Create(url.ToString())
                .Add("w", width.ToString(CultureInfo.InvariantCulture))
                .Add("h", height.ToString(CultureInfo.InvariantCulture))
                .ToHtmlString();
        }
    }
}
