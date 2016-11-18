require('rspec')
require('pry')
require('word_count.rb')

describe('Stringm#word_count') do
  it("will count a word if it appears only one time - partial and specific words") do
    expect("hello world".word_count("hello", "partial")).to(eq(1))
    expect("hello world".word_count("hello", "exact")).to(eq(1))
  end
  it("will count a word if it appears more than one time - partial and specific words") do
    expect("hello mudda, hello fadda".word_count("hello", "partial")).to(eq(2))
    expect("hello mudda, hello fadda".word_count("hello", "exact")).to(eq(2))

  end
  it("will count a word if it appears as part of another word - partial and specific words") do
    expect("the cat climbed the rope that Cathrine made for the cat".word_count("cat", "partial")).to(eq(3))
    expect("the cat climbed the rope that Cathrine made for the cat".word_count("cat", "exact")).to(eq(2))
  end
end
