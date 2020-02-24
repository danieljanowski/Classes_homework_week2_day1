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
    @users["Naomi"] = []
  end

  def borrow_book(name, book)
    @users[name].push(book)
    @shelf.delete(book)
  end

end
