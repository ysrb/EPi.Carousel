# EPi.Carousel

A *sample* of an EPiServer block for displaying images with the EPi.Carousel.Bootstrap plugin.

![Example][1]

## Getting started

### Install the NuGet package

    Install-Package EPi.Carousel.Bootstrap

### Add Carousel block to a content area
### Add Carousel slide blocks to the created carousel block.
## Extending carousel slide types:
	
	You can easily add your own partial views for a single carousel slide for content types that implement EPiserver's IContent interface.
	Just add a view into the folder "~/Views/Shared/Blocks/" and name it according to this pattern: "Carousel{TypeName}.cshtml".
	So for instance if you have a content type "StandardPage" in your project, add a view "CarouselStandardPage.cshtml".
	Check the file "~/Views/Shared/Blocks/CarouselSlideBlock.cshmtl" to see an example of the slide item view implementation.

  [1]: https://raw.githubusercontent.com/Geta/EPi.Carousel/master/EPi.Carousel.Bootstrap/example.png
