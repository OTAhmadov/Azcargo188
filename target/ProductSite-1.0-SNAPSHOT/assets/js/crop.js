$(function() {
    $("body").on('change', '.input-file-con input', function () {
            if (this.files && this.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $("#image").attr("src", e.target.result);
                    $("#crop-modal").modal("show");
                }
                reader.readAsDataURL(this.files[0]);
            }
        });

        $("body").on("shown.bs.modal", '#crop-modal', function () {
            var $image = $("#image");
            var cropBoxData;
            var canvasData;
            $image.cropper({
                viewMode: 1,
                aspectRatio: 1 / 1,
                minCropBoxWidth: 200,
                minCropBoxHeight: 200,
                ready: function () {
                    $image.cropper("setCanvasData", canvasData);
                    $image.cropper("setCropBoxData", cropBoxData);
                }
            });
        }).on('hidden.bs.modal', '#crop-modal', function () {
            var $image = $("#image");
            $image.cropper("destroy");
        })

        $('body').on('click', 'button.crop', function () {
            var $image = $("#image");
            var cropBoxData;
            var canvasData;
            cropBoxData = $image.cropper("getCropBoxData");
            canvasData = $image.cropper("getCanvasData");
            getCanvasT = $image.cropper("getCroppedCanvas", {
                width: 300,
                height: 300
            });

            var canvas = getCanvasT;
            var img = canvas.toDataURL("image/jpeg");


            
            $('.input-file-con .new-img-con').fadeIn(1).html('<img src="' + img + '" />');
            $('.remove-img').fadeIn(1);
            $image.cropper("destroy");

            $image.cropper('getCroppedCanvas').toBlob(function (blob) {
                
                var form = new FormData();
                form.append('image', blob);
                
                Courseee.Proxy.addAccountImage(form, function(data) {
                    if(data) {
                        alert('success');
                    }
                })
            });
        });
});
