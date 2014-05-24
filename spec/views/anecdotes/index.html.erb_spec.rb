require 'spec_helper'

describe "anecdotes/index" do
  before(:each) do
    assign(:anecdotes, [
      stub_model(Anecdote,
        :sujet => "Sujet",
        :theme => "Theme",
        :chapitre_id => 1
      ),
      stub_model(Anecdote,
        :sujet => "Sujet",
        :theme => "Theme",
        :chapitre_id => 1
      )
    ])
  end

  it "renders a list of anecdotes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sujet".to_s, :count => 2
    assert_select "tr>td", :text => "Theme".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
