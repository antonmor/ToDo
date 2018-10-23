require 'rails_helper' 
require 'spec_helper'

RSpec.describe "User", :type => :model do
  
  context "Validation test user model" do


    it "include email" do
      user = User.new(email: 'nickname@dominio.com').save
      expect(user).to eq(false)
    end

    it "include password email" do
      user = User.new(password: 'any_pass').save
      expect(user).to eq(false)
    end



  end

end