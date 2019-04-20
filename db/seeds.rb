# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# source:
# card meanings https://labyrinthos.co/blogs/tarot-card-meanings-list/the-fool-meaning-major-arcana-tarot-card-meanings

major_acrana = [
  ['Fool',
   'Recklessness, Taken Advantage of, Inconsiderate',
   'Innocence, New Beginnings, Free Spirit'],
  ['Magician',
   'Trickery, Illusions, Out of touch',
   'Willpower, Desire, Creation, Manifestation'],
  ['High Pristess',
   'Lack of center, lost iner voice, repressed feelings',
   'Intuition, Unconsciousness, Inner voice'],
  ['Emperess',
   'Dependence, smothering, lack of self-reliance',
   'Motherhood, fertility, nature'],
  ['Emperor',
   'Tyranny, rigidity, coldness',
   'Authority, structure, control, fatherhood'],
  ['Hierophant',
   'Rebellion, Subversiveness, New approaches',
   'Tradition, Conformity, Morality'],
  ['Lovers',
   'Loss of Balance, One-sidedness, disharmony',
   'Union, Duality'],
  ['Chariot',
   'Lack of control / direction, aggression',
   'Direction, control, willpower'],
  ['Justice',
   'Dishonesty, Unaccountability, Unfairness',
   'Cause and effect, clarity, truth'],
  ['Hermit',
   'Loneliness, Isolation, Lost your way',
   'Contemplation, Search for truth, Inner guidance'],
  ['Wheel of Fortune',
   'No control, clinging to control, bad luck',
   'Change, cycle, inevitable fate'],
  ['Strength',
   'Self doubt, weakness, insecurity',
   'Bravery, compassion, focus, inner strength'],
  ['Hanged Man',
   'Stalling, Needless sacrifice, fear of sacrifice',
   'Sacrifice, release, martyrdom'],
  ['Death',
   'Stagnation, fear of change, holding on',
   'End of a cycle, Change'],
  ['Temperance',
   'Extreme, Excess, imbalanced',
   'Middle path, patience, finding meaning'],
  ['Devil',
   'Freedom, release, restoring control',
   'Excess, materialism, playfulness'],
  ['Tower',
   'Disaster avoided or delayed, fear of suffering',
   'Sudden upheaval, broken pride, disaster'],
  ['Star',
   'Insecurity, discouragement, faithlessness',
   'Hope, faith, rejuvenation'],
  ['Moon',
   'Confusion, fear, misinterpretation',
   'Unconscious, illusions, intuition'],
  ['Sun',
   'Negativity, Depression, Sadness',
   'Joy, success, celebration'],
  ['Judgement',
   'No self awareness, doubt, self loathing',
   'reflection, reckoning, awakening'],
  ['World',
   'Incomplete, Lack of closure, Emptiness',
   'Fulfillment, Harmony, Completion']
]

major_acrana.each do |name, mean_reverse, mean_up, icon|
  Card.create(
    name: name, mean_reverse: mean_reverse, mean_up: mean_up, icon: icon
  )
end
