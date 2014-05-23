# EPi.Carousel

An EPiServer block for displaying images with the [Owl Carousel][1] plugin.

![Example][2]

## Getting started

Install the NuGet package

    Install-Package EPi.Carousel

Include stylesheets and scripts

    <link rel="stylesheet" href="/Content/OwlCarousel/owl.carousel.css">
    <link rel="stylesheet" href="/Content/modules/epi.carousel.owl.css">
    <script src="/Scripts/jquery-1.7.js"></script>
    <script src="/Scripts/owl.carousel.js"></script>
    <script src="/Scripts/modules/epi.carousel.owl.js"></script>

The required markup is included in OwlCarouselBlock.cshtml and OwlContentArea.cshtml.
    
Initialize

    new Geta.Carousel($('[data-carousel]'), options);
    
`options.owl` defines options for the [Owl Carousel][3] plugin
    


  [1]: owlgraphic.com/owlcarousel/
  [2]: https://github.com/Geta/EPi.Carousel/blob/master/example.png
  [3]: owlgraphic.com/owlcarousel/