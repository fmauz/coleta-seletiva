require 'spec_helper'

describe AnswerCollection do
  it { should respond_to :text }
  it { should respond_to :value }

  it { should validate_presence_of :text }
  it { should validate_presence_of :value }

  it { should have_many :answers }
end
