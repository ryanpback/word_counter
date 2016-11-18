require('rspec')
require('pry')
require('word_count.rb')

describe('Fixnum#word_count') do
  it("will count a word if it appears only one time") do
    expect("hello world".word_count("hello")).to(eq(1))
  end
  it("will count a word if it appears more than one time") do
    expect("hello mudda, hello fadda".word_count("hello")).to(eq(2))
  end
  it("will count a word if it appears as part of another word") do
    expect("the cat climbed the rope that Cathrine made for the cat".word_count("cat")).to(eq(3))
  end
end
