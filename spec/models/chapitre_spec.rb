require 'spec_helper'

describe Chapitre do
  
   before do
    @chapitre = Chapitre.new(chapitre_id: 1, titre: "titre")
  end

  # it "devrait creer une nouvelle instance dotee des attributs valides" do
  #   Chapitre.create!(@chapitre)
  # end

  describe "when titre is not present" do
    before { @chapitre.titre = " " }
    it { should_not be_valid }
  end

  describe "when titre is already taken" do
    before do
      chapitre_with_same_titre = @chapitre.dup    
      chapitre_with_same_titre.save
    end
     it { should_not be_valid }
  end

  it { should respond_to(:anecdotes) }
  it { should respond_to(:scenes) }

  describe "anecdote associations" do

    before { @chapitre.save }
    let!(:older_anecdote) do
      FactoryGirl.create(:anecdote, chapitre: @chapitre, created_at: 1.day.ago)
    end
    let!(:newer_anecdote) do
      FactoryGirl.create(:anecdote, chapitre: @chapitre, created_at: 1.hour.ago)
    end

    it "should have the right microposts in the right order" do
      expect(@chapitre.anecdotes.to_a).to eq [newer_anecdote, older_anecdote]
    end
  end


  describe "scene associations" do

    before { @chapitre.save }
    let!(:older_scene) do
      FactoryGirl.create(:scene, chapitre: @chapitre, created_at: 1.day.ago)
    end
    let!(:newer_scene) do
      FactoryGirl.create(:scene, chapitre: @chapitre, created_at: 1.hour.ago)
    end

    it "should have the right microposts in the right order" do
      expect(@chapitre.scenes.to_a).to eq [newer_scene, older_scene]
    end
  end

  describe "when number isn't an integer" do
     before { @chapitre.chapitre_id = "a" }
     it { should_not be_valid }
  end

end
