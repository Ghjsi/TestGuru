# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(login: 'Petya')
category_html = Category.create(title: 'HTML')
test_html = Test.create("title: 'HTML. Test 1.', level: 0, category_id: ?", category_html.id)
question = Question.create("body: 'Для чего используют тег <p>?', test_id: ?", test_html.id)
answer_1 = Answer.create("body: 'Для нового абзаца', correct: true, question_id: ?", question.id)
answer_2 = Answer.create("body: 'Для выравнивания по центру', correct: false, question_id: ?", question.id) #для false по умолч не откатилась миграция,где было true сначала по умолч
answer_3 = Answer.create("body: 'Для полужирного шрифта', correct: false, question_id: ?", question.id)

#Answer.create([{body: 'Для нового абзаца', correct: true, question_id: 1}, 
#{body: 'Для выравнивания по центру', correct: false, question_id: 1}, 
#{body: 'Для полужирного шрифта', correct: false, question_id: 1}])