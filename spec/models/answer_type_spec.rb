require 'spec_helper'

describe AnswerType do
  it { should respond_to :name }

  it { should have_many :answers }

  it { should validate_presence_of :name }
end
