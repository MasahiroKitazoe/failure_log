class AddColumnsToFailures < ActiveRecord::Migration
  def change
    add_column :failures, :title, :string
    add_column :failures, :date, :date
  end
end
