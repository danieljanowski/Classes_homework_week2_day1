class Library

  attr_accessor :users, :shelf

  def initialize(users, shelf)
    @users = users
    @shelf = shelf
  end

  def list_users
    return users.keys
  end

  def list_books_from_user(name)
    return @users[name]
  end

  def add_user(name)
    @users[name] = []
  end

  def book_available(book)
    return @shelf.include?(book)
  end

  def borrow_book(name, book)
    @users[name].push(book)
    @shelf.delete(book)
  end

  def return_book(name, book)
    @users[name].delete(book)
    @shelf.push(book)
  end

  def locate_book(book)
    return "shelf" if book_available(book)
    for user in @users
      return user[0] if user[1].include?(book)
    end
    return "lost"
  end

end
