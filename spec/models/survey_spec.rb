require 'spec_helper'

describe Survey do
  it { should respond_to :name }
  it { should respond_to :form_type }

  it { should have_many :cards }
  it { should have_many :sections }

  it { should belong_to :form_section }

  it { should validate_presence_of :name }
  it { should validate_presence_of :form_section }
end
