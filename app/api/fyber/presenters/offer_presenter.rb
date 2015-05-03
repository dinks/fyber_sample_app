require 'presenters/offer_type_presenter'
require 'presenters/time_to_payout_presenter'
require 'presenters/thumbnail_presenter'

module Fyber
  class OfferPresenter < Grape::Entity
    expose :title, :offer_id, :teaser, :required_actions,
           :link, :payout, :store_id
    expose :offer_types,    using: Fyber::OfferTypePresenter
    expose :time_to_payout, using: Fyber::TimeToPayoutPresenter
    expose :thumbnail,      using: Fyber::ThumbnailPresenter
  end
end
