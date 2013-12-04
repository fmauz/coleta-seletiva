require 'spec_helper'

describe Question do
  it { should respond_to :multiple_answer }
  it { should respond_to :code }
  it { should respond_to :content }
  it { should respond_to :help_block }
  it { should respond_to :css_class }
  it { should respond_to :clear_question }
  
  it { should belong_to :section }
  
  it { should have_many :answers }
  it { should have_many :card_questions }

  it { should validate_presence_of :code }
  it { should validate_presence_of :content }
  it { should validate_presence_of :section }
end
