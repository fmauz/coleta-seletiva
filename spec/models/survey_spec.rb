require 'spec_helper'

describe Survey do
  it { should respond_to :name }

  it { should have_many :cards }
  it { should have_many :sections }

  it { should validate_presence_of :name }
end
