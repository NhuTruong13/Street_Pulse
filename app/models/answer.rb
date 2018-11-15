class Answer < ApplicationRecord
  belongs_to :review
  # open questions (cfr 1 thru 4) sit in the Review model, all other questions are to be found right below!
  QUESTIONS = {
    :q5 => {:title => "What kind of people live in your area?", :category => "text"},
    :q6 => {:title => "How would you describe the income of people living in your area?", :category => "text"},
    :q7 => {:title => "Are your neighbours friendly? (do you say HI to them? Do you know the name of some neighbours in your street? Do you have their phone numbers?", :category => "range"},
    :q8 => {:title => "Are there lots of activities and community events?", :category => "range"},
    :q9 => {:title => "Would you like to spend more than 5 years in this area?", :category => "range"},
    :q10 => {:title => "Is your neighbourhood a quiet place?", :category => "range"},
    :q11 => {:title => "would you say htat this place is green? In other words, are there lots of trees/parks in the area?", :category => "range"},
    :q12 => {:title => "Is your area clean in general?", :category => "range"},
    :q13 => {:title => "Is it easy to find a parking spot?", :category => "range"},
    :q14 => {:title => "Are there a lot of parking spots for cars?", :category => "range"},
    :q15 => {:title => "Are there a lot of parking places for bikes?", :category => "range"},
    :q16 => {:title => "Are they a lot of public transportation facilities? Ask to rate the tram / bus / metro / train", :category => "range"},
    :q17 => {:title => "Are there a lot of bike lanes in the area?", :category => "range"},
    :q18 => {:title => "Are the pavements well maintained?", :category => "range"},
    :q19 => {:title => "Are the street well illuminated?", :category => "range"},
    :q20 => {:title => "Are there nice playgrounds for the children?", :category => "range"},
    :q21 => {:title => "Is the area dog friendly?", :category => "range"}
  }.freeze
end
