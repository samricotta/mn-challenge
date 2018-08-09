puts "Cleaning up the DB 🌪"
ProductCategory.destroy_all
Product.destroy_all
Category.destroy_all


categories = ["Bath", "Feeding", "Toys", "Books", "Clothing"]

categories.each do |name|
  c = Category.create!(name: name)
  puts "Successfully created the category #{c.name} 👶"
end

products = [
  {title: "Potty", description: "TODO - in seeds", categories: ["Bath"]},
  {title: "Rubber duck", description: "TODO - in seeds", categories: ["Toys", "Bath"]},
  {title: "Baby towel", description: "TODO - in seeds", categories: ["Bath", "Clothing"]},
  {title: "Bath boat", description: "TODO - in seeds", categories: ["Toys", "Bath"]},
  {title: "Highchair", description: "TODO - in seeds", categories: ["Feeding"]},
  {title: "Baby spoon", description: "TODO - in seeds", categories: ["Feeding"]},
  {title: "Smock", description: "TODO - in seeds", categories: ["Clothing"]},
  {title: "Bottle", description: "TODO - in seeds", categories: ["Feeding"]}
]

products.each do |hash|
  p = Product.create!(title: hash[:title], description: hash[:description])

  hash[:categories].each do |name|
    c = Category.find_by(name: name)
    ProductCategory.create!(product: p, category: c)
    puts "Successfully create the product #{p.title} from #{c.name} 🍼"
  end
end
