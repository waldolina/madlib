class CreatePoems < ActiveRecord::Migration
  def change
    create_table :poems do |t|

      t.string :noun
      t.string :adverb
      t.string :pluralnoun
      t.string :verb
      t.string :adjective
      t.string :plant

      t.timestamps null: false
    end
  end
end
