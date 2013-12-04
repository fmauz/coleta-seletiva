require 'spec_helper'

describe FormSection do
  it { should respond_to :name }
  it { should respond_to :order }
  
  it { should belong_to :form_section }

  it { should validate_presence_of :name }
end
