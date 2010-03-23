PITSLAMP
========

GET THE SITE ONLINE
-------------------

These are the small steps you should execute to get this site online.

First of all you should install the necessary gems:

    bundle install

Next you should change the configuration data in the config/config.yml file to your personal credentials:

    pitslamp:
      owner_email:    <email-from-the-owner>
      gravatar_email: <email-user-to-fetch-your-gravatar>
      login:          <your-admin-login>
      password:       <-your-admin-password>

Next create and migrate your database:

    rake db:create
    rake db:migrate

Now the application should work!

ADMINISTRATING PAGES
--------------------

Below you'll find the links to administrate the website

- **create/edit/delete pages**: [/admin/pages](http://localhost:3000/admin/pages)
- **create/edit/delete flickr sets**: [/admin/flickr](http://localhost:3000/admin/flickr)
- **create/edit/delete blog posts**: [/admin/blog](http://localhost:3000/admin/blog)
- **edit menu sorting**: [/admin/menu](http://localhost:3000/admin/menu)

QUESTIONS?
----------

Just ask here on Github!