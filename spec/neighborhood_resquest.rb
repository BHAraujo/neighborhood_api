require 'httparty'
require 'spec_helper'
require 'byebug'


class NeighborhoodRequests
  include HTTParty
  base_uri 'https://viacep.com.br'

  def get
    self.class.get('/ws/04524030/json/')
  end

end

RSpec.describe 'validate status code' do
  it 'efetuando requisição GET' do
    @response = NeighborhoodRequests.new.get
    expect(@response.code).to eql(200)
  end
end

RSpec.describe 'validate return neighborhood with name MOEMA' do
  it 'efetuando requisição GET' do
    @response = NeighborhoodRequests.new.get
    @body = JSON.parse(@response.body)
    expect(@body["bairro"]).to eql("Moema")
  end
end
