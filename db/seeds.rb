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
  {title: "Potty", description: "A really cool little product, the weePOD instantly transforms any toilet into a comfortable, cushiony seat for your toddler. The high splashguard prevents against spills, the raised back is soft and supportive and the handles are easy to grab, so your toddler will feel safe and secure on a grown-up toilet. The adjustable dial means you can adjust the fit for your seat, and the cushion is removable for easy cleaning. Comes in three different colours.
", categories: ["Bath"]},
  {title: "Rubber duck", description: "Make playtime and trips to the beach extra fun with the Blinkie Multi-Pack. This set of three toys are great to encourage motor skill development, or as an encouragement in swimming training - the blinking dolphin, clownfish and duck will have your child swimming independently in no time. Made from neoprene rubber, the toys are naturally BPA, PVC and phthalate-free, as well as being waterproof and easy to clean.
", categories: ["Toys", "Bath"]},
  {title: "Baby towel", description: "This unique hooded apron towel makes it easy to get your baby out of the bath and straight into a warm, snugly towel. The apron-style neck means you can keep your hands free to lift your baby gently out of the bath – and it keeps you dry too. Made of pure unbleached cotton and natural bamboo fibres, the towel’s unique double-layer system dries your baby quickly and keeps them warm and dry. The fabric is naturally antibacterial, super absorbent and quick-drying. And even after washing, it stays silky soft – no wonder it’s an award-winner.
", categories: ["Bath", "Clothing"]},
  {title: "Bath boat", description: "Turn your bathtub into a watery wonderland with this brilliant interactive toy pirate ship. Complete with a playful water cannon, spinning waterwheel and a cheery pirate captain, it attaches easily to your bath or tiles with suction pads. Bold, bright colours and a fiendish Jolly Roger flag complete the brilliantly playful look.", categories: ["Toys", "Bath"]},
  {title: "Highchair", description: "Meet the mimzy snacker highchair from Joie, a tasty treat designed and engineered as a lightweight and convenient table buddy. With simple, no-fuss features, dining with baby never looked so easy. It folds quickly with a unique, fast one hand fold located in the seat closes up ultra flat in an instant.
", categories: ["Feeding"]},
  {title: "Baby spoon", description: "Mealtimes should be a fun, stress free time. Vital Baby's 5 pack of Soft Tip Weaning Spoons help just that, as they protect your baby's sensitive gums whilst feeding, allowing mum and dad to focus on feeding fun!", categories: ["Feeding"]},
  {title: "Smock", description: "This sweet smock dress from Mini Boden is perfect for picnics in the park.

Crafted from pure cotton and cut to a relaxed fit, this fully-lined dress features a collar, buttons all the way down the back for ease of changing and embroidery with cute little apple detailing.", categories: ["Clothing"]},
  {title: "Bottle", description: "The Philips Avent Classic+ bottles are clinically proven to help reduce colic and discomfort, using the Airflex venting system. As baby feeds, the valve integrated into the teat flexes to allow air into the bottle to prevent vacuum build-up and vents it towards the back of the bottle. It keeps air in the bottle and away from baby's tummy to help reduce wind, spit-up and burping.

", categories: ["Feeding"]}
]

products.each do |hash|
  p = Product.create!(title: hash[:title], description: hash[:description])

  hash[:categories].each do |name|
    c = Category.find_by(name: name)
    ProductCategory.create!(product: p, category: c)
    puts "Successfully create the product #{p.title} from #{c.name} 🍼"
  end
end
