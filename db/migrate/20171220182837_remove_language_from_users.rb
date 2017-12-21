class RemoveLanguageFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :language, :string
  end
end
