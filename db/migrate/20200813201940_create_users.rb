class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :avatar, default: 'https://img.favpng.com/15/21/9/plant-green-png-favpng-qNjvxTd5cKYuGiE8fi4asQBfc.jpg'

      t.timestamps
    end
  end
end
