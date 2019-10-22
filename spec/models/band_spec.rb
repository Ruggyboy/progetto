require 'rails_helper'

RSpec.describe Band, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
   it "Valid band" do
    user = User.create(:email => "aaa@aaa.aaa", :name => "aaa", :password => "aaa@aaa.aaa")
    band = Band.new(:user_id => 1, :name => "123", :location => "viale Libia")
    expect(band).to be_valid
  end
  it "Band without name" do
    band = Band.new(:user_id => 1, :location => "via Lorenzo il Magnifico" )
    expect(band).not_to be_valid
  end
  #it "Band without user id" do
  #  user = User.new(:name => "ccc", :location => "via Michele di Lando" )
  #  expect(user).not_to be_valid
  #end
end
