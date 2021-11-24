# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# rubocop:disable Layout/HashAlignment

# Users

will = User.new(
  name: "William Joseph Burns",
  country: "United States",
  flag_image: "http://www.covertbookreport.com/wp-content/uploads/2015/10/cia-flag-wikimedia.jpg"
)
jeff = User.new(
  name: "Jeff Bezos",
  country: "United States",
  flag_image: "https://static.vecteezy.com/system/resources/previews/000/532/212/original/vector-united-states-of-america-flag-usa-flag-america-flag-background.jpg")

hiro = User.new(
  name: "Hiro Nakamura",
  country: "Japan",
  flag_image: "https://drapeau.biz/wp-content/uploads/2019/12/drapeau-japon-png.png"
)

jack = User.new(
  name: "Jack Ma",
  country: "China",
  flag_image: "https://www.india.com/wp-content/uploads/2015/11/china-flag-logo25.jpg"
)

# Dictators
kimmi = Dictator.new(
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

kassy = Dictator.new(
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

gurby = Dictator.new(
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

emi = Dictator.new(
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

bachy = Dictator.new(
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

vlady = Dictator.new(
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

yowi = Dictator.new(
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

issy = Dictator.new(
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

obibi = Dictator.new(
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

nicoco = Dictator.new(
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

alexou = Dictator.new(
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

xixi = Dictator.new(
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
