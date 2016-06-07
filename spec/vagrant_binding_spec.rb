require 'spec_helper'

describe VagrantBinding do
  let(:server) { Rails::Server.new }	
  it 'has a version number' do
    expect(VagrantBinding::VERSION).not_to be nil
  end

  it 'has changed the default host' do
  	expect(server.options[:Host]).to eq("0.0.0.0")
  	expect(server.options[:Port]).to eq(3000)
  end
end
