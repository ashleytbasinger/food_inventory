require 'spec_helper'

describe Inventory do
  it { should have_valid(:title).when('blueberries') }
  it { should_not have_valid(:title).when(nil, '') }

  it { should have_valid(:description).when('delicious berries') }
  it { should_not have_valid(:description).when(nil, '') }

  it { should have_valid(:quantity).when(2) }
  it { should_not have_valid(:quantity).when(nil, '') }
end
