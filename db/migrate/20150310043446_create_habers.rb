class CreateHabers < ActiveRecord::Migration
  def change
    create_table :habers do |t|
      t.string :baslik
      t.text :aciklamasi
      t.string :resim
      t.string :kaynagi

      t.timestamps
    end
  end
end
