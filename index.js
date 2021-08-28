var time =document.querySelector("#time");

            function up(time_el)
            {
                let date = new Date();
                let h = date.getHours();
                let m = date.getMinutes();
                let s = date.getSeconds();
                let day_night = "AM";

                if(h > 12)
                {
                    h = h - 12;
                    day_night="PM";
                }
                if(h > 12){
                    h=h-12;
                    day_night="PM";
                }

                if(h < 10) { h ="0" + h;}
                if(m < 10) { m ="0" + m;}
                if(s < 10) { s ="0" + s;}

                time.textContent= h+":" + m+ ":" + s ;

            }

            setInterval(() => {
                up(time);
            },1000);
    function imgPreview(fileDom){
        //判断是否支持FileReader
        if (window.FileReader) {
            var reader = new FileReader();
        } else {
            alert("您的设备不支持图片预览功能，如需该功能请升级您的设备！");
        }

        //获取文件
        var file = fileDom.files[0];
        var imageType = /^image\//;
        //是否是图片
        if (!imageType.test(file.type)) {
            alert("请选择图片！");
            return;
        }
        //读取完成
        reader.onload = function(e) {
            //获取图片dom
            var img = document.getElementById("preview");
            //图片路径设置为读取的图片
            img.src = e.target.result;
        };
        reader.readAsDataURL(file);
    }