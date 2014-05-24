require 'spec_helper'

describe "scenes/edit" do
  before(:each) do
    @scene = assign(:scene, stub_model(Scene,
      :recit => "MyText",
      :lieu => "MyString",
      :periode => "MyString",
      :id_anecdote => 1
    ))
  end

  it "renders the edit scene form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", scene_path(@scene), "post" do
      assert_select "textarea#scene_recit[name=?]", "scene[recit]"
      assert_select "input#scene_lieu[name=?]", "scene[lieu]"
      assert_select "input#scene_periode[name=?]", "scene[periode]"
      assert_select "input#scene_id_anecdote[name=?]", "scene[id_anecdote]"
    end
  end
end
