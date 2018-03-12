class Library

attr_accessor :library

  def initialize (input_library)
    @library = input_library
  end

  def get_details_from_title(title_to_be_found)
    book_to_find = {}
    for book in library
      if title_to_be_found == book[:title]
        book_to_find.merge!(book)
      end
    end
    return book_to_find
  end

  def get_rental_details_from_title(title_to_be_found)
    rental_details = get_details_from_title(title_to_be_found)
    return rental_details[:rental_details]
  end

end
