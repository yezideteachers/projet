require 'spec_helper'

describe Scene do


   let(:chapitre) { FactoryGirl.create(:chapitre) }
  before { @scene = chapitre.scenes.build(recit: "recit",lieu: "lieu", periode: "periode",chapitre_id: 0)}

  subject { @scene }

  it { should respond_to(:recit) }
  it { should respond_to(:lieu) }
  it { should respond_to(:periode) }
  it { should respond_to(:chapitre_id) }
  its(:chapitre) { should eq chapitre }
   it { should respond_to(:personnes) }

  it { should be_valid }
  

  describe "when the id of the chapitre isn't an integer" do
    before { @scene.chapitre_id = "a" }
    #it { should_not be_valid }
  end

  describe "with blank content" do
    before { @scene.periode = " " }
    it { should_not be_valid }
  end



end
