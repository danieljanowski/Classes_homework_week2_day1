require('minitest/autorun')
require('minitest/reporters')
require_relative('../library.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestLibrary < MiniTest::Test

  def setup
    @users = [
      {
      name: "Daniel",
      books: [
                {
                  author: "R. R. Tolkien",
                  title: "Lord of the Rings"
                },
                {
                  author: "Chris Pine",
                  title: "Programming in Ruby"
                }
              ]
        },
        {
        name: "Millie",
        books: [
                  {
                    author: "C. S. Lewis",
                    title: "The Lion, the Witch and the wardrobe"
                  },
                  {
                    author: "Louisa May Alcott",
                    title: "Little Women"
                  }
                ]
        },
        {
        name: "Oliver",
        books: [
                  {
                    author: "Dav Pilkey",
                    title: "Dog Man"
                  }
                ]
        }
      }

    @shelf = [
              {
                author: "C. S. Lewis",
                title: "The Silver Chair"
              },
              {
                author: "C. S. Lewis",
                title: "Prince Caspian"
              },
              {
                author: "Nick Streatfield",
                title: "White Boots"
              },
              {
                author: "Judith Kerr",
                title: "The Tiger Who Came to Tea"
              }
            ]
    end

def test_


end
