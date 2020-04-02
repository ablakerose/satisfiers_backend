
User.destroy_all
Need.destroy_all
Satisfier.destroy_all
Way.destroy_all

max = User.create(name: "Max", username: "max@needs.com", password: "pass123")




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

# cookingwfriends = Satisfier.create(activity: "cooking with friends", date_completed: 02-27-20, value: 1)
# cookingwfriends.user = max
# way1 = Way.new
# way1.satisfier = cookingwfriends
# cookingwfriends.save
# way1.need = subsistence
# way1.save
# way1.need = creation
# way1.save


# way2 = Way.new
# way2.satisfier = gardening
# gardening.user = max
# way2.save
# gardening.save
# # way2.need = subsistence
# # way2.save
# # way2.need = understanding
# # way2.save
# way2.need = leisure
# way2.save

# drawing = Satisfier.create(activity: "drew in a notebook outside", date_completed: 02-28-20, value: 2)
# drawing.user = max
# way3 = Way.new
# way3.satisfier = drawing
# way3.save
# drawing.save
# way3.need = freedom
# way3.save
# way3.need = leisure
# way3.save
# way3.need = creation
# way3.save


# reading = Satisfier.new(activity: "read a book for pleasure", date_completed: 02-28-20, value: 2)
# reading.user = max
# way4= Way.new
# way4.satisfier = reading
# way4.save
# reading.save
# way4.need = understanding
# way4.save
# way4.need = leisure
# way4.save

# volunteer = Satisfier.new(activity: "volunteered at food pantry", date_completed: 02-28-20, value: 2)
# volunteer.user = max
# way5= Way.new
# way5.satisfier = volunteer
# way5.save
# volunteer.save
# way5.need = participation
# way5.save
# way5.need = identity
# way5.save

# blockParty = Satisfier.new(activity: "attended the neighborhood block party", date_completed: 02-28-20, value: 2)
# blockParty.user = max
# way6= Way.new
# way6.satisfier = blockParty
# way6.save
# blockParty.save
# way6.need = participation
# way6.save
# way6.need = affection
# way6.save
# way6.need = protection
# way6.save

# napping = Satisfier.new(activity: "took a nap", date_completed: 02-28-20, value: 2)
# napping.user = max
# way7= Way.new
# way7.satisfier = napping
# way7.save
# napping.save
# way7.need = leisure
# way7.save
# way7.need = freedom
# way7.save



# playwkids = Satisfier.new(activity: "played with kids", date_completed: 02-28-20, value: 2)
# playwkids.user = max
# way8= Way.new
# way8.satisfier = playwkids
# way8.save
# playwkids.save
# way8.need = leisure
# way8.save
# way8.need = affection
# way8.save

# attendclass = Satisfier.new(activity: "attend a cooking class", date_completed: 02-28-20, value: 2)
# attendclass.user = max
# way9= Way.new
# way9.satisfier = attendclass   
# way9.save
# attendclass.save
# way9.need = leisure
# way9.save
# way9.need = understanding
# way9.save
# way9.need = creation
# way9.save



# #shopping = Satisfier.new(activity: "shopping", date_completed: 02-29-20)



p "Created #{Need.count} need(s), #{Satisfier.count} satisier(s), #{User.count} user(s), #{Way.count} join(s) ."


#Violators: claim to be satisfying needs, yet in fact make it more difficult to satisfy a need.
#Pseudo Satisfiers: claim to be satisfying a need, yet in fact have little to no effect on really meeting such a need.
#Inhibiting Satisfiers: those which over-satisfy a given need, which in turn seriously inhibits the possibility of satisfaction of other needs.
#Singular Satisfiers: satisfy one particular need only. These are neutral in regard to the satisfaction of other needs.
#Synergistic Satisfiers: satisfy a given need, while simultaneously contributing to the satisfaction of other needs.