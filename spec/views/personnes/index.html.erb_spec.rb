require 'spec_helper'

describe "personnes/index" do
  before(:each) do
    assign(:personnes, [
      stub_model(Personne,
        :nom => "Nom"
      ),
      stub_model(Personne,
        :nom => "Nom"
      )
    ])
  end

  it "renders a list of personnes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nom".to_s, :count => 2
  end
end
