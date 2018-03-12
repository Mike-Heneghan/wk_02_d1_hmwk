# Extension:
# Model a Library as a class.
#
# Create a class for a Library that has an array of books. Each book should be a hash with a title, which is a string, and rental details, which is another hash with a student name and due date.
# This should look something like:
# #
#   {
#     title: "lord_of_the_rings",
#     rental_details: {
#      student_name: "Jeff",
#      date: "01/12/16"
#     }
# #   }
# Create a getter for the books
# Create a method that takes in a book title and returns all of the information about that book.
# Create a method that takes in a book title and returns only the rental details for that book.
# Create a method that takes in a book title and adds it to our book list (Add a new hash for the book with the student name and date being left as empty strings)
# Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.

require ('minitest/autorun')
require_relative ('../library.rb')

class TestLibrary < Minitest::Test

  def setup
    @library_of_books = [
      {
        title: "lord_of_the_rings",
        rental_details:
        {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "sapiens",
        rental_details:
        {
          student_name: "Mike",
          date: "10/02/17"
        }
      },
      {
        title: "a_scanner_darkly",
        rental_details:
        {
          student_name: "Simon",
          date: "23/5/17"
        }
      },
      {
        title: "ruby_for_beginners",
        rental_details:
        {
          student_name: "Pawel",
          date: "17/02/18"
        }
      }
    ]
  end

  def test_library_getters
    library  = Library.new(@library_of_books)
    result = library.library
    assert_equal(@library_of_books, result)
  end

  def test_get_details_from_title
    library  = Library.new(@library_of_books)

    result = library.get_details_from_title("a_scanner_darkly")

    answer = {
      title: "a_scanner_darkly",
      rental_details:
      {
        student_name: "Simon",
        date: "23/5/17"
      }}

    assert_equal(answer, result)
  end

  def test_get_rental_details_from_title
    library  = Library.new(@library_of_books)
    result = library.get_rental_details_from_title("a_scanner_darkly")
    answer =
      {
        student_name: "Simon",
        date: "23/5/17"
      }
    assert_equal(answer, result)
  end

  def test_add_new_book
    library  = Library.new(@library_of_books)
    result = library.add_new_book("a_confederacy_of_dunces")
    assert_equal(5, result.count)
  end

  def test_update_rental_details
    library  = Library.new(@library_of_books)
    result = library.update_rental_details("a_scanner_darkly", "Mike", "12/3/18")
    answer = [
      {
        title: "lord_of_the_rings",
        rental_details:
        {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "sapiens",
        rental_details:
        {
          student_name: "Mike",
          date: "10/02/17"
        }
      },
      {title: "a_scanner_darkly",
        rental_details:
        {
          student_name: "Mike",
          date: "12/3/18"
          }},
          {
            title: "ruby_for_beginners",
            rental_details:
            {
              student_name: "Pawel",
              date: "17/02/18"
            }
          }
      ]

    assert_equal(answer, result)
  end





end
