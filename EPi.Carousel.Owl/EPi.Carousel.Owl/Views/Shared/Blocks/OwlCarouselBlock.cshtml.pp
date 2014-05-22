@using EPiServer.Editor
@using EPiServer.Web.Mvc.Html
@model $rootnamespace$.Models.BlockTypes.OwlCarouselBlock

<div class="owl-carousel-wrapper">
    <div class="@(PageEditing.PageIsInEditMode ? string.Empty : "owl-carousel carousel")" data-carousel @Html.EditAttributes(m => m.ImageArea)>
        @Html.DisplayFor(m => m.ImageArea)
    </div>

    @Html.PropertyFor(m => m.ImageText)
</div>