# == Schema Information
#
# Table name: library_books
#
#  id                     :bigint           not null, primary key
#  author(著者)           :string(255)      not null
#  published_year(出版年) :integer          not null
#  title(タイトル)        :string(255)      not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
module Library
  class Book < ::ApplicationRecord
  end
end
