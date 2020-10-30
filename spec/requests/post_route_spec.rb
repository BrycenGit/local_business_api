require 'rails_helper'

describe "post a business route", :type => :request do

  before do
    post '/businesses', params: {name: 'yummy', address: 'awesome lane', phone: 'no-number', zipcode: '96761' }
  end

  it "returns the the business name" do
    expect(JSON.parse(response.body)['name']).to eq('yummy')
  end

  it 'should return status code 200' do
    expect(response).to have_http_status(:success)
  end
end