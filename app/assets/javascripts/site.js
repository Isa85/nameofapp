var refreshRating = function() {
  $('.rating').raty({
    path: '/images',
    scoreName: 'comment[rating]'
  });
  $('.rated').raty({
    path: '/images',
    readOnly :true,
    score: function() {
      return $(this).attr('data-score');
    }
  });
};


$(document).on('turbolinks:load ajaxSuccess', function(){
/* Elevate Zoom Plugin */
  refreshRating();
  if ($(window).width() < 768){
    $('.img-zoom').elevateZoom({
      zoomWindowPosition: 6,
      zoomWindowHeight: 300,
      zoomWindowWidth: 320,
      responsive: true
    });
  } else {
      $('.img-zoom').elevateZoom({
        zoomWindowPosition: 1,
        zoomWindowHeight: 300,
        responsive: true
      });
  }
});
