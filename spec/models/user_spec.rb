require 'spec_helper'

describe User do
  
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  
  it { should validate_presence_of( :email ) }
  it { should validate_presence_of( :password) }
  it { should validate_confirmation_of( :password ) }
  it { should validate_uniqueness_of( :email ) }

  it { should_not allow_value("blah").for(:email) }
  it { should allow_value("a@b.com").for(:email) }
  
end