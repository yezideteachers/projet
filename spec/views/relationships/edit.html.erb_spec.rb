require 'spec_helper'

describe "relationships/edit" do
  before(:each) do
    @relationship = assign(:relationship, stub_model(Relationship,
      :personne_id => 1,
      :scene_id => 1
    ))
  end

  it "renders the edit relationship form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", relationship_path(@relationship), "post" do
      assert_select "input#relationship_personne_id[name=?]", "relationship[personne_id]"
      assert_select "input#relationship_scene_id[name=?]", "relationship[scene_id]"
    end
  end
end
