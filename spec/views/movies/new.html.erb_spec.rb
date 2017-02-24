require 'rails_helper'

RSpec.describe "movies/new", type: :view do
  before(:each) do
    assign(:movie, Movie.new(
      :name => "MyString",
      :rating => 1,
      :description => "MyText"
    ))
  end

  it "renders new movie form" do
    render

    assert_select "form[action=?][method=?]", movies_path, "post" do

      assert_select "input#movie_name[name=?]", "movie[name]"

      assert_select "input#movie_rating[name=?]", "movie[rating]"

      assert_select "textarea#movie_description[name=?]", "movie[description]"
    end
  end
end
