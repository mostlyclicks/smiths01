# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Added by Refinery CMS Pages extension
Refinery::Pages::Engine.load_seed

Refinery::PagePart.create(
  refinery_page_id:1,
  title:"About",
  body:"<p class='lead'>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua.</p><p>Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>",
  position:0
)

Refinery::PagePart.create(
  refinery_page_id:1,
  title:"Phone",
  body:"(555) 555-5555",
  position:1
)

Refinery::PagePart.create(
  refinery_page_id:1,
  title:"Email",
  body:"email@example.com",
  position:2
)

Refinery::PagePart.create(
  refinery_page_id:1,
  title:"Hours",
  body:"<table class='table'>
    <tbody>
    <tr>
      <td>Mon thru Fri</td>
      <td>10am to 5pm</td>
    </tr>
    <tr>
      <td>Sat</td>
      <td>10am to 5pm</td>
    </tr>
    <tr>
      <td>Sun</td>
      <td>closed</td>
    </tr>
    </tbody>
  </table>",
  position:3
)

Refinery::PagePart.create(
  refinery_page_id:1,
  title:"Location",
  body:"Acme Company<br />
  5555 Any Street<br />
  AnyTown, WI 55555",
  position:4
)

Refinery::PagePart.create(
  refinery_page_id:1,
  title:"Facebook",
  body:"<i class='fa fa-facebook-square'></i> <a href=''>Like us on Facebook</a>",
  position:5
)

Refinery::PagePart.create(
  refinery_page_id:1,
  title:"Twitter",
  body:"<i class='fa fa-twitter-square'></i> <a href=''>Twitter</a>",
  position:6
)

Refinery::PagePart.create(
  refinery_page_id:1,
  title:"YouTube",
  body:"<i class='fa fa-youtube-square'></i> <a href=''>YouTube</a>",
  position:7
)

Refinery::PagePart.create(
  refinery_page_id:1,
  title:"LinkedIn",
  body:"<i class='fa fa-linkedin-square'></i> <a href=''>Linked In</a>",
  position:8
)

Refinery::PagePart.create(
  refinery_page_id:1,
  title:"Promo",
  body:"<h1>Promo Headline</h1><p>Promo description (keep it short)</p>",
  position:9
)


