#!/bin/bash

# 引数からモジュール名を取得
module_name=$1

# ディレクトリの作成
directories=(
  "app/public/${module_name}"
  "app/services/${module_name}"
  "app/models/${module_name}"
  "app/controllers/${module_name}"
  "app/views/${module_name}"
  "app/helpers/${module_name}"
  "app/graphql/${module_name}/types"
  "config/initializers"
  "config/routes"
  "lib/tasks"
  "spec"
  "db/migrate"
)

for dir in "${directories[@]}"; do
  dir_path="./packs/${module_name}/${dir}"
  echo "create ${dir_path}"
  mkdir -p "${dir_path}"
  touch "${dir_path}/.keep"
done

# package.ymlの作成
echo "create ./packs/${module_name}/package.yml"
cat << EOF > "./packs/${module_name}/package.yml"
enforce_dependencies: true
enforce_privacy: true
EOF


# config/routes/{module_name}.rb の作成と内容の書き込み
routes_file_path="./packs/${module_name}/config/routes/${module_name}.rb"
echo "create ${routes_file_path}"
mkdir -p "$(dirname "$routes_file_path")" # ディレクトリが存在しない場合は作成
cat << EOF > "${routes_file_path}"
namespace :${module_name} do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/${module_name}/graphql"
  end

  post "/graphql", to: "graphql#execute"
end
EOF

echo "完了しました。"
