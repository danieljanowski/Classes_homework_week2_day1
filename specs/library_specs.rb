require('minitest/autorun')
require('minitest/reporters')
require_relative('../library.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestLibrary < MiniTest::Test

  def setup()
    @users =
      {"Daniel" => ["Lord of the Rings", "Programming in Ruby"],
      "Millie" => ["The Lion, the Witch and the wardrobe", "Little Women"],
      "Oliver" => ["Dog Man"]}

    @shelf = ["The Silver Chair", "Prince Caspian", "White Boots", "The Tiger Who Came to Tea"]
  end

  def test_list_users
    library = Library.new(@users, @shelf)
    result = library.list_users
    assert_equal(["Daniel", "Millie", "Oliver"], result)
  end

  def test_list_books_from_user
    library = Library.new(@users, @shelf)
    result = library.list_books_from_user("Daniel")
    assert_equal(["Lord of the Rings", "Programming in Ruby"], result)
  end

  def test_add_user
    library = Library.new(@users, @shelf)
    library.add_user("Naomi")
    assert_equal(4, library.users.keys.count)
  end

  def test_book_available
  
  end

  def test_borrow_book
    library = Library.new(@users, @shelf)
    library.borrow_book("Oliver", "The Tiger Who Came to Tea")
    assert_equal(["Dog Man", "The Tiger Who Came to Tea"], library.list_books_from_user("Oliver"))
    assert_equal(["The Silver Chair", "Prince Caspian", "White Boots"], @shelf)
  end

end
