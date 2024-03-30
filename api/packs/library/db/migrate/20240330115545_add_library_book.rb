class AddLibraryBook < ActiveRecord::Migration[7.0]
  def change
    create_table :library_books, comment: '図書情報を管理するテーブル' do |t|
      t.string :title, null: false, comment: 'タイトル'
      t.string :author, null: false, comment: '著者'
      t.integer :published_year, null: false, comment: '出版年'
      t.timestamps
    end
  end
end
