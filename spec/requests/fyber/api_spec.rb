require "rails_helper"

describe API do

  describe "Fyber::Offer" do
    subject { get "/api/v1/offers", { format: :json }.merge(params) }

    context "without required params" do
      let(:params) do
        {}
      end

      it "responds with a 400" do
        subject
        expect(response.status).to eq(400)
      end
    end

    context "with required params" do
      let(:params) do
        {
          uid: 123,
          pub0: :test,
          page: 1
        }
      end

      context "with 200 response from sponsorpay" do
        before do
          json = File.read Rails.root.join('spec', 'fixtures', 'success_response.json')
          stub_request(:any, /.*api.sponsorpay.com.*/).
            to_return(status: 200, body: json, headers: {
              'Content-Type' => 'application/json'
            })
        end

        it "responds with a 200" do
          subject
          expect(response.status).to eq(200)
        end

        it "must have the correct values" do
          subject
          json = JSON.parse(response.body).with_indifferent_access

          expect(json[:pages]).to be
          expect(json[:count]).to be
          expect(json[:information]).to be
          expect(json[:offers]).to be
          expect(json[:offers].count).to_not be(0)
        end
      end

      [400, 401, 500].each do |status|
        context "with a #{status} response from sponsorpay" do
          before do
            stub_request(:any, /.*api.sponsorpay.com.*/).
              to_return(status: status, body: '', headers: {
                'Content-Type' => 'application/json'
              })
          end

          it "responds with a #{status}" do
            subject
            expect(response.status).to eq(status)
          end
        end
      end

    end
  end

end
