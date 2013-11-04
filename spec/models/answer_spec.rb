require 'spec_helper'

describe Answer do
  it { should respond_to :help_block }
  it { should respond_to :placeholder }
  it { should respond_to :label_text }

  it { should belong_to :question }
  it { should belong_to :answer_type }

  it { should have_many :card_answers }
  it { should have_many :answer_collections }

  it { should validate_presence_of :question }
  it { should validate_presence_of :answer_type }
end
