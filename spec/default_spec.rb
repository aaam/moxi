require 'chefspec'

describe 'moxi::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'moxi::default' }
  it 'should do something' do
    pending 'Your recipe examples go here.'
  end
end
