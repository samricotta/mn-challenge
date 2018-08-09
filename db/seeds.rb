categories = ["Bath & Potty", "Feeding", "Toys", "Books", "Clothing", "Bedding"]


categories.each do |name|
  Category.create!(name: name)
end
