require 'spec_helper'

describe Person do
  it { should respond_to :name }
  
  it { should belong_to :user }
  
  it { should have_many :cards }
end
