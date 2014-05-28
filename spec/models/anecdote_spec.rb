require 'spec_helper'

describe Anecdote do
 

let(:chapitre) { FactoryGirl.create(:chapitre) }
  before { @anecdote =  @anecdotes = chapitre.anecdotes.build(sujet: "theme",theme: "theme",chapitre_id: 1)}

  subject { @anecdote }

  it { should respond_to(:sujet) }
  it { should respond_to(:theme) }
  it { should respond_to(:chapitre_id) }
  it { should respond_to(:chapitre) }
   its(:chapitre) { should eq chapitre }

  it { should be_valid }


  describe "when chapitre_id is not null" do
    before { @anecdote.chapitre_id = nil }
   # it { should_not be_valid }
  end

  describe "with blank content" do
    before { @anecdote.sujet = " " }
    it { should_not be_valid }
  end


  
end
