require 'doublespeak/version'
require 'marky_markov'

module Doublespeak
  def self.generate_timecube(size = 5)
    @timecube ||= MarkyMarkov::TemporaryDictionary.new.tap { |m| m.parse_file 'lib/texts/timecube.txt' }
    @timecube.generate_n_sentences size
  end

  def self.generate_redstate(size = 5)
    @redstate ||= MarkyMarkov::TemporaryDictionary.new.tap { |m| m.parse_file 'lib/texts/redstate.txt' }
    @redstate.generate_n_sentences size
  end
end
