require 'rails_helper'

RSpec.describe "Api::V1::Products", type: :request do
  describe "GET #index" do
    it "returns http success" do
      get '/api/v1/products'
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      product = FactoryBot.create(:product)
      get '/api/v1/products/' + product.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      product = FactoryBot.create(:product)
      get "/api/v1/products/?id=#{product.id}/edit"
      expect(response).to have_http_status(:success)
    end
  end
end
