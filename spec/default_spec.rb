# encoding: utf-8
require 'chefspec'
require 'spec_helper'
require 'fauxhai'

describe 'YOUR_COOKBOOK::default' do
  context 'centos' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new do |node|
      end.converge(described_recipe)
    end
    

  end
end
