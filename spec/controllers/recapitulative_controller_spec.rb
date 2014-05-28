require 'spec_helper'

describe RecapitulativeController do

  describe "GET 'personne'" do
    it "returns http success" do
      get 'personne'
      response.should be_success
    end
  end

  describe "GET 'chapitre'" do
    it "returns http success" do
      get 'chapitre'
      response.should be_success
    end
  end

end
