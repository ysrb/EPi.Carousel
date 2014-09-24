using System.ComponentModel.DataAnnotations;
using EPiServer;
using EPiServer.Core;
using EPiServer.DataAnnotations;

namespace Epi.Carousel.Bootstrap.Models.BlockTypes.Carousel
{
    [ContentType(AvailableInEditMode = false, GUID = "46FB2297-2CEC-45E6-BC9C-6F59305C53EC")]
    public class SlideLinkBlock : BlockData
    {
        [Display(Order = 100)]
        public virtual string Text { get; set; }

        [Display(Order = 110)]
        public virtual Url Link { get; set; }

        public bool HasValue()
        {
            return Link != null
                && !Link.IsEmpty()
                && !string.IsNullOrWhiteSpace(Text);
        }
    }
}
