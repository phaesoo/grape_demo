module Converter
  class Currency < Grape::API
    version 'v1', using: :path
    format :json

    # Unexpected exception handling
    rescue_from :all

    helpers do
      def get_exchange_rate(currency)
        case currency
        when 'NTD'
          30
        else
          raise StandardError.new "no conversion found for currency '#{currency}'"
        end
      end
    end

    # Testcase
    # /api/v1/converter/exchange?amount=1&to_currency=NTD
    # /api/v1/converter/exchange?amount=1&to_currency=MTD !error
    resource :converter do
      params do
        requires :amount, type: Float
        requires :to_currency, type: String
      end
      get :exchange do
        converted_amount = params[:amount] * get_exchange_rate(params[:to_currency])
        {
          amount: converted_amount,
          currency: params[:to_currency],
        }
      end
    end
  end
end
