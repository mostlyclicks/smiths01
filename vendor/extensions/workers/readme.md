# Workers extension for Refinery CMS.

## How to build this extension as a gem

    cd vendor/extensions/workers
    gem build refinerycms-workers.gemspec
    gem install refinerycms-workers.gem

    # Sign up for a http://rubygems.org/ account and publish the gem
    gem push refinerycms-workers.gem