@using $rootnamespace$.Extensions.Carousel
@using EPiServer.Web.Mvc.Html
@using $rootnamespace$.Models.BlockTypes.Carousel
@model SlideBlock

<img class="img-responsive" src="@Model.ImageUrl.GetResizedImageUrl((int)ViewBag.ImageWidth, (int)ViewBag.ImageHeight)" alt="@Model.ImageUrl">
<div class="carousel-caption">
    <h2 class="animated fadeInLeftBig">
        @Html.PropertyFor(m => m.Title)
    </h2>
    <div class="animated fadeInRightBig">@Html.PropertyFor(m => m.Description)</div>
    @if(Model.ButtonLink.HasValue())
    {
        <a class="animated fadeInLeftBig btn btn-info btn-lg" href="@Url.ContentUrl(Model.ButtonLink.Link)" @Html.EditAttributes(m => m.ButtonLink)>
            @Model.ButtonLink.Text
        </a>
    }
</div>

@Html.FullRefreshPropertiesMetaData(new[] { "ButtonLink" })