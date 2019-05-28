class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.references :company, foreign_key: true
      t.string :title
      t.string :job_type
      t.string :location
      t.text :description
      t.string :hero_image

      t.timestamps
    end
  end
end
