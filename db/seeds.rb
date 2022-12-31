puts "Deleting Company, Dev, Freebie"

Company.destroy_all
Dev.destroy_all
Freebie.destroy_all

puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
facebook = Company.create(name: "Facebook", founding_year: 2004)
dunder_mifflin = Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
mr_meseeks = Dev.create(name: "Mr. Meseeks")
gazorpazop = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
Freebie.create([
  {item_name: "Slippers", value: 15, dev: rick, company: google},
  {item_name: "Backpack", value: 13, dev: morty, company: enron},
  {item_name: "Key Chain", value: 5, dev: mr_meseeks, company: dunder_mifflin},
  {item_name: "Headset", value: 35, dev: gazorpazop, company: facebook},
])

puts "Seeding done!"
