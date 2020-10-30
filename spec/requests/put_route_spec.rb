require 'rails_helper'

describe "post a business route", :type => :request do
  let!(:api_key) { ApiKey.create.access_token }
  let!(:business) { FactoryBot.create(:business) }

  before do
    put "/businesses/#{business.id}", params: {name: 'yummy', api_key: api_key}
    get "/businesses/#{business.id}", params: {api_key: api_key}
  end

  it "returns empty changed name of business" do

    expect(JSON.parse(response.body)['name']).to eq('yummy')
  end

  it 'should return status code 200' do
    expect(response).to have_http_status(200)
  end
end