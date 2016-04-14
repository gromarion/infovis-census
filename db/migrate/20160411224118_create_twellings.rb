class CreateTwellings < ActiveRecord::Migration
  def change
    create_table :twellings, id: false do |t|
      t.primary_key :vivienda_id
      t.integer :radio_id
      t.integer :tipvv
      t.integer :v01
      t.integer :v02
      t.integer :v00
      t.integer :urp
      t.integer :incalserv
      t.integer :inmat
      t.integer :muni
      t.integer :local
      t.integer :incalcons
      t.integer :tothog
    end
  end
end
