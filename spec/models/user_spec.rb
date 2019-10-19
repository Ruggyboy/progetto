require 'rails_helper'

RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  it "Valid user" do
    user = User.new(:email => "aaa@aaa.aaa", :name => "aaa", :password => "aaa@aaa.aaa")
    expect(user).to be_valid
  end
  it "User without name" do
    user = User.new(:password => "bbb@bbb.bbb", :email => "bbb@bbb.bbb" )
    expect(user).not_to be_valid
  end
  it "User without email" do
    user = User.new(:name => "ccc", :password => "ccc@ccc.ccc" )
    expect(user).not_to be_valid
  end
end
