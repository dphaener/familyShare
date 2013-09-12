require 'spec_helper'

describe "photos/show" do
  before(:each) do
    @photo = assign(:photo, stub_model(Photo,
      :file_name => "File Name",
      :file_path => "File Path",
      :caption => "Caption"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/File Name/)
    rendered.should match(/File Path/)
    rendered.should match(/Caption/)
  end
end
