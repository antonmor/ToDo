require 'rails_helper'
require 'spec_helper'


RSpec.describe "User", :type => :feature do
  
  it "Once an user authentication to request at view TodoLIST" do
    visit "users/sign_in"
    fill_in 'user_email', with: 'ingantonmor@gmail.com'
    fill_in 'user_password', with: 'moreno'
    find("input[type='submit']").click
    expect(page).to have_content(/Invalid Email or password/)
  end

end