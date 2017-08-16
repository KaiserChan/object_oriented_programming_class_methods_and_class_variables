# puts Time.now
# puts Time.now + 60
# puts Time.now - 360
# puts Time.now + (60*60*24*14)

class Book

# Class variables below ----------
  @@on_shelf = []
  @@on_loan =[]

# Class methods below ----------
  # def self.due_date
  #
  # end

  def self.create(title, author, isbn)
    book_inventory = Book.new(title, author, isbn)
    @@on_shelf << book_inventory
    return book_inventory
  end

  def self.current_due_date
    due_date = Time.now + (60*60*24*14)
    return due_date
  end

  def self.overdue_books
    if current_due_date < Time.now
      return true
    else
      return false
    end
  end

  def self.browse
    @@on_shelf.sample
  end

  def self.available
    return @@on_shelf
  end

  def self.borrowed
    return @@on_loan
  end

# Instance variables below ----------
  @title
  @author
  @isbn

# Instance methods below ----------
  def initialize(title, author, isbn)
    @title = title
    @author = author
    @isbn = isbn
    @available = true
    @borrowed = false
  end

  def borrow
    if lent_out? == true
      return false
    else
      Book.current_due_date
      @@on_shelf.each do |book|
        if book == self
          @@on_shelf.delete(self)
          @@on_loan << self
          return true
        end
      end
    end
  end

  def return_to_library
    if lent_out? == false
      return false
    else
      @@on_loan.each do |book|
        if book == self
          @@on_loan.delete(self)
          @@on_shelf << self
          Book.current_due_date = nil
          return true
        end
      end
    end
  end

  def lent_out?
    if @borrowed == true
      return true
    else
      return false
    end
  end

  def due_date
    return Book.current_due_date
  end
end

book1 = Book.create("Innovator's Dilemma", "Clayton Christensen", "946")
book2 = Book.create("Zero to One", "Peter Thiel", "999")
book3 = Book.create("Orignals", "Adam Grant", "520")

# puts Book.browse.inspect
# puts Book.browse.inspect
# puts Book.browse.inspect

# puts Book.available.inspect
# puts Book.borrowed.inspect

puts book1.lent_out?
puts book1.borrow
#
puts book1.lent_out? # this doesn't return the desired result?
puts book1.borrow    # this doens't return the desired result? (circular reference?)
#
puts book1.due_date
#
puts Book.available.inspect
#
puts Book.borrowed.inspect
#
# puts Book.overdue_books.inspect
#
# puts book1.return_to_library
#
# puts book1.lent_out?
#
# puts Book.available.inspect
# puts Book.borrowed.inspect
