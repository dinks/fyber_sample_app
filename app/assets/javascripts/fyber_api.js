(function(base) {
  var BASE_PATH = '/api/v1/';

  var OFFERS_PATH = '/offers';

  function getOffers(data) {
    return $.ajax({
      dataType: "json",
      data: data,
      url: BASE_PATH + OFFERS_PATH
    });
  }

  base.FyberApi = {
    getOffers: getOffers
  };
})(window);
