require "rails_helper"

describe WelcomeController do

  describe "#index" do
    subject { get :index }

    it "renders index" do
      expect(subject).to render_template("index")
    end
  end

end
