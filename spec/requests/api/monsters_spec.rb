require 'rails_helper'

RSpec.describe "Api::Monsters", type: :request do
  describe "インデックスを取得する" do
    subject { get "/api/monsters" }
    let(:monster) { create(:monster) }
    before do
      monster
    end
    it "returns http success" do
      subject
      expect(response).to have_http_status(:success)
    end
  end
end
