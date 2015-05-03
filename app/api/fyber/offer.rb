require 'fyber_api_wrapper'

require 'presenters/response_presenter'

module Fyber
  class Offer < Grape::API
    version 'v1', using: :path, vendor: 'fyber'

    rescue_from FyberApiWrapper::BadRequestError do |e|
      Rack::Response.new([], 400, { "Content-type" => "text/error" }).finish
    end

    rescue_from FyberApiWrapper::UnauthorizedError do |e|
      Rack::Response.new([], 401, { "Content-type" => "text/error" }).finish
    end

    rescue_from FyberApiWrapper::ResponseError do |e|
      Rack::Response.new([], 500, { "Content-type" => "text/error" }).finish
    end

    resource :offers do

      # /api/v1/offers
      desc "Returns a list of offers"
      params do
        requires :uid, type: String, desc: "The unique User ID, as used internally in your application."
        requires :pub0, type: String, desc: "Custom parameters."
        requires :page, type: String, desc: "The page of the response set that you are requesting."
      end
      get do
        response = FyberApiWrapper
                    .offers(device_id: '2b6f0cc904d137be2e1730235f5664094b83',
                            locale: :de,
                            ip: '109.235.143.113')
                    .get(uid: params[:uid],
                         pub0: params[:pub0],
                         page: params[:page])

        present response, :with => Fyber::ResponsePresenter
      end

    end
  end
end
