require 'rails_helper'

RSpec.describe "words/index", type: :view do
  before(:each) do
    assign(:words, [
      Word.create!(
        word: "Word",
        description: "Description"
      ),
      Word.create!(
        word: "Word",
        description: "Description"
      )
    ])
  end

  it "renders a list of words" do
    render
    assert_select "tr>td", text: "Word".to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
  end
end
