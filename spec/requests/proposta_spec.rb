require 'rails_helper'

RSpec.describe "Proposta", type: :request do
  describe "GET /proposta" do
    it "works! (now write some real specs)" do
      get proposta_path
      expect(response).to have_http_status(200)
    end
  end
end
