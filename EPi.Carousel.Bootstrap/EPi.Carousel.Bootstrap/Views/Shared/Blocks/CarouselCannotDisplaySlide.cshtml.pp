@using EPiServer.Core
@using EPiServer.Web.Mvc.Html
@using $rootnamespace$.Extensions.Carousel
@model IContent

<img class="img-responsive" src="@(string.Empty.GetCarouselImageUrl((int)ViewBag.ImageWidth,(int)ViewBag.ImageHeight))" alt="image placeholder">
<div class="carousel-caption">
    <h2 class="animated fadeInLeftBig">
        Not supported
    </h2>
    <div class="animated fadeInRightBig">Cannot display slide for content "@Html.DisplayFor(m => m.Name)" of type "@Html.DisplayFor(m => m.GetModelType().Name)".</div>
</div>