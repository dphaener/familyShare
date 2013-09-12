require 'spec_helper'

describe "photos/index" do
  before(:each) do
    assign(:photos, [
      stub_model(Photo,
        :file_name => "File Name",
        :file_path => "File Path",
        :caption => "Caption"
      ),
      stub_model(Photo,
        :file_name => "File Name",
        :file_path => "File Path",
        :caption => "Caption"
      )
    ])
  end

  it "renders a list of photos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "File Name".to_s, :count => 2
    assert_select "tr>td", :text => "File Path".to_s, :count => 2
    assert_select "tr>td", :text => "Caption".to_s, :count => 2
  end
end
