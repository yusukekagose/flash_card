# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#100.times do |word|
    #Word.create!(english_word: "word#{word}")
#end

#puts "word was created"

#100.times do |word|
    #Meaning.create!(word_id: word+=1,
                    #meaning: "meaning#{word}",
                    #parse: "意味#{word}",
                    #)
#end

#puts "word was created"
User.create(
            email: "admin@test.com",
            password: "asdfasdf",
            password_confirmation: "asdfasdf",
            nick_name: "Admin",
            roles: "admin")

word_id = 0
d = "動"
k = "形"
kd = "形動"
Word.create!(english_word: "you")
Meaning.create!(word_id: word_id += 1, meaning: "あなた", parse: d)
Word.create!(english_word: "not")
Meaning.create!(word_id: word_id += 1, meaning: "ではない", parse: k)
Word.create!(english_word: "her")
Meaning.create!(word_id: word_id += 1, meaning: "彼女の", parse: k)
Word.create!(english_word: "go")
Word.create!(english_word: "as")
Word.create!(english_word: "think")
Word.create!(english_word: "take")
Word.create!(english_word: "come")
Word.create!(english_word: "then")
Word.create!(english_word: "way")
Word.create!(english_word: "more")
Word.create!(english_word: "give")
Word.create!(english_word: "very")
Word.create!(english_word: "through")

