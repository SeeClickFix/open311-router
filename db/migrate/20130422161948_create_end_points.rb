class CreateEndPoints < ActiveRecord::Migration
  def change
    create_table :end_points do |t|
      t.string :url
      t.string :change_set
      t.string :specification
      t.string :environment

      t.timestamps
    end
  end
end
