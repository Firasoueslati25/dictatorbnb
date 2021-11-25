puts "Cleaning DB..."

Review.destroy_all
Booking.destroy_all
Dictator.destroy_all
User.destroy_all

# rubocop:disable Layout/HashAlignment

# Users

will = User.create!(
  email: "william@dictatorbnb.com",
  password: "secret",
  name: "William Joseph Burns",
  country: "United States",
  flag_image: "http://www.covertbookreport.com/wp-content/uploads/2015/10/cia-flag-wikimedia.jpg"
)
jeff = User.create!(
  email: "jeff@dictatorbnb.com",
  password: "secret",
  name: "Jeff Bezos",
  country: "United States",
  flag_image: "https://static.vecteezy.com/system/resources/previews/000/532/212/original/vector-united-states-of-america-flag-usa-flag-america-flag-background.jpg")

hiro = User.create!(
  email: "hiro@dictatorbnb.com",
  password: "secret",
  name: "Hiro Nakamura",
  country: "Japan",
  flag_image: "https://drapeau.biz/wp-content/uploads/2019/12/drapeau-japon-png.png"
)

jack = User.create!(
  email: "jack@dictatorbnb.com",
  password: "secret",
  name: "Jack Ma",
  country: "China",
  flag_image: "https://www.india.com/wp-content/uploads/2015/11/china-flag-logo25.jpg"
)

# Dictators
kimmi = Dictator.new(
  user:            will,
  name:           "Kim Jong-un",
  description:     "Supreme Leader of North Korea since 2011, second child of Kim Jong-il, Kim is the third of his kind to rule North Korea. One of our Top three dictators!",
  price_per_day:   13_000,
  has_mercenary:   true,
  has_nuclear:     true,
  has_mustache:    false,
  has_descendancy: false,
  is_vip:          true
)
kimmi.save!

kimmi_profile_pic = File.open(Rails.root.join('db/fixtures', 'kimmi.jpg'))
kimmi.picture.attach(io: kimmi_profile_pic, filename: 'kimmi.jpg', content_type: 'image/jpg')

kassy = Dictator.new(
  user:            jeff,
  name:            "Kassym-Jomart Tokayev",
  description:     "President of Kazakhstan since 20 March 2019, after 17 years in the government, Kassym is a great asset specialized in post-Soviet countries nuclearization. Try him!",
  price_per_day:   3000,
  has_mercenary:   false,
  has_nuclear:     false,
  has_mustache:    false,
  has_descendancy: true,
  is_vip:          false
)
kassy.save!

kassy_profile_pic = File.open(Rails.root.join('db/fixtures', 'kassy.jpg'))
kassy.picture.attach(io: kassy_profile_pic, filename: 'kassy.jpg', content_type: 'image/jpg')

gurby = Dictator.new(
  user:            will,
  name:            "Gurbanguly Berdimuhamedow",
  description:     "President of Turkmenistan since February 2007 and re-elected with 97.69% of the votes in 2017, Gurbanguly is only one mount away to become a VIP Dictator. Reach for the stars!",
  price_per_day:   8000,
  has_mercenary:   false,
  has_nuclear:     false,
  has_mustache:    false,
  has_descendancy: true,
  is_vip:          false
)
gurby.save!

gurby_profile_pic = File.open(Rails.root.join('db/fixtures', 'gurby.jpg'))
gurby.picture.attach(io: gurby_profile_pic, filename: 'gurby.jpg', content_type: 'image/jpg')

emi = Dictator.new(
  user:            hiro,
  name:            "Emomali Rahmon",
  description:     "Five times (in the elections of 1994, 1999, 2006, 2013 and 2020), Rahmon won undemocratic presidential elections in Tajikistan. the 'Founder of peace and national Unity' is a safe bet.",
  price_per_day:   10_000,
  has_mercenary:   true,
  has_nuclear:     false,
  has_mustache:    false,
  has_descendancy: true,
  is_vip:          true
)
emi.save!

emi_profile_pic = File.open(Rails.root.join('db/fixtures', 'emi.jpg'))
emi.picture.attach(io: emi_profile_pic, filename: 'emi.jpg', content_type: 'image/jpg')

bachy = Dictator.new(
  user:            jack,
  name:            "Bachar el-Assad",
  description:     "With 21 years at the head of Syria, our 'chemical weapons lover' is a valuable asset for those who want someone to spread conflicts with their neighboors!",
  price_per_day:   12_500,
  has_mercenary:   true,
  has_nuclear:     false,
  has_mustache:    true,
  has_descendancy: true,
  is_vip:          true
)
bachy.save!

bachy_profile_pic = File.open(Rails.root.join('db/fixtures', 'bachy.jpg'))
bachy.picture.attach(io: bachy_profile_pic, filename: 'bachy.jpg', content_type: 'image/jpg')

