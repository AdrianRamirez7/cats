require 'rails_helper'

Rspec.describe "Cats", type: :request do
    describe "GET /index" do
        it "gets a list of cats" do
            Cat.create(
                name: "garfield",
                age: 10,
                enjoys: 'losianna',
                image: 'https://sweezy-cursors.com/wp-content/uploads/cursor/garfield-lasagna/garfield-lasagna-custom-cursor.png'
            )

            #make a request
            get '/cats'

            cat = JSON.parse(response.body)
            expect(response).to have_http_status(200)
            expect(cat.length).to eq 1
        end
    end
end