require 'spec_helper'
require 'rails_helper'

context 'submitting a user' do

  it "fails because no password" do
    expect(User.new({:username => "hans"}).save).to be false
  end
 
  it "fails because password too short" do
    expect(User.new({:username => "hans", :password => 'han'}).save).to be false
  end
 
  it "succeeds because password is long enough" do
    expect(User.new({:username => "hans", :password => 'hansohanso'}).save).to be true
  end

  it "fails because password confirmation doesnt match" do
  expect(User.new({:username => "hans",
      :password => 'hansohanso',
      :password_confirmation => 'aa'}).save).to be false
  end
 
  it "succeeds because password & confirmation match" do
    expect(User.new({:username => "hans",
        :password => 'hansohanso',
        :password_confirmation => 'hansohanso'}).save).to be true
  end

end

