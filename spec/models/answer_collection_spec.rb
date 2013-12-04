require 'spec_helper'

describe AnswerCollection do
  it { should respond_to :text }
  it { should respond_to :value }
  it { should respond_to :event_js }
  
  it { should belong_to :answer }

  it { should validate_presence_of :text }
  it { should validate_presence_of :value }
end
