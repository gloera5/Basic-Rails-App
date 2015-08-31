 require 'rails_helper'
 
 describe User do
   before( :each ) do
     @user = User.new
   end
 
   include TestFactories
 
   describe "#favorited(post)" do
     
     it "returns `nil` if the user has not favorited the post" do
     end
 
     it "returns the appropriate favorite if it exists" do
     end
   end
 end