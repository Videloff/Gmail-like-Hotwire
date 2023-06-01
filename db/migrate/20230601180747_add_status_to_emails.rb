class AddStatusToEmails < ActiveRecord::Migration[7.0]
  def change
    add_column :emails, :status, :text
  end
end
