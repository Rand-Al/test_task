class CreateCategoriesDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :categories_doctors, id: false do |t|
      t.belongs_to :doctor
      t.belongs_to :category
    end
  end
end
