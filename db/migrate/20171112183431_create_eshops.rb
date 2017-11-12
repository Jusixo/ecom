class CreateEshops < ActiveRecord::Migration[5.1]
  def change
    create_table :eshops do |t|

      t.timestamps
    end
  end
end
