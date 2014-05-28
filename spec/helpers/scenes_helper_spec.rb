require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the ScenesHelper. For example:
#
# describe ScenesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
describe ScenesHelper do
 
  describe "full_title" do
    it "should include the page name" do
      full_title("foo").should =~ /foo/
    end

    it "should includes the base name" do
      full_title("foo").should =~ /^Listing scenes/
    end

    it "should not include a bar for the scene page" do
      full_title("").should_not =~ /\|/
    end
  end
end
