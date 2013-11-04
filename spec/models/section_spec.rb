require 'spec_helper'

describe Section do
  it { should respond_to :name }
  it { should respond_to :help_block }

  it { should have_many :questions }
  it { should belong_to :survey }

  it { should validate_presence_of :name }
  it { should validate_presence_of :survey}
end
