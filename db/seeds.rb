puts "Cleaning database..."
User.destroy_all

elon = User.new(email: "elon@gmail.com", password: "secret", name: "Elon Musk", country: "United States", flag_image: "https://static.vecteezy.com/system/resources/previews/000/532/212/original/vector-united-states-of-america-flag-usa-flag-america-flag-background.jpg")
jeff = User.new(email: "jeff@gmail.com", password: "secret", name: "Jeff Bezos", country: "United States", flag_image: "https://static.vecteezy.com/system/resources/previews/000/532/212/original/vector-united-states-of-america-flag-usa-flag-america-flag-background.jpg")
# martha = User.new(name: "Martha", country: "Japan", flag_image: "")
# joe = User.new(name: "Joe", country: "China", flag_image: "")

# Dictators


kimmi = Dictator.new(
  # user_id: "1",
  name:           "Kim Jong-un",
  description:     "Supreme Leader of North Korea since 2011, second child of Kim Jong-il, Kim is the third of his kind to rule North Korea. One of our best element!",
  price_per_day:   13000,
  has_mercenary:   true,
  has_nuclear:     true,
  has_mustache:    false,
  has_descendancy: false,
  is_vip:          true
)
kimmi.save!
kassy = Dictator.new(
  name:            "Kassym-Jomart Tokayev",
  description:     "President of Kazakhstan since 20 March 2019, after 17 years in the government, Kassym is a great asset specialized in post-Soviet countries. Try him!",
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
  name: "Yoweri Museveni",
  description: "When he took the power in 1986, he promises to leave in 1990, then in 1996, then in 2001, then in 2006, then in 2011, then in 2015, then never",
  price_per_day: 4200,
  has_mercenary: false,
  has_nuclear: false,
  has_mustache: true,
  has_descendancy: false,
  is_vip: true
)
yowi.save!
issy = Dictator.new(
  name: "Isaias Afwerki",
  description: "",
  price_per_day: 7800,
  has_mercenary: true,
  has_nuclear: false,
  has_mustache: true,
  has_descendancy: false,
  is_vip: true
)
issy.save!
