$('#fyber-form').submit(function(e) {

  window.
    FyberApi.
    getOffers($(this).serialize()).
    done(function(data) {
      $('#fyber-results').html(HoganTemplates['offers'].render(data));
    }).
    fail(function() {
      alert('There has been a problem with request. Please try again!')
    });

  e.preventDefault();
});
