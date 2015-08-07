# EPi.Carousel

A *sample* of an EPiServer block for displaying images with the [Owl Carousel][1] plugin.

![Example edit][3]

![Example][2]

## Getting started

### Install the NuGet package

    Install-Package EPi.Carousel.Owl

### Include stylesheets and scripts

    <link rel="stylesheet" href="/Content/OwlCarousel/owl.carousel.css">
    <link rel="stylesheet" href="/Content/modules/epi.carousel.owl.css">
    <script src="/Scripts/jquery-1.7.js"></script>
    <script src="/Scripts/owl.carousel.js"></script>
    <script src="/Scripts/modules/epi.carousel.owl.js"></script>

### Markup

The required markup is included in OwlCarouselBlock.cshtml and OwlContentArea.cshtml.
    
### Initialize

Initialize the plugin before the end of `</body>`:

        ...
        new Geta.Carousel($('[data-carousel]'), options);
    </body>

 Or initialize the plugin inside a jQuery `$(document).ready` handler:
 
    $(document).ready(function(){
        new Geta.Carousel($('[data-carousel]'), options);
    });

## Plugin options

`options.owl` defines options for the [Owl Carousel][4] plugin. See the [Owl Carousel][5] website for all available options.

`options.imageScale` defaults to `cover`. Set to `none` to disable image scaling.

### Default values
* items: 3
* nav: true
* navText: ["<div class='icon-left'></div>", "<div class='icon-right'></div>"]
    


  [1]: http://owlgraphic.com/owlcarousel/
  [2]: https://raw.githubusercontent.com/Geta/EPi.Carousel/master/example.png
  [3]: https://raw.githubusercontent.com/Geta/EPi.Carousel/master/example-edit.png
  [4]: http://owlgraphic.com/owlcarousel/
  [5]: http://owlgraphic.com/owlcarousel/
