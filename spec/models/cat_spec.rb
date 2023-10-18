require 'rails_helper'

RSpec.describe Cat, type: :model do
 it "should validate name" do
  cat = Cat.create(age: 10, enjoys: 'losianna', image: 'https://sweezy-cursors.com/wp-content/uploads/cursor/garfield-lasagna/garfield-lasagna-custom-cursor.png')
  expect(cat.errors[:name]).to_not be_empty
  
  end
  it "should have an age" do 
    cat = Cat.create(name: "garfield", enjoys: 'losianna', image: 'https://sweezy-cursors.com/wp-content/uploads/cursor/garfield-lasagna/garfield-lasagna-custom-cursor.png')
    expect(cat.errors[:age]).to_not be_empty
    expect(cat.errors[:age].length).to eq 1
  end
  it "should have a hobby" do 
    cat = Cat.create(name: "garfield", age: 10, image: 'https://sweezy-cursors.com/wp-content/uploads/cursor/garfield-lasagna/garfield-lasagna-custom-cursor.png')
    expect(cat.errors[:enjoys]).to_not be_empty
    end
    it "should have an image" do 
      cat = Cat.create(name: "garfield", age: 10, enjoys: 'losianna')
      expect(cat.errors[:image]).to_not be_empty
    end
  end