# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Response.destroy_all
AnswerChoice.destroy_all
Question.destroy_all
Poll.destroy_all
User.destroy_all

user1 = User.create!(username: 'plankton')
user2 = User.create!(username: 'patrick')
user3 = User.create!(username: 'spongebob')
user4 = User.create!(username: 'squidward')
user5 = User.create!(username: 'mr_krabs')
user6 = User.create!(username: 'edward')
user7 = User.create!(username: 'bella')

poll1 = Poll.create!(user_id: user1.id, title: "Business")
poll2 = Poll.create!(user_id: user2.id, title: "Color")
poll3 = Poll.create!(user_id: user3.id, title: "Sponges")

question1 = Question.create!(poll_id: poll1.id, question: "Where is my business?")
question2 = Question.create!(poll_id: poll1.id, question: "Do you like my restaurant?")

question3 = Question.create!(poll_id: poll2.id, question: "What color am I?")
question4 = Question.create!(poll_id: poll2.id, question: "What is my favorite color?")


question5 = Question.create!(poll_id: poll3.id, question: "What do you use to clean?")
question6 = Question.create!(poll_id: poll3.id, question: "What type of cheese do I look like?")

answer_choice1 = AnswerChoice.create!(question_id: question1.id, answer: "Not here")
answer_choice2 = AnswerChoice.create!(question_id: question1.id, answer: "Overz there")
answer_choice3 = AnswerChoice.create!(question_id: question2.id, answer: "Yes")
answer_choice4 = AnswerChoice.create!(question_id: question2.id, answer: "Of course")


answer_choice5 = AnswerChoice.create!(question_id: question3.id, answer: "Pink")
answer_choice6 = AnswerChoice.create!(question_id: question3.id, answer: "Yellow")
answer_choice7 = AnswerChoice.create!(question_id: question4.id, answer: "Red")
answer_choice8 = AnswerChoice.create!(question_id: question4.id, answer: "Blue")

answer_choice9 = AnswerChoice.create!(question_id: question5.id, answer: "Shamwow")
answer_choice10 = AnswerChoice.create!(question_id: question5.id, answer: "Mop")
answer_choice11 = AnswerChoice.create!(question_id: question6.id, answer: "Cheddar")
answer_choice12 = AnswerChoice.create!(question_id: question6.id, answer: "Swiss")

response1 = Response.create!(user_id: user4.id, answer_id: answer_choice1.id)
response2 = Response.create!(user_id: user5.id, answer_id: answer_choice3.id)
response3 = Response.create!(user_id: user3.id, answer_id: answer_choice2.id)
response4 = Response.create!(user_id: user2.id, answer_id: answer_choice5.id)
response5 = Response.create!(user_id: user1.id, answer_id: answer_choice6.id)
response6 = Response.create!(user_id: user6.id, answer_id: answer_choice2.id)
response7 = Response.create!(user_id: user7.id, answer_id: answer_choice4.id)
response8 = Response.create!(user_id: user3.id, answer_id: answer_choice1.id)
response9 = Response.create!(user_id: user2.id, answer_id: answer_choice1.id)
response10 = Response.create!(user_id: user1.id, answer_id: answer_choice5.id)
response11 = Response.create!(user_id: user3.id, answer_id: answer_choice2.id)
response12 = Response.create!(user_id: user5.id, answer_id: answer_choice4.id)
response13 = Response.create!(user_id: user2.id, answer_id: answer_choice6.id)
response14 = Response.create!(user_id: user3.id, answer_id: answer_choice1.id)
response15 = Response.create!(user_id: user1.id, answer_id: answer_choice2.id)
