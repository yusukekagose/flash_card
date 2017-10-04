class AddColumnToMeanings < ActiveRecord::Migration[5.1]
  def change
    add_column :meanings, :level, :integer
    add_column :meanings, :eiken, :integer
    add_column :meanings, :toeic, :integer
    add_column :meanings, :parse, :string
  end
end
