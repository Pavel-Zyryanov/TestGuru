class AddTestsNullConstraint < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:tests, :title, false)
    change_column_null(:questions, :question, false)
    change_column_null(:answers, :answer, false)
    change_column_null(:users, :user, false)
    change_column_null(:categories, :category, false)
    change_column(:answers, :correct, :boolean)
    change_column_default(:answers, :correct, false)
    change_column_default(:tests, :level, 0)
  end
end
