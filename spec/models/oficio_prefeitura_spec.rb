require 'spec_helper'

describe OficioPrefeitura do
  it { should respond_to :name }
  it { should respond_to :description }
  it { should respond_to :data_registro }
  it { should respond_to :name_resp }

  it { should belong_to :county }

  it { should validate_presence_of :name }
  it { should validate_presence_of :data_registro }
  it { should validate_presence_of :name_resp }
  it { should validate_presence_of :county }
end
