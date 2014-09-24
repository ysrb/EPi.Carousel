using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using EPiServer.Core;
using EPiServer.DataAnnotations;

namespace Epi.Carousel.Bootstrap.Models.BlockTypes.Carousel
{
    [ContentType(GUID = "6CD713D4-6469-4A33-91D2-3E7A25E2DBD3")]
    [ImageUrl("~/Content/icons/carousel/carousel.png")]
    public class CarouselBlock : BlockData
    {
        [Display(Order = 10)]
        public virtual ContentArea ContentArea { get; set; }

        [Display(Order = 20)]
        public virtual int? Interval { get; set; }

        [Display(Order = 30)]
        public virtual int? ImageHeight { get; set; }

        [Display(Order = 40)]
        public virtual int? ImageWidth { get; set; }

        public IEnumerable<IContent> Slides
        {
            get
            {
                if (ContentArea == null)
                {
                    return Enumerable.Empty<IContent>();
                }

                return ContentArea.FilteredItems
                    .Select(item => item.GetContent());
            }
        }

        public bool HasSlides
        {
            get { return Slides.Any(); }
        }
    }
}
