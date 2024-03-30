class ApplicationRecord < ActiveRecord::Base
  class << self
    # 例: library_books のようなテーブル名を返す
    def table_name_prefix
      "#{name.deconstantize.underscore}_"
    end
    def table_name
      "#{table_name_prefix}#{name.demodulize.pluralize.underscore}"
    end
  end
end
