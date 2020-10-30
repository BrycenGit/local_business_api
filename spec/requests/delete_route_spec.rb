require 'rails_helper'

describe "post a business route", :type => :request do
let!(:business) { FactoryBot.create(:business) }

  before do
    delete "/businesses/#{business.id}"
    get "/businesses"
  end

  it "returns empty list of businesses" do

    expect(JSON.parse(response.body).size).to eq(0)
  end

  it 'should return status code 200' do
    expect(response).to have_http_status(200)
  end
end