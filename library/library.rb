class Library

attr_accessor :library

  def initialize (input_library)
    @library = input_library
  end

  def find_book_by_name(library, title_to_be_found)
    book_to_find = Hash.new
    for book in library[:title]
      if book == title_to_be_found then book_to_find.merge(book)
      end
      rental_details
    end
  end

  # def details_from_title(library, title_to_be_found)
  #   for book in library
  #   end
  # end

end
