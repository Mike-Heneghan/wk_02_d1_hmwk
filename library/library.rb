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

  def add_new_book (new_book_title)
    new_book = {
      title: new_book_title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    return library.push(new_book)
  end

  def update_rental_details(title_to_be_found, student_name, date)
    title_details_to_update = get_details_from_title(title_to_be_found)
    new_details = {
      title: title_to_be_found,
      rental_details: {
        student_name: student_name,
        date: date
      }
    }
    i = library.index(title_details_to_update)
    library.delete_at(i)
    return library.insert(i, new_details)
  end
end
