require 'rails_helper'

RSpec.describe Word, type: :model do
  context "validation tests" do
    it "word is valid" do
      word = Word.new("description: it's a fruit").save
      expect(word).to eq(false)
    end

    it "description is valid" do
      word = word.new(word: apple).save
      expect(word).to eq(false)
    end

    it "saved successfully" do
      word = Word.new(word: "apple", description: " it's a fruit").save
      expect(word).to eq(true)
    end
  end
end
