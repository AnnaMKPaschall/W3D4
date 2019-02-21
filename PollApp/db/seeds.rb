# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Poll.destroy_all
Question.destroy_all
AnswerChoice.destroy_all
Response.destroy_all




users = User.create!([{user_name: 'nswerner'}, {user_name: 'apaschall'},{user_name: 'r0ckf0rd'},{user_name: 'lumen'}])
polls = Poll.create([{author_id: User.first.id, title: 'a/A Student Poll'},{author_id: User.second.id, title: 'Second Poll'}])
questions = Question.create([
    {poll_id: Poll.first.id, question: "Your favorite NYC restaurant" },
    {poll_id: Poll.first.id, question: "How do you commute to app Academy?"},
    {poll_id: Poll.second.id, question: 'How many hours a night do you spend on homework?'}])

answer_choices = AnswerChoice.create([
    {question_id: Question.first.id, answer_choice: 'Chick-fil-a'},
    {question_id: Question.first.id, answer_choice: 'Mighty Quinns'},
    {question_id: Question.second.id, answer_choice: 'Train'},
    {question_id: Question.second.id, answer_choice: 'Fly'},
    {question_id: Question.third.id, answer_choice: '0'},
    {question_id: Question.third.id, answer_choice: 'what is sleep?'},
    {question_id: Question.third.id, answer_choice: 'Zzzzzzzz'}
])

responses = Response.create([
    {answer_choice_id: AnswerChoice.first.id, user_id: users.second.id}, 
    {answer_choice_id: AnswerChoice.third.id, user_id: users.second.id}, 
    {answer_choice_id: AnswerChoice.second.id, user_id: users.third.id}, 
    {answer_choice_id: AnswerChoice.fourth.id, user_id: users.third.id}, 
    {answer_choice_id: AnswerChoice.fifth.id, user_id: users.first.id}, 
    {answer_choice_id: AnswerChoice.all[5].id, user_id: users.first.id} 
])
