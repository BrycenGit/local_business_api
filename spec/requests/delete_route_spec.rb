require 'rails_helper'

describe "post a business route", :type => :request do
  let!(:api_key) { ApiKey.create.access_token }
  let!(:business) { FactoryBot.create(:business) }

  before do
    delete "/businesses/#{business.id}", params: {api_key: api_key}
    get "/businesses", params: {api_key: api_key}
  end

  it "returns empty list of businesses" do

    expect(JSON.parse(response.body).size).to eq(0)
  end

  it 'should return status code 200' do
    expect(response).to have_http_status(200)
  end
end