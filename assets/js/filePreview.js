// 获取本地上传的照片路径  

function getPath(obj) {
  if (obj) {
    //ie  
    if (window.navigator.userAgent.indexOf("MSIE") >= 1) {
      obj.select();
      // IE下取得图片的本地路径  
      return document.selection.createRange().text;
    }
    //firefox  
    else if (window.navigator.userAgent.indexOf("Firefox") >= 1) {
      if (obj.files) {
        // Firefox下取得的是图片的数据  
        return obj.files.item(0).getAsDataURL();
      }
      return obj.value;
    }
    return obj.value;
  }
}
//显示图片

function previewPhoto() {
  var picsrc = getPath(document.all.fileid);
  var picpreview = document.getElementById("preview");
  if (!picsrc) {
    return
  }
  if (window.navigator.userAgent.indexOf("MSIE") >= 1) {
    if (picpreview) {
      try {
        picpreview.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = picsrc;
      } catch (ex) {
        alert("文件路径非法，请重新选择！");
        return false;
      }
    } else {
      picpreview.innerHTML = "<img src='" + picsrc + "' />";
    }
  }
}



function preImg(fileid, imgid) {
  if (typeof FileReader == 'undefined') {
    var picsrc = getPath(document.all.fileid)
    $("#imgid").attr({
      src: picsrc
    });
    previewPhoto();
  } else {
    var reader = new FileReader();
    var name = $("#fileid").val();
    var picpreview = document.getElementById("preview");
    reader.onload = function(e) {
      var img = document.getElementById(imgid);
      //img.src = this.result;
      picpreview.innerHTML = "<img src='" + this.result + "' style='width: 179px; height: 189px;' />";
    }
    reader.readAsDataURL(document.getElementById(fileid).files[0]);
  }
}