﻿@using System.Web.Mvc
@using System.Web.Mvc.Html
@using EPiServer.Web.Mvc.Html
@using EPiServer.Editor
@using $rootnamespace$.Extensions.Carousel
@using $rootnamespace$.Models.BlockTypes.Carousel
@using System.Web.Optimization
@model CarouselBlock

@Scripts.Render("~/bundles/EPi.Carousel.Bootstrap")

<script type="text/javascript">
    $(document).ready(function() {
        carouselNormalization('carousel');
    });
</script>

@if (!(Model.HasSlides || PageEditing.PageIsInEditMode)) { return; }

<div id="carousel" class="carousel slide" data-ride="carousel" data-interval="@(Model.Interval.GetValueOrDefault(7) * 1000)" @Html.EditAttributes(m => m.ContentArea)>

    <ol class="carousel-indicators">
        @for (var index = 0; index < Model.Slides.Count(); index++)
        {
            <li data-target="#carousel" data-slide-to="@index" class="@(index == 0 ? "active" : string.Empty)"></li>
        }
    </ol>

    <div class="carousel-inner">
        @for (var index = 0; index < Model.Slides.Count(); index++)
        {
            var slide = Model.Slides.ElementAt(index);
            <div class="item @(index == 0 ? "active" : string.Empty) animated fadeInRight">
                @{
            Html.RenderPartial(slide.GetCarouselSlidePartialViewName(Html), slide,
                new ViewDataDictionary { { "ImageHeight", Model.ImageHeight.GetValueOrDefault(600) }, { "ImageWidth", Model.ImageWidth.GetValueOrDefault(1889) } });
                }
            </div>
        }
    </div>

    <a class="left carousel-control" href="#carousel" data-slide="prev">
        <span class="icon-prev"></span>
    </a>
    <a class="right carousel-control" href="#carousel" data-slide="next">
        <span class="icon-next"></span>
    </a>
    @Html.FullRefreshPropertiesMetaData(new[] { "ContentArea" })
</div>
