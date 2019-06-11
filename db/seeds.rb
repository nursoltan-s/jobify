def seed_image(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/#{file_name}.jpg"))
end

# Create Users
users = [
  { first_name: 'John', last_name: 'Doe', email: 'a@b.com', password: 'q1w2e3r4', password_confirmation: 'q1w2e3r4' },
  { first_name: 'Steven', last_name: 'Smith', email: 'test@gmail.com', password: 'q1w2e3r4', password_confirmation: 'q1w2e3r4' }
]

users.each do |user|
  User.create(user)
end

# Create Companies

companies = [
  { 
    title: 'Shopify', 
    user_id: 1, 
    description: 'A Great E-Commerce Platform which used Ruby on Rails as their backend framework', 
    location: 'Mountain View, LA',
    website_url: 'https://www.shopify.com',
    twitter_url: 'https://www.twitter.com/shopify',
    facebook_url: 'https://www.facebook.com/shopify',
    linkedin_url: 'https://www.linkedin.com/shopify'
  },
  { 
    title: 'Behance', 
    user_id: 1, 
    description: 'Ideal place to see beatiful mockups and designs', 
    location: 'Sydney, Australia',
    website_url: 'https://www.behance.com',
    twitter_url: 'https://www.twitter.com/behance',
    facebook_url: 'https://www.facebook.com/behance',
    linkedin_url: 'https://www.linkedin.com/behance'
  },
  { 
    title: 'Codepen', 
    user_id: 2, 
    description: 'Online Code Editor for Front end developers', 
    location: 'Ontario, Canada',
    website_url: 'https://www.codepen.com',
    twitter_url: 'https://www.twitter.com/codepen',
    facebook_url: 'https://www.facebook.com/codepen',
    linkedin_url: 'https://www.linkedin.com/codepen'
  },
  { 
    title: 'Adroll', 
    user_id: 2, 
    description: 'Growth Marketing Platform', 
    location: 'Tokio, Japan',
    website_url: 'https://www.adroll.com',
    twitter_url: 'https://www.twitter.com/adroll',
    facebook_url: 'https://www.facebook.com/adroll',
    linkedin_url: 'https://www.linkedin.com/adroll'
  }
]

companies.each do |company|
  attributes[:company_logo] = seed_image("#{company[:title]}")
  temp = Company.find_or_create_by_name(company, attributes)
end

