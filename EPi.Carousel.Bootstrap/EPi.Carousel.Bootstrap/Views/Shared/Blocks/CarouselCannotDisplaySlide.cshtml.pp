@using EPiServer.Core
@using EPiServer.Web.Mvc.Html
@model IContent

<img class="img-responsive" src="http://placehold.it/@(ViewBag.ImageWidth)x@(ViewBag.ImageHeight)" alt="image placeholder">
<div class="carousel-caption">
    <h2 class="animated fadeInLeftBig">
        Not supported
    </h2>
    <div class="animated fadeInRightBig">Cannot display slide for content "@Html.PropertyFor(m => m.Name)".</div>
</div>