module Library
  module Types
    class BookType < ::Types::BaseObject
      field :id, ID, null: false
      field :author, String, null: false
      field :published_year, Integer, null: false
      field :title, String, null: false
    end
  end
end