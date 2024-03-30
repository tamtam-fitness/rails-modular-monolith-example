namespace :library do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/library/graphql"
  end

  post "/graphql", to: "graphql#execute"
end
