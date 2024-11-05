// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 200 || document.documentElement.scrollTop > 200) {
    document.getElementById("top-button").style.display = "block";
  } else {
    document.getElementById("top-button").style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0; // For Safari
  document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
}

function resizeIframe(obj) {
  obj.style.height = obj.contentWindow.document.documentElement.scrollHeight + 60 +  'px';
}

function adjustLinkPreviewHeight(){
    console.log("adjusting link preview height");
    var cats = document.querySelectorAll('.div-link-preview');
    //console.log(cats.length);
    for (var i = 0; i < cats.length; i++) {
      var left = cats[i].querySelector('.div-link-preview-col-l');
      var right = cats[i].querySelector('.div-link-preview-col-r');
      var width = left.clientWidth;
      cats[i].style.height = width + "px";
      left.style.height = width + "px";
      right.style.height = width + "px";
    }
}

