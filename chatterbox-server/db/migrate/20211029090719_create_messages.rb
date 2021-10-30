class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |c|
      c.string :body 
      c.string :username 
      c.timestamps
  end
end
end
