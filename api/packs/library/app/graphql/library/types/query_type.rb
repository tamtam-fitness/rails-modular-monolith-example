module Library
  module Types
    class QueryType < ::Types::BaseQueryType
      field :books, [Types::BookType], null: false

      def books
        Book.all
      end
    end
  end
end