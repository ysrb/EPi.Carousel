using System.ComponentModel.DataAnnotations;
using EPiServer;
using EPiServer.Core;
using EPiServer.DataAnnotations;
using EPiServer.Framework.DataAnnotations;

namespace $rootnamespace$.Models.MediaTypes
{
    [ContentType(GUID = "DD5E732F-571B-4DE9-B0F2-68F47819B545", DisplayName = "Bilde")]
    [MediaDescriptor(ExtensionString = "jpg,jpeg,jpe,ico,gif,bmp,png")]
    public class ImageFile : ImageData
    {
        [Display(Name = "Alternativ tekst (tooltip)", Order = 10)]
        public virtual string AltText { get; set; }

        [Display(Name = "Bildetekst", Order = 20)]
        public virtual XhtmlString Caption { get; set; }

        [Display(Name = "Lenke", Order = 30)]
        public virtual Url LinkUrl { get; set; }
    }
}