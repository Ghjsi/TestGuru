# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(login: 'Petya')

categories = Category.create!([
  {c_title: 'HTML'},
  {c_title: 'CSS'},
  {c_title: 'Machine Learning'},
])

tests = Test.create!([
  {title: 'HTML. Test 1.', level: 0, category_id: categories[0].id},

  {title: 'CSS. Test 1.', level: 1, category_id: categories[1].id},

  {title: 'Machine Learning. Test 1.', level: 2, category_id: categories[2].id}
])

questions = Question.create!([
  {body: '1. Для чего используют тег <p>?', test_id: tests[0].id},
  {body: '2. Какие единицы измерения могут использоваться для атрибута ширины?', test_id: tests[0].id},
  {body: '3. Использование какого тэга позволяет добавлять одну строку текста без начала нового абзаца?',
  	test_id: tests[0].id},

  {body: '1. Какое из значений свойства background-attachment закрепляет фоновое изображение относительно окна браузера?', 
  	test_id: tests[1].id},
  {body: '2. Какое максимальное одновременое количество значений может быть у свойства border-radius?',
  	test_id: tests[1].id},
  {body: '3. Какая высота у HTML-элемента div без содержимого?', test_id: tests[1].id},

  {body: '1. Задача классификации - это:', test_id: tests[2].id},
  {body: '2. Задача регрессии - это: ', test_id: tests[2].id},
  {body: '3. Задача ранжирования - это:', test_id: tests[2].id},


])

answers = Answer.create!([
  {body: 'Для нового абзаца', correct: true, question_id: questions[0].id},
  {body: 'Для выравнивания по центру', question_id: questions[0].id},
  {body: 'Для полужирного шрифта', question_id: questions[0].id},

  {body: 'Пиксели и %', correct: true, question_id: questions[1].id},
  {body: 'Миллиметры и сантиметры', question_id: questions[1].id},
  {body: 'Пиксели и миллиметры', question_id: questions[1].id},

  {body: '<line/>', question_id: questions[2].id},
  {body: '<br/>', correct: true, question_id: questions[2].id},
  {body: '<td/>', question_id: questions[2].id},



  {body: 'scroll', question_id: questions[3].id},
  {body: 'local', question_id: questions[3].id},
  {body: 'fixed',correct: true, question_id: questions[3].id},

  {body: '8',correct: true, question_id: questions[4].id},
  {body: '2', question_id: questions[4].id},
  {body: '4', question_id: questions[4].id},

  {body: '16px', question_id: questions[5].id},
  {body: '100%', question_id: questions[5].id},
  {body: '20px',correct: true, question_id: questions[5].id},



  {body: 'Множество объектов, разделенных на классы ',correct: true, question_id: questions[6].id},
  {body: 'Исследование влияние одного или нескольких признаков на объект', question_id: questions[6].id},
  {body: 'Определение порядка признака согласно рангу', question_id: questions[6].id},

  {body: 'Множество объектов, разделенных на классы ', question_id: questions[7].id},
  {body: 'Исследование влияние одного или нескольких признаков на объект ',correct: true, question_id: questions[7].id},
  {body: 'Определение порядка признака согласно рангу ', question_id: questions[7].id},

  {body: 'Множество объектов, разделенных на классы ', question_id: questions[8].id},
  {body: 'Исследование влияние одного или нескольких признаков на объект ', question_id: questions[8].id},
  {body: 'Определение порядка признака согласно рангу ',correct: true, question_id: questions[8].id}

])

result = Result.create!(test_id: 1, user_id: 1)