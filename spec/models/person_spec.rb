require 'spec_helper'

describe Person do
  it { should belong_to :user }
  
  it { should have_many :cards }

  it { should validate_presence_of :user }
end
