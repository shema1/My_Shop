/*
 * http://cwestblog.com/2017/06/11/javascript-use-canvas-to-watermark-images/
 * https://gist.github.com/westc/800537c79b7342bd2c44731a5587b941
 */
function watermarkImage(elemImage, text) {
    // Create test image to get proper dimensions of the image.
    var testImage = new Image();
    testImage.onload = function() {
        var h = testImage.height, w = testImage.width, img = new Image();
        // Once the image with the SVG of the watermark is loaded...
        img.onload = function() {
            // Make canvas with image and watermark
            var canvas = Object.assign(document.createElement('canvas'), {width: w, height: h});
            var ctx = canvas.getContext('2d');
            ctx.drawImage(testImage, 0, 0);
            ctx.drawImage(img, 0, 0);
            // If PNG can't be retrieved show the error in the console
            try {
                elemImage.src = canvas.toDataURL('image/png');
            }
            catch (e) {
                console.error('Cannot watermark image with text:', {src: elemImage.src, text: text, error: e});
            }
        };
        // SVG image watermark (HTML of text at bottom right)
        img.src = 'data:image/svg+xml;base64,' + window.btoa(
                '<svg xmlns="http://www.w3.org/2000/svg" height="' + h + '" width="' + w + '">' +
                '<foreignObject width="100%" height="100%">' +
                '<div xmlns="http://www.w3.org/1999/xhtml">' +
                '<div style="position: absolute;' +
                'right: 0;' +
                'bottom: 0;' +
                'font-family: BlinkMacSystemFont, -apple-system, Segoe UI, Verdana, sans-serif' +
                'font-size: 14px;' +
                'letter-spacing: 1px;' +
                'background: #000;' +
                'color: #fff;' +
                'padding: 0.25em .5em;' +
                'border-radius: 0.25em;' +
                'opacity: 0.6;' +
                'margin: 0 0.125em 0.125em 0;' +
                '">' + text.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;") + '</div>' +
                '</div>' +
                '</foreignObject>' +
                '</svg>'
            );
    };
    testImage.src = elemImage.src;
}

var elImg = document.querySelectorAll( '.el_image' );
for ( var i = 0, len = elImg.length; i < len; i++ ) {
    console.log(i); // index
    console.log(elImg[i]); // object
    watermarkImage(elImg[i], 'Watermark Text');
}