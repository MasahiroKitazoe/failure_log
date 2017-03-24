class RemoveDateFromFailures < ActiveRecord::Migration
  def change
    remove_column :failures, :date, :date
  end
end