vlady = Dictator.new(
  user:            will,
  name:            "Vladimir Poutine",
  description:     "One of our most famous and wanted! As they say : 'They are 4 thing you don't choose in life : your parents, your nationality, your appearance and the President of Russia.'",
  price_per_day:   14_500,
  has_mercenary:   true,
  has_nuclear:     true,
  has_mustache:    false,
  has_descendancy: true,
  is_vip:          true
)
vlady.save!

vlady_profile_pic = File.open(Rails.root.join('db/fixtures', 'vlady.jpg'))
vlady.picture.attach(io: vlady_profile_pic, filename: 'vlady.jpg', content_type: 'image/jpg')

yowi = Dictator.new(
  user:            jack,
  name:            "Yoweri Museveni",
  description:     "When he took the Ugandan power in 1986, he promises to leave in 1990, then in 1996, then in 2001, then in 2006, then in 2011, then in 2015, then never. A true marathon runner.",
  price_per_day:   10_200,
  has_mercenary:   true,
  has_nuclear:     false,
  has_mustache:    true,
  has_descendancy: true,
  is_vip:          true
)
yowi.save!

yowi_profile_pic = File.open(Rails.root.join('db/fixtures', 'yowi.jpg'))
yowi.picture.attach(io: yowi_profile_pic, filename: 'yowi.jpg', content_type: 'image/jpg')

issy = Dictator.new(
  user:           jeff,
  name:           "Isaias Afwerki",
  description:     "One of the underdogs of our Dictators! In 2021, Reporters Without Borders ranked Eritrea, under the government of Isaias, last out of 180 countries in its Press Freedom Index.",
  price_per_day:   10_800,
  has_mercenary:   true,
  has_nuclear:     false,
  has_mustache:    true,
  has_descendancy: true,
  is_vip:          true
)
issy.save!

issy_profile_pic = File.open(Rails.root.join('db/fixtures', 'issy.jpg'))
issy.picture.attach(io: issy_profile_pic, filename: 'issy.jpg', content_type: 'image/jpg')

obibi = Dictator.new(
  user:           will,
  name:           "Teodoro Obiang Nguema Mbasogo",
  description:     "He describes himself as 'the country's god with all power over men and things.' It added that the he was 'in permanent contact with the Almighty and can decide to kill without anyone calling him to account and without going to hell.' Good old Obiang!",
  price_per_day:   11_200,
  has_mercenary:   true,
  has_nuclear:     false,
  has_mustache:    false,
  has_descendancy: true,
  is_vip:          true
)
obibi.save!

obibi_profile_pic = File.open(Rails.root.join('db/fixtures', 'obibi.png'))
obibi.picture.attach(io: obibi_profile_pic, filename: 'obibi.png', content_type: 'image/png')

nicoco = Dictator.new(
  user:           will,
  name:           "Nicolas Maduro",
  description:     "A promising one! Height years as a president and he litteraly putted down is own country! The US Department of Justice offers a $15 million reward for information that helps 'bring him to justice'.",
  price_per_day:   7800,
  has_mercenary:   false,
  has_nuclear:     false,
  has_mustache:    true,
  has_descendancy: true,
  is_vip:          false
)
nicoco.save!

nicoco_profile_pic = File.open(Rails.root.join('db/fixtures', 'nicoco.jpg'))
nicoco.picture.attach(io: nicoco_profile_pic, filename: 'nicoco.jpg', content_type: 'image/jpg')

alexou = Dictator.new(
  user:           jack,
  name:           "Alexander Lukashenko",
  description:     "Lukashenko promotes himself as a 'man of the people'. Funny Luka, being there for almost 30 years joking and repressing opponents, betraying allies and harassing minorities. Funny guy, really.",
  price_per_day:   12_800,
  has_mercenary:   false,
  has_nuclear:     false,
  has_mustache:    true,
  has_descendancy: true,
  is_vip:          true
)
alexou.save!

alexou_profile_pic = File.open(Rails.root.join('db/fixtures', 'alexou.jpg'))
alexou.picture.attach(io: alexou_profile_pic, filename: 'alexou.jpg', content_type: 'image/jpg')

xixi = Dictator.new(
  user:           will,
  name:           "Xi Jinping",
  description:     "This guy is probably one of the most wanted of our Dictators. Xi is pragmatic, serious, cautious, hard-working, down to earth and low-key and is ranked 9 out of 10 in domestic approval ratings. By Chinese, of course.",
  price_per_day:   15_800,
  has_mercenary:   true,
  has_nuclear:     true,
  has_mustache:    false,
  has_descendancy: true,
  is_vip:          false
)
xixi.save!

xixi_profile_pic = File.open(Rails.root.join('db/fixtures', 'xixi.jpg'))
xixi.picture.attach(io: xixi_profile_pic, filename: 'xixi.jpg', content_type: 'image/jpg')
