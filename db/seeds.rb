Page.create({ :menu_title            => "home",
              :title                 => "My home page",
              :permalink             => "home",
              :content               => "This is the home page",
              :position              => 1,
              :handled_by_controller => false,
              :home_page             => true,
              :active                => true })

Page.create({ :menu_title            => "portfolio",
              :title                 => "My portfolio page",
              :permalink             => "portfolio",
              :position              => 2,
              :handled_by_controller => true,
              :home_page             => false,
              :active                => true })

Page.create({ :menu_title            => "about",
              :title                 => "My about page",
              :permalink             => "about",
              :content               => "This is the about page",
              :position              => 3,
              :handled_by_controller => false,
              :home_page             => false,
              :active                => true })

Page.create({ :menu_title            => "contact",
              :title                 => "My contact page",
              :permalink             => "contact",
              :position              => 4,
              :handled_by_controller => true,
              :home_page             => false,
              :active                => true })

Page.create({ :menu_title            => "blog",
              :title                 => "My blog page",
              :permalink             => "blog",
              :position              => 3,
              :handled_by_controller => true,
              :home_page             => false,
              :active                => true })

Post.create({ :title        => "Jelle is awesome",
              :permalink    => "jelle-is-awesome",
              :content      => "This is the 'jelle is awesome' page",
              :author       => "Filip Bunkens",
              :published_at => Time.zone.now })

Post.create({ :title        => "Jelle is mega awesome",
              :permalink    => "jelle-is-mega-awesome",
              :content      => "This is the 'jelle is mega awesome' page",
              :author       => "Filip Bunkens",
              :published_at => Time.zone.now })

Post.create({ :title        => "Jelle is hyper awesome",
              :permalink    => "jelle-is-hyper-awesome",
              :content      => "This is the 'jelle is hyper awesome' page",
              :author       => "Filip Bunkens",
              :published_at => Time.zone.now })
