class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :caption
      t.string :file
      t.references :project, index: true

      t.timestamps
    end
  end
end
