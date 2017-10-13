# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

super_admin_emails = [
  "puneet.sutar@gmail.com",
  "fifihypnophonic@gmail.com"
]
Group.transaction do
  group = Group.create name: 'Balboa', donation_url: ''
  super_admin_emails.each do

  end
# add_faqs group
  group.charities.create! name: 'Red Cross',
                          description: "Add some description for number 1",
                          banner_image: 'http://images.tritondigitalcms.com/6616/sites/377/2017/08/28111305/American-Red-Cross.jpg',
                          donation_url: 'https://www.google.com.ar/search?source=hp&q=Add+donation+url&oq=Add+donation+url&gs_l=psy-ab.3...5092.20330.0.21096.53.48.3.0.0.0.273.4549.30j12j2.45.0....0...1.1.64.psy-ab..5.46.4703.6..0j35i39k1j0i67k1j0i13k1j0i22i10i30k1j0i22i30k1j0i20k1j33i21k1j33i160k1.279.ZjTU1PQNzUQ',
                          website_url: 'https://www.redcross.org'

  group.charities.create! name: 'Save the Children',
                          description: "Add some description for number 2",
                          banner_image: 'http://www.savethechildren.org/atf/cf/%7B9def2ebe-10ae-432c-9bd0-df91d2eba74a%7D/HURRICANE_IRMA_SLIDERS_MONDAY.JPG',
                          donation_url: 'https://www.google.com.ar/search?source=hp&q=Add+donation+url&oq=Add+donation+url&gs_l=psy-ab.3...5092.20330.0.21096.53.48.3.0.0.0.273.4549.30j12j2.45.0....0...1.1.64.psy-ab..5.46.4703.6..0j35i39k1j0i67k1j0i13k1j0i22i10i30k1j0i22i30k1j0i20k1j33i21k1j33i160k1.279.ZjTU1PQNzUQ',
                          website_url: 'http://www.savethechildren.org/'



  def add_faqs(group)
    group.faqs.create! question: ""
  end


  super_admin_emails.each do |email|
    User.super_admin.create!(email: email)
  end
end
