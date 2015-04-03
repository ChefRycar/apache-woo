require 'spec_helper'

describe 'apache-woo::instaLOL' do

  context 'When all attributes are default, on an unspecified platform' do

    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'starts apache2' do
      expect(chef_run).to start_service('apache2')
    end

  end

end