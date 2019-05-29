class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :title
      t.references :user, foreign_key: true
      t.text :description
      t.string :company_logo
      t.string :location
      t.string :website_url
      t.string :twitter_url
      t.string :facebook_url
      t.string :linkedin_url

      t.timestamps
    end
  end
end
