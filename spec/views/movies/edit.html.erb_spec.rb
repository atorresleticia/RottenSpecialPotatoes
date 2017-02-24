require 'rails_helper'

RSpec.describe "movies/edit", type: :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!(
      :name => "MyString",
      :rating => 1,
      :description => "MyText"
    ))
  end

  it "renders the edit movie form" do
    render

    assert_select "form[action=?][method=?]", movie_path(@movie), "post" do

      assert_select "input#movie_name[name=?]", "movie[name]"

      assert_select "input#movie_rating[name=?]", "movie[rating]"

      assert_select "textarea#movie_description[name=?]", "movie[description]"
    end
  end
end
