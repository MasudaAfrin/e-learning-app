# frozen_string_literal: false

# create courses
courses = [
  {
    title: 'Bangla fundamental',
    subject: 'bangla',
    description: 'Learn bangla',
  },
  {
    title: 'English fundamental',
    subject: 'english',
    description: 'Learn english',
  },
  {
    title: 'Math fundamental',
    subject: 'math',
    description: 'Learn math',
  },
  {
    title: 'GK fundamental',
    subject: 'gk',
    description: 'Learn gk',
  },
  {
    title: 'Religion fundamental',
    subject: 'religion',
    description: 'Learn religion',
  }
]
Course.create!(courses)

# create user
User.create!(full_name: 'John Doe',
             email: 'abc@gmail.com',
             password: '123456',
             password_confirmation: '123456',
             phone: '01912345678')
