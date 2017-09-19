

/* $(document).on('ready page:load', function(){
  $('.img-zoom').elevateZoom();
  $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
  $('.rated').raty({ path: '/assets',
    readOnly: true,
    score: function() {
      return $(this).attr('data-score');
    }
  });
});
*/

// Script for Raty
  /* var refreshRating = function() {
    $('.product-rating').raty( {path: '/assets', scoreName: 'comment[rating]' });
    $('.product-rated').raty({ path: '/assets',
      readOnly: true,
      score: function() {
        return $(this).attr('data-score');
      }
    });
  };
  // End Raty

$(document).on('turbolinks:load', function() {

  // Script for elevateZoom
  $('.elevate-zoom').elevateZoom({
  zoomType: "lens",
  lensShape: "round",
  lensSize: 100
  });
  // End elevateZoom

  // Call Raty
  refreshRating();
});

*/

var refreshRating = function() {
  $('.rating').raty({
    scoreName: 'comment[rating]'
  });
  $('.rated').raty({
    starHalf: '<%= asset_path 'star-half.png' %>',
    starOff: '<%= asset_path 'star-off.png' %>',
    starOn: '<%= asset_path 'star-on.png' %>',
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
