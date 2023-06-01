class AddAlreadyReadedToEmails < ActiveRecord::Migration[7.0]
  def change
    add_column :emails, :already_readed, :boolean
  end
end
