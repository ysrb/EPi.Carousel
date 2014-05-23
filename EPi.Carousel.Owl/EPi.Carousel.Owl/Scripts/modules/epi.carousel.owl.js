window.Geta = window.Geta || {};

window.Geta.Carousel = function(element, options){
    return {

        //
        // Attributes
        //

        options: $.extend(
            {},
            {
                // OwlCarousel Options
                owl: {
                    items: 3,
                    itemsScaleUp: true,
                    navigation: true,
                    navigationText: [
                        "<div class='icon-left'></div>",
                        "<div class='icon-right'></div>"
                    ]
                }
            },
            options
        ),

        element: element,

        //
        // Initialize
        //

        _init: function(){
            this.options.owl.afterInit = $.proxy(this._layout, this);
            this.options.owl.afterUpdate = $.proxy(this._layout, this);
            this.element.owlCarousel(this.options.owl);
            return this;
        },

        //
        // Layout
        //

        _layout: function(){
            this.element.find('img').each($.proxy(this._layoutImageAsynch, this));
        },

        _layoutImageAsynch: function(i, el){
            var image = $(el);
            if(this._imageHasLoaded(el)){
                this._layoutImage(image);
            }
            else{
                image.on('load', $.proxy(this._layoutImage, this, image))
            }
        },

        _layoutImage: function(image){
            image.removeAttr('style');
            var container = image.parent();
            var imageAspect = image.width() / image.height();
            var containerW = container.width();
            var containerH = container.height();
            var containerAspect = containerW / containerH;
            if(containerAspect < imageAspect){
                // taller
                image.css({
                    width: 'auto',
                    height: containerH,
                    left: -(containerH*imageAspect-containerW)/2
                });
            }
            else {
                // wider
                image.css({
                    width: containerW,
                    height: 'auto',
                    top:-(containerW/imageAspect-containerH)/2
                });
            }
        },

        _imageHasLoaded: function(image){
            if(!image.complete){
                return false;
            }
            if(image.naturalWidth && image.naturalWidth === 0){
                return false;
            }
            return true;
        }

    }._init();
};