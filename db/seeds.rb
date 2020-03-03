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


subsistence = Need.create(name: "Subsistence", level: 0)
scott = User.create(name: "Scott", username: "scott@scott.com", password: "password")
satisfier_subsistence_scott = Satisfier.new(date_added: 02-29-20)
satisfier_subsistence_scott.user = scott
satisfier_subsistence_scott.need = subsistence
subsistence.save
scott.save
satisfier_subsistence_scott.save


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
