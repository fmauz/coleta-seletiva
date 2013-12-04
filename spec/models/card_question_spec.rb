require 'spec_helper'

describe CardQuestion do
  it { should belong_to :question }
  it { should belong_to :card }
  
  it { should have_many :card_answers }

  it { should validate_presence_of :question }
end
