require 'spec_helper'

describe Answer do
  it { should respond_to :help_block }
  it { should respond_to :placeholder }
  it { should respond_to :label_text }
  it { should respond_to :css_class }
  it { should respond_to :query_string }
  it { should respond_to :element_ajax }
  it { should respond_to :ajax_url }
  it { should respond_to :required }
  it { should respond_to :disabled }
  it { should respond_to :min_length }
  it { should respond_to :max_length }
  it { should respond_to :number_only }
  it { should respond_to :currency_only }

  it { should belong_to :question }
  it { should belong_to :answer_type }

  it { should have_many :card_answers }
  it { should have_many :answer_collections }

  it { should validate_presence_of :question }
  it { should validate_presence_of :answer_type }
end
