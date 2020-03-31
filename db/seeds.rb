
User.destroy_all
Need.destroy_all
Satisfier.destroy_all
Way.destroy_all

# "needs"
#     t.integer "level"
#     t.string "name"
  
#  "satisfiers"
#     t.integer "user_id"
#     t.integer "need_id"
#     t.string "activity"
#     t.integer "value"
  
# "ways"
#     t.string "satisfier_id"
#     t.string "need_id"

# "users"
#     t.string "name"
#     t.string "username"
#     t.string "password_digest"
   

max = User.create(name: "Max", username: "max@needs.com", password: "pass123")



cookingwfriends = Satisfier.create(activity: "cooking with friends", date_completed: 02-27-20, value: 1)
gardening = Satisfier.create(activity: "gardening", date_completed: 02-28-20, value: 1)
protection = Need.create(name: "Protection", level: 0)
affection = Need.create(name: "Affection", level: 0)
understanding = Need.create(name: "Understanding", level: 0)
participation = Need.create(name: "Participation", level: 0)
leisure = Need.create(name: "Leisure", level: 0)
creation = Need.create(name: "Creation", level: 0)
identity = Need.create(name: "Identity", level: 0) 
freedom = Need.create(name: "Freedom", level: 0) 
subsistence = Need.create(name: "Subsistence", level: 0)

cookingwfriends.user = max

way1 = Way.new
way1.satisfier = cookingwfriends
cookingwfriends.save
way1.need = subsistence
way1.save

# cookingwfriends.need = subsistence
# cookingwfriends.user = max
# subsistence.save
# cookingwfriends.save


way2 = Way.new
way2.satisfier = gardening
gardening.user = max
way2.save
gardening.save
way2.need = subsistence
way2.need = understanding
way2.need = leisure
way2.save

drawing = Satisfier.create(activity: "drawing", date_completed: 02-28-20, value: 1)
drawing.user = max
way3 = Way.new
way3.satisfier = drawing
#way3.satisfier = creation
way3.save
drawing.save
#creation.save
way3.need = leisure
way3.save

reading = Satisfier.new(activity: "reading", date_completed: 02-28-20, value: 1)
reading.user = max
way4= Way.new
way4.satisfier = reading
way4.save
reading.save
way4.need = understanding
way4.need = leisure
way4.save

volunteer = Satisfier.new(activity: "volunteer at food pantry", date_completed: 02-28-20)
volunteer.user = max
way5= Way.new
way5.satisfier = volunteer
way5.save
volunteer.save
way5.need = participation
way5.save
way5.need = identity
way5.save

blockParty = Satisfier.new(activity: "attend neighborhood block party", date_completed: 02-28-20)
blockParty.user = max
way6= Way.new
way6.satisfier = blockParty
way6.save
blockParty.save
way6.need = participation
way6.save
way6.need = affection
way6.save


# blockParty = Satisfier.new(activity: "blockParty", date_completed: 02-28-20)
# blockParty.need = participation
# blockParty.user = max
# participation.save
# blockParty.save

# napping = Satisfier.new(activity: "napping", date_completed: 02-28-20)
# napping.need = leisure
# napping.user = max
# leisure.save
# napping.save

# playwkids = Satisfier.new(activity: "playwkids", date_completed: 02-28-20)
# playwkids.need = affection
# playwkids.user = max
# affection.save
# playwkids.save


# attendProtest = Satisfier.new(activity: "attendProtest", date_completed: 02-28-20)
# attendProtest.need = freedom
# attendProtest.user = max
# freedom.save
# attendProtest.save

# journal = Satisfier.new(activity: "journal", date_completed: 02-28-20)
# journal.need = identity
# journal.user = max
# identity.save
# journal.save



# #shopping = Satisfier.new(activity: "shopping", date_completed: 02-29-20)



p "Created #{Need.count} need(s), #{Satisfier.count} satisier(s), #{User.count} user(s), #{Way.count} join(s) ."


#Violators: claim to be satisfying needs, yet in fact make it more difficult to satisfy a need.
#Pseudo Satisfiers: claim to be satisfying a need, yet in fact have little to no effect on really meeting such a need.
#Inhibiting Satisfiers: those which over-satisfy a given need, which in turn seriously inhibits the possibility of satisfaction of other needs.
#Singular Satisfiers: satisfy one particular need only. These are neutral in regard to the satisfaction of other needs.
#Synergistic Satisfiers: satisfy a given need, while simultaneously contributing to the satisfaction of other needs.