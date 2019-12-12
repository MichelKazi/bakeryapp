
class Edible
  attr_accessor :strain, :name, :desc, :mg, :price
  
  def initialize(strain, name, desc, mg, price)
    @strain = strain
    @name = name
    @desc = desc
    @mg = mg
    @price = price
  end
end

class Cake < Edible
  attr_accessor :strain, :name, :desc, :mg, :price
  
  def initialize(name, desc)
    super("Indica", name, desc, 2000, 240)
  end
end

class Cookie < Edible
  attr_accessor :strain, :name, :desc, :mg, :price
  
  def initialize(name, desc)
    super("Hybrid", name, desc, 250, 20)
  end
end

class Muffin < Edible
  attr_accessor :strain, :name, :desc, :mg, :price

  def initialize(name, desc)
    super("Sativa", name, desc, 500, 40)
  end
end

weddingcake = Cake.new("Wedding Cake", "The effects of this cake come in waves and gently rocks your spine from side-to-side. Every bite is pleasantly distracting but not the best for attention-consuming activities. Our wedding cake sharpens the senses and steadies your energy levels without the paranoia.")
birthdaycake = Cake.new("Birthday Cake", "Our birthday cake is the perfect way to end your day, with deeply relaxing effects that soothe the body without sedating the mind. This cake is preferred by customers treating pain, anxiety, appetite loss, inflammation, and headaches.")
bluecheesecake = Cake.new("Blueberry Cheesecake", "Our blueberry cheesecake will put you in a euphoric, uplifted, happy mood for an approximately an hour and a half. You'll really feel this cake after a good 30 minutes.")

gsc = Cookie.new("Girl Scout Cookies", "The wonderful effects of our girl scout cookies will last you an entire day. This product is an outstanding choice for customers facing stress, depression, appetite loss, and nausea. If you're looking for a good time, or if you're looking to relax... we recommend just eating half a cookie.")
pinkcookies = Cookie.new("Pink Cookies", "You haven't seen \"couch lock\" until you've tried our pink cookies. This batch was specially made for those who like to unwind after a long day and eventually doze off into a deep sleep.")
platcookies = Cookie.new("Platinum Cookies", "If you liked our girl scout cookies, you'll absolutely love our platinum cookies. Customers with severe pain, nausea, swelling, migraines, and stress should look no further for relief as symptoms both physical and mood-related melt away instantly.")

martianmuffin = Muffin.new("Martian Muffin", "Martian Muffin has a sweet and spicy nutty flavor with hints of rich citrus. This muffin is out of this world. If you're not stingy, this is a perfect treat to share with your friends... and then go see a movie or two.")
blueberrymuffin = Muffin.new("Blueberry Muffin", "These are muffins you'll find at the top of the shelf. That's because they're top shelf muffins 😉. This muffin is a delight to the senses. Recommended for night-time indulgence.")
lemonpoppymuffin = Muffin.new("Lemon Poppy Seed Muffin", "Another great daytime use muffin, our lemon poppy seed muffin leaves you feeling relaxed, happy, and euphoric. When eaten in the correct amounts, this muffin can relax you without knocking you out."