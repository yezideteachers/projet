require 'spec_helper'

describe "scenes/show" do
  before(:each) do
    @scene = assign(:scene, stub_model(Scene,
      :recit => "MyText",
      :lieu => "Lieu",
      :periode => "Periode",
      :id_anecdote => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/Lieu/)
    rendered.should match(/Periode/)
    rendered.should match(/1/)
  end
end
