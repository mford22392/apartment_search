require 'test_helper'

class UserTest < ActiveSupport::TestCase
  describe User do
 
    it "fails because no passwrod" do
      User.new({:username => "hans"}).save.should be_false
    end
   
    it "fails because password too short" do
      User.new({:username => "hans", 
        :password => 'han'}).save.should be_false
    end
   
    it "succeeds because password is long enough" do
      User.new({:username => "hans",
        :password => 'hansohanso'}).save.should be_true
    end
 
  end
end
