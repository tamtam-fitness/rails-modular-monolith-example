module Library
  class GraphqlController < ::BaseGraphqlController
    private def schema
      Library::LibrarySchema
    end
  end
end
