$(function() {


  // Lazy load images

  $('.lazy-load').each(function(index, img) {
    var dataSrc = img.getAttribute('data-src');
    if (dataSrc) {
      img.setAttribute('src', dataSrc);
      img.onload = function() {
        img.removeAttribute('data-src');
      };
    }
  });


  // Growl behaviour

  $('.growls').addClass('slide-up');

  setTimeout(function(){
    $('.growls').removeClass('slide-up');
    $('.growls').addClass('slide-down').fadeOut(200);
  }, 1000);

  $('.js-close-growl').click(function(e){
    e.preventDefault();
    $('.growls').removeClass('slide-up');
    $('.growls').addClass('slide-down').fadeOut(200);
  });


});
