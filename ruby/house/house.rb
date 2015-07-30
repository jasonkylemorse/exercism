# assignment 44: house
# author: Jason Morse
# date: July 30, 2015
#

class House

  VERBS =
  {
    1 => 'lay in the house that Jack built.',
    2 => 'ate the malt',
    3 => 'killed the rat',
    4 => 'worried the cat',
    5 => 'tossed the dog',
    6 => 'milked the cow with the crumpled horn',
    7 => 'kissed the maiden all forlorn',
    8 => 'married the man all tattered and torn',
    9 => 'woke the priest all shaven and shorn',
    10 => 'kept the rooster that crowed in the morn',
    11 => 'belonged to the farmer sowing his corn'
  }

  NOUNS =
  {
    1 => 'malt',
    2 => 'rat',
    3 => 'cat',
    4 => 'dog',
    5 => 'cow with the crumpled horn',
    6 => 'maiden all forlorn',
    7 => 'man all tattered and torn',
    8 => 'priest all shaven and shorn',
    9 => 'rooster that crowed in the morn',
    10 => 'farmer sowing his corn',
    11 => 'horse and the hound and the horn'
  }

  def self.recite
    song = ["This is the house that Jack built.\n\n"]
    song << (1..11).collect { |stanza| sing(stanza) << "\n" }
    song.flatten.join.chop
  end

  def self.sing(num)
    stanza = ''
    stanza << "This is the #{NOUNS[num]}\n"
    (1..num).to_a.reverse_each do |line|
      stanza << "that #{VERBS[line]}\n"
    end
    stanza
  end

end
