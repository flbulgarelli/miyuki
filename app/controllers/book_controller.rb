class BookController < ApplicationController

  def show
    @book = Organization.current.book
  end

  private

  def authorization_minimum_role
    :ex_student
  end
end
