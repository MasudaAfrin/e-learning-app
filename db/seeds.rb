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
