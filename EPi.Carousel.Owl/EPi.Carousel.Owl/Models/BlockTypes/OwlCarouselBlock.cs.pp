using System.ComponentModel.DataAnnotations;
using $rootnamespace$.Models.MediaTypes;
using EPiServer.Core;
using EPiServer.DataAnnotations;
using EPiServer.Shell.ObjectEditing;

namespace $rootnamespace$.Models.BlockTypes
{
    [ContentType(GUID = "52E09A3C-0C56-44E0-B256-44BAD4CC027C", DisplayName = "Bildekarusell")]
    public class OwlCarouselBlock : BlockData
    {
        [UIHint("OwlContentArea")]
        [AllowedTypes(typeof(ImageFile))]
        [Display(Name = "Bilder", Order = 200)]
        public virtual ContentArea ImageArea { get; set; }

        [Display(Name = "Bildetekst", Order = 220)]
        public virtual XhtmlString ImageText { get; set; }
    }
}