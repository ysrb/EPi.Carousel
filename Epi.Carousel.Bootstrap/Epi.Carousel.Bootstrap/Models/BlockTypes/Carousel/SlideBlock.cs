using System.ComponentModel.DataAnnotations;
using EPiServer;
using EPiServer.Core;
using EPiServer.DataAnnotations;
using EPiServer.Web;

namespace EPi.Carousel.Bootstrap.Models.BlockTypes.Carousel
{
    [ContentType(GUID = "C9D40DBB-13D7-4D5C-B509-F680F52EC445")]
    [ImageUrl("~/Content/icons/carousel/slideblock.png")]
    public class SlideBlock : BlockData
    {
        [Display(Order = 10)]
        public virtual string Title { get; set; }

        [Display(Order = 20)]
        public virtual XhtmlString Description { get; set; }

        [UIHint(UIHint.Image)]
        [Display(Order = 30)]
        public virtual Url ImageUrl { get; set; }

        [Display(Order = 40)]
        public virtual SlideLinkBlock ButtonLink { get; set; }
    }
}
