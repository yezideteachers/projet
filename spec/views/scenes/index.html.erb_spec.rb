require 'spec_helper'

describe "scenes/index" do
  before(:each) do
    assign(:scenes, [
      stub_model(Scene,
        :recit => "MyText",
        :lieu => "Lieu",
        :periode => "Periode",
        :chapitre_id => 1
      ),
      stub_model(Scene,
        :recit => "MyText",
        :lieu => "Lieu",
        :periode => "Periode",
        :chapitre_id => 1
      )
    ])
  end

  it "renders a list of scenes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Lieu".to_s, :count => 2
    assert_select "tr>td", :text => "Periode".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
