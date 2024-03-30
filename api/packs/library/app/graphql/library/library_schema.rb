module Library
  class LibrarySchema < ::BaseSchema
    # mutation(Library::Types::MutationType)
    query(Library::Types::QueryType)
  end
end