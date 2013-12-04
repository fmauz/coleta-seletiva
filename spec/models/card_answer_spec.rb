require 'spec_helper'

describe CardAnswer do
  it { should respond_to :value }

  it { should belong_to :answer }
  it { should belong_to :card_question }

  it { should validate_presence_of :answer }
end
