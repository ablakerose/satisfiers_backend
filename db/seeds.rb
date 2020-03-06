# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#User.create(name: "Nadia", username: "nadiaf", password: "password")

#Think about dependencies and WHAT things rely on. 


User.destroy_all
Need.destroy_all
Satisfier.destroy_all

# manfred = User.create(name: "Manfred", username: "manfred@needs.com", password: "pass123")
# manfred.save

protection = Need.create(name: "Protection", level: 0)
affection = Need.create(name: "Affection", level: 0)
understanding = Need.create(name: "Understanding", level: 0)
participation = Need.create(name: "Participation", level: 0)
leisure = Need.create(name: "Leisure", level: 0)
creation = Need.create(name: "Creation", level: 0)
identity = Need.create(name: "Identity", level: 0)
freedom = Need.create(name: "Freedom", level: 0)

subsistence = Need.create(name: "Subsistence", level: 0)
max = User.create(name: "Max", username: "max@needs.com", password: "pass123")
cookingwfriends = Satisfier.new(activity: "cooking with friends", date_added: 02-27-20)
cookingwfriends.need = subsistence
cookingwfriends.user = max
subsistence.save
cookingwfriends.save

gardening = Satisfier.new(activity: "gardening", date_added: 02-28-20)
gardening.need = subsistence
gardening.user = max
subsistence.save
gardening.save

drawing = Satisfier.new(activity: "drawing", date_added: 02-28-20)
drawing.need = creation
drawing.user = max
creation.save
drawing.save

reading = Satisfier.new(activity: "reading", date_added: 02-28-20)
reading.need = understanding
reading.user = max
understanding.save
reading.save

napping = Satisfier.new(activity: "napping", date_added: 02-28-20)
napping.need = leisure
napping.user = max
leisure.save
napping.save

playwkids = Satisfier.new(activity: "playwkids", date_added: 02-28-20)
playwkids.need = affection
playwkids.user = max
affection.save
playwkids.save


attendProtest = Satisfier.new(activity: "attendProtest", date_added: 02-28-20)
attendProtest.need = freedom
attendProtest.user = max
freedom.save
attendProtest.save

journal = Satisfier.new(activity: "journal", date_added: 02-28-20)
journal.need = identity
journal.user = max
identity.save
journal.save

volunteer = Satisfier.new(activity: "volunteer", date_added: 02-28-20)
volunteer.need = protection
volunteer.user = max
protection.save
volunteer.save

blockParty = Satisfier.new(activity: "blockParty", date_added: 02-28-20)
blockParty.need = participation
blockParty.user = max
participation.save
blockParty.save

#shopping = Satisfier.new(activity: "shopping", date_added: 02-29-20)











# cookingwfriends.user = manfred
# gardening.user = max
# shopping.user = neef 

#cookingwfriends.need = subsistence
# cookingwfriends.need = participation
# cookingwfriends.need = understanding

# subsistence.save
# participation.save
# understanding.save 

# manfred.save
# max.save
# neef.save

# cookingwfriends.save
# gardening.save
# shopping.save 


p "Created #{Need.count} needs, #{Satisfier.count} satisiers, and #{User.count} user entries."
# sofa = Item.create(item_name: "Sofa", list_price: 100, sold: false)
# sofa.store = store_blake
# offer_sofa_scott = Offer.new(offer_price: 200)
# offer_sofa_scott.item = sofa
# offer_sofa_scott.user = scott
# sofa.save
# scott.save
# offer_sofa_scott.save

# refrigerator = Item.create(item_name: "Refrigerator", list_price: 200, sold: false)
# refrigerator.store = store_blake
# offer_refrigerator_scott = Offer.new(offer_price: 400)
# offer_refrigerator_scott.item = refrigerator
# offer_refrigerator_scott.user = scott
# refrigerator.save
# scott.save
# offer_refrigerator_scott.save

# tv = Item.create(item_name: "TV", list_price: 300, sold: false)
# tv.store = store_blake
# bailey = User.create(username: "Bailey", email: "bailey@bailey.com", password: "password")
# offer_tv_scott = Offer.new(offer_price: 600)
# offer_tv_bailey = Offer.new(offer_price: 150)
# offer_tv_scott.item = tv
# offer_tv_bailey.item = tv
# offer_tv_scott.user = scott
# offer_tv_bailey.user = bailey
# tv.save
# scott.save
# bailey.save
# offer_tv_scott.save
# offer_tv_bailey.save

# bed = Item.create(item_name: "Bed", list_price: 400, sold: false)
# bed.store = store_blake
# offer_bed_bailey = Offer.new(offer_price: 200)
# offer_bed_bailey.item = bed
# offer_bed_bailey.user = bailey
# bed.save
# bailey.save
# offer_bed_bailey.save


# Consider classifying satisfiers with a subcategory

#Violators: claim to be satisfying needs, yet in fact make it more difficult to satisfy a need.
#Pseudo Satisfiers: claim to be satisfying a need, yet in fact have little to no effect on really meeting such a need.
#Inhibiting Satisfiers: those which over-satisfy a given need, which in turn seriously inhibits the possibility of satisfaction of other needs.
#Singular Satisfiers: satisfy one particular need only. These are neutral in regard to the satisfaction of other needs.
#Synergistic Satisfiers: satisfy a given need, while simultaneously contributing to the satisfaction of other needs.