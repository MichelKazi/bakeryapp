
class Edible
  attr_accessor :strain, :name, :desc, :mg, :price
  @@all_products =[]
  def initialize(strain, name, desc, mg, price)
    @strain = strain
    @name = name
    @desc = desc
    @mg = mg
    @price = price
    
  end

  def Edible.getProducts
    return @@all_products
  end

end

class Cake < Edible
  attr_accessor :strain, :name, :desc, :mg, :price, :img
  
  def initialize(name, desc, img)
    super("Indica", name, desc, 2000, 240)
    @img = img
    @@all_products.push(self)
  end
end

class Cookie < Edible
  attr_accessor :strain, :name, :desc, :mg, :price, :img
  
  def initialize(name, desc, img)
    super("Hybrid", name, desc, 250, 20)
    @img = img
    @@all_products.push(self)
  end
end

class Muffin < Edible
  attr_accessor :strain, :name, :desc, :mg, :price, :img
  
  def initialize(name, desc, img)
    super("Sativa", name, desc, 500, 40)
    @img = img
    @@all_products.push(self)
  end
end

weddingcake = Cake.new("Wedding Cake", "The effects of this cake come in waves and gently rocks your spine from side-to-side. Every bite is pleasantly distracting but not the best for attention-consuming activities. Our wedding cake sharpens the senses and steadies your energy levels without the paranoia.", "https://firekeeperscasino.com/wp-content/uploads/2018/11/White-and-Pink-Tiered-Cake.jpg")
birthdaycake = Cake.new("Birthday Cake", "Our birthday cake is the perfect way to end your day, with deeply relaxing effects that soothe the body without sedating the mind. This cake is preferred by customers treating pain, anxiety, appetite loss, inflammation, and headaches.", "https://www.landolakes.com/RecipeManagementSystem/media/Recipe-Media-Files/Recipes/Retail/x17/16714-birthday-cake-600x600.jpg?ext=.jpg")
bluecheesecake = Cake.new("Blueberry Cheesecake", "Our blueberry cheesecake will put you in a euphoric, uplifted, happy mood for an approximately an hour and a half. You'll really feel this cake after a good 30 minutes.", "https://lmld.org/wp-content/uploads/2016/04/blueberry-cheesecake-9square.jpg")

gsc = Cookie.new("Girl Scout Cookies", "The wonderful effects of our girl scout cookies will last you an entire day. This product is an outstanding choice for customers facing stress, depression, appetite loss, and nausea. If you're looking for a good time, or if you're looking to relax... we recommend just eating half a cookie.", "http://stmedia.stimg.co/ctyp_6601654girl_scout_cookies_200.png?w=500")
pinkcookies = Cookie.new("Pink Cookies", "You haven't seen \"couch lock\" until you've tried our pink cookies. This batch was specially made for those who like to unwind after a long day and eventually doze off into a deep sleep.", "https://www.seattlegourmetfoods.com/resize/Shared/Images/Merlino/Cookies/Pink-Iced-Sugar-Cookies.jpg?bw=500&bh=500")
platcookies = Cookie.new("Platinum Cookies", "If you liked our girl scout cookies, you'll absolutely love our platinum cookies. Customers with severe pain, nausea, swelling, migraines, and stress should look no further for relief as symptoms both physical and mood-related melt away instantly.", "https://www.wilton.com/dw/image/v2/AAWA_PRD/on/demandware.static/-/Sites-wilton-project-master/default/dwa47683e0/images/project/WLPROJ-9238/UnTaHa_44417-17.jpg?sw=502&sh=502&sm=fit")

martianmuffin = Muffin.new("Martian Muffin", "Martian Muffin has a sweet and spicy nutty flavor with hints of rich citrus. This muffin is out of this world. If you're not stingy, this is a perfect treat to share with your friends... and then go see a movie or two.", "https://i.pinimg.com/originals/98/f0/ec/98f0ec8546ccd0c24860e1164eb7d7da.jpg")
blueberrymuffin = Muffin.new("Blueberry Muffin", "These are muffins you'll find at the top of the shelf. That's because they're top shelf muffins 😉. This muffin is a delight to the senses. Recommended for night-time indulgence.", "https://www.whattheforkfoodblog.com/wp-content/uploads/2018/02/Gluten-Free-Blueberry-Muffins-6-web-480x480.jpg")
lemonpoppymuffin = Muffin.new("Lemon Poppy Seed Muffin", "Another great daytime use muffin, our lemon poppy seed muffin leaves you feeling relaxed, happy, and euphoric. When eaten in the correct amounts, this muffin can relax you without knocking you out.", "https://detoxinista.com/wp-content/uploads/2017/04/coconut-flour-lemon-poppy-seed-muffins-500x500.jpg")


@@all_products = Edible.getProducts
@@cakes = [weddingcake, birthdaycake, bluecheesecake]
@@cookies = [gsc, pinkcookies, platcookies]
@@muffins = [martianmuffin, blueberrymuffin, lemonpoppymuffin]

