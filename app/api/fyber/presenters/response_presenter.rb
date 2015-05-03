require 'presenters/information_presenter'
require 'presenters/offer_presenter'

module Fyber
  class ResponsePresenter < Grape::Entity
    expose :pages, :count
    expose :information, using: Fyber::InformationPresenter
    expose :offers, using: Fyber::OfferPresenter
  end
end
