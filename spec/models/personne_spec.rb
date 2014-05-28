require 'spec_helper'

describe Personne do

  before do
    @personne = Personne.new(nom: "yezide")
  end

  describe "when name is not present" do
    before { @personne.nom = " " }
    it { should_not be_valid }
  end

  describe "when name is too long" do
    before { @personne.nom = "a" * 45 }
    it { should_not be_valid }
  end

  describe "when nom is already taken" do
    before do
      personne_with_same_nom = @personne.dup      
      personne_with_same_nom.save
    end
     it { should_not be_valid }
  end

  # it "exige un nom" do
  #   bad_guy = Personne.new(@attr.nom(:nom => ""))
  #   bad_guy.should_not be_valid
  # end
end
