$(function() {
  // hide img and h2.
  $('.img-container, h2').hide();
  // assign click method to fade in img and h2 slowly.
  $('h1').click(function() {
    $('.img-container, h2').fadeIn(4500);
  });
});