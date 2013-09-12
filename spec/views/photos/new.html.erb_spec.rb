require 'spec_helper'

describe "photos/new" do
  before(:each) do
    assign(:photo, stub_model(Photo,
      :file_name => "MyString",
      :file_path => "MyString",
      :caption => "MyString"
    ).as_new_record)
  end

  it "renders new photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", photos_path, "post" do
      assert_select "input#photo_file_name[name=?]", "photo[file_name]"
      assert_select "input#photo_file_path[name=?]", "photo[file_path]"
      assert_select "input#photo_caption[name=?]", "photo[caption]"
    end
  end
end
