module Fyber
  class InformationPresenter < Grape::Entity
    expose :app_name, :appid, :virtual_currency, :country, :language, :support_url
  end
end
