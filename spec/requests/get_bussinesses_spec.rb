require "rails_helper"

describe "get all routes", :type => :request do
  let!(:api_key) { ApiKey.create.access_token }
  let!(:businesses) { FactoryBot.create_list(:business, 20)}

  before { get '/businesses', params: {api_key: api_key} } 

  it 'returns all business' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'should return status code 200' do
    expect(response).to have_http_status(:success)
  end
end