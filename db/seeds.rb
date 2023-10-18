cats = [
    {
        name: "garfield",
        age: 10,
        enjoys: 'losianna',
        image: 'https://sweezy-cursors.com/wp-content/uploads/cursor/garfield-lasagna/garfield-lasagna-custom-cursor.png'
    }
]

cats.each do |each_cat|
    Cat.create each_cat
    puts "creating cat #{each_cat}"
end

