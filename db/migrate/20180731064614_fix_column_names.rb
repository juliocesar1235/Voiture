class FixColumnNames < ActiveRecord::Migration[5.1]
    def change
      change_table :comments do |t|
        t.rename :article_id, :car_id
    end
  end
end
