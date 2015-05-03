class API < Grape::API
  prefix 'api'
  format :json

  mount Fyber::Offer
end
