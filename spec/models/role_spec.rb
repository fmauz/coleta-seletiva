require 'spec_helper'

describe Role do
  it { should respond_to(:name) }

  it { should have_many :users }
  it { should validate_presence_of(:name) }
end