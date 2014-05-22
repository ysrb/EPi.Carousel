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
                    items: 2.5,
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
            var width = image.outerWidth();
            var height = image.outerHeight();
            var maxWidth = image.parent().outerWidth();
            var maxHeight = image.parent().outerHeight();
            image.removeAttr('style');
            if(width > height){
                image.css('left', - (width - maxWidth) / 2);
            }
            else{
                image.css('top', - (height- maxHeight) / 2);
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