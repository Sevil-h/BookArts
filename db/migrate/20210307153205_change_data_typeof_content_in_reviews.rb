class ChangeDataTypeofContentInReviews < ActiveRecord::Migration[6.1]
  def change
    change_table :reviews do |t|
      t.remove :content
      t.text :content
    end
  end
end
