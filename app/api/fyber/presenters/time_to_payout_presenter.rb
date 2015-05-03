module Fyber
  class TimeToPayoutPresenter < Grape::Entity
    expose :amount, :readable
  end
end
