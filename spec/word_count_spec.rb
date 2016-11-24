require('rspec')
require('pry')
require('word_count.rb')

describe('Stringm#word_count') do
  it("will count an exact match of a word if it appears only one time") do
    expect("hello world".word_count("hello", "exact")).to(eq(1))
  end
  it("will count an exact match of a word if it appears more than one time") do
    expect("hello mudda, hello fadda".word_count("hello", "exact")).to(eq(2))
  end
  it("will count a word if it appears as part of another word") do
    expect("Cathrine made dinner laste night".word_count("cat", "partial")).to(eq(1))
  end
  it("will count a word if it appears as part of another word and also counts exact matches.") do
    expect("the cat and the catacomb".word_count("cat", "partial")).to(eq(2))
  end
end
