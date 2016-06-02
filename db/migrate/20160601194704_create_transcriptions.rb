class CreateTranscriptions < ActiveRecord::Migration
  def change
    create_table :transcriptions do |t|
      t.string :title
      t.string :user_name
      t.string :picture
      t.text :description
      t.text :transcription

      t.timestamps null: false
    end
  end
end
