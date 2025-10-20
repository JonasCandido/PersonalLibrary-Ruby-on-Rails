require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  setup do
    @book = books(:one)
    @author = authors(:one)
    @bookcase = bookcases(:one)
  end

  test "visiting the index" do
    visit books_url
    assert_selector "h1", text: "Books"
  end

  test "should create book" do
    visit books_url
    click_on "New book"

    select @author.name, from: "book_author_id", match: :first
    select @bookcase.name, from: "book_bookcase_id", match: :first
    fill_in "Comment", with: @book.comment
    fill_in "Rating", with: @book.rating
    fill_in "Title", with: "#{@book.title} #{SecureRandom.hex(4)}"
    click_on "Create Book"

    assert_text "Book was successfully created"
    click_on "Back"
  end

  test "should update Book" do
    visit book_url(@book)
    click_on "Edit this book", match: :first

    select @book.author.name, from: "book_author_id", match: :first
    select @book.bookcase.name, from: "book_bookcase_id", match: :first
    fill_in "Comment", with: @book.comment
    fill_in "Rating", with: @book.rating
    fill_in "Title", with: @book.title
    click_on "Update Book"

    assert_text "Book was successfully updated"
    click_on "Back"
  end

  test "should destroy Book" do
    visit book_url(@book)
    click_on "Destroy this book", match: :first

    assert_text "Book was successfully destroyed"
  end
end
