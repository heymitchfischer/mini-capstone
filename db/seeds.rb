# User.create!([
#   {name: "Doug", email: "Doug@me.com", password: "doug", password_confirmation: "doug", admin: false},
#   {name: "Mitch", email: "mitchfischer6@gmail.com", password: "mitch", password_confirmation: "mitch", admin: true}
# ])
# Category.create!([
#   {name: "Scary"},
#   {name: "Big"},
#   {name: "Cute"},
#   {name: "Flying"}
# ])
# Supplier.create!([
#   {name: "Dragons Inc.", email: "supplier@dragons.com", phone: "555-555-5556"},
#   {name: "Valyria", email: "dragons@valyria.org", phone: "555-555-5557"}
# ])
# Dragon.create!([
#   {name: "Smaug", price: "500.0", description: "Lives in a mountain with lots of gold. Eats hobbits. Hates dwarves.", color: "Red", amount_spikes: 50, size: "Really Big", in_stock: nil, supplier_id: 1, amount: 4},
#   {name: "Charizard", price: "250.0", description: "It's a pokemon. BUT it's the best pokemon.", color: "Orange", amount_spikes: 1, size: "Pretty big, for a pokemon...", in_stock: nil, supplier_id: 1, amount: 10},
#   {name: "Hooktail", price: "100.0", description: "Made out of paper.", color: "Red", amount_spikes: 0, size: "Big! But again, it's made out of paper.", in_stock: nil, supplier_id: 1, amount: 10},
#   {name: "Night Dragon (formerly Viserion)", price: "9999.0", description: "Ideal mode of destroying walls for Night's King. Really scary. Breathes blue fire. Winter is coming.", color: "Bluish", amount_spikes: 100, size: "Does it matter? It's really scary.", in_stock: nil, supplier_id: 1, amount: 4},
#   {name: "Alduin", price: "1000.0", description: "Also known as the World-Ender. Eats Nords.", color: "Gold?", amount_spikes: 500, size: "So Big. The Biggest. Bigly.", in_stock: nil, supplier_id: 1, amount: 3},
#   {name: "a komodo dragon", price: "6.0", description: "The Poor Man's Dragon.", color: "Does it matter", amount_spikes: 0, size: "Tiny", in_stock: nil, supplier_id: 1, amount: 1},
#   {name: "Spyro", price: "50.0", description: "Fights crime (maybe?), hits things with tail.", color: "Purple", amount_spikes: 1, size: "Pretty small", in_stock: nil, supplier_id: 1, amount: 50},
#   {name: "Mushu", price: "0.0", description: "The REALLY Poor Man's Dragon.", color: "Red", amount_spikes: 0, size: "Smaller than the komodo", in_stock: nil, supplier_id: 1, amount: 2},
#   {name: "Falkor", price: "350.0", description: "Carries a little kid around. Basically a fluffier Appa. Yip. Yip.", color: "White", amount_spikes: 5, size: "Large", in_stock: nil, supplier_id: 1, amount: 25}
# ])
# CategoryDragon.create!([
#   {category_id: 1, dragon_id: 1},
#   {category_id: 2, dragon_id: 1},
#   {category_id: 4, dragon_id: 1},
#   {category_id: 2, dragon_id: 2},
#   {category_id: 4, dragon_id: 2},
#   {category_id: 1, dragon_id: 3},
#   {category_id: 2, dragon_id: 3},
#   {category_id: 4, dragon_id: 3},
#   {category_id: 3, dragon_id: 4},
#   {category_id: 4, dragon_id: 4},
#   {category_id: 2, dragon_id: 5},
#   {category_id: 4, dragon_id: 5},
#   {category_id: 1, dragon_id: 6},
#   {category_id: 2, dragon_id: 6},
#   {category_id: 4, dragon_id: 6},
#   {category_id: 3, dragon_id: 7},
#   {category_id: 3, dragon_id: 8},
#   {category_id: 4, dragon_id: 8},
#   {category_id: 3, dragon_id: 9}
# ])
Image.create!([
  {url: "http://ic.pics.livejournal.com/funf_vor_zwolf/23698501/7287/7287_original.jpg", dragon_id: 1},
  {url: "https://s3-us-west-2.amazonaws.com/flx-editorial-wordpress/wp-content/uploads/2017/07/07124850/game-of-thrones-trailer2-screencap-drogon-600x314.jpg", dragon_id: 2},
  {url: "https://i.ytimg.com/vi/UJv6WIXHdlU/hqdefault.jpg", dragon_id: 3},
  {url: "https://vignette4.wikia.nocookie.net/pokemon/images/e/e5/006Charizard_AG_anime.png/revision/latest?cb=20131213083244", dragon_id: 4},
  {url: "https://vignette2.wikia.nocookie.net/nintendo/images/b/b5/6a00b8ea0717f31bc000c2251cb1508fdb-500pi.jpg/revision/latest?cb=20090513035203&path-prefix=en", dragon_id: 5},
  {url: "https://staticdelivery.nexusmods.com/mods/110/images/54070-1-1400583773.jpg", dragon_id: 6},
  {url: "http://www.genesispark.com/wp-content/uploads/2011/11/Komodo-dragon.jpg", dragon_id: 7},
  {url: "https://vignette2.wikia.nocookie.net/spyro/images/8/82/Spyro_005666.jpg/revision/latest?cb=20120202135233", dragon_id: 8},
  {url: "https://images.moviepilot.com/image/upload/c_fill,h_470,q_auto:good,w_620/e6ridqhrgz8ghcvei6ig.jpg", dragon_id: 9},
  {url: "https://vignette4.wikia.nocookie.net/lotr/images/9/98/SmaugDestroyingLakeTownCropped.jpg/revision/latest?cb=20160721034440", dragon_id: 1}
])