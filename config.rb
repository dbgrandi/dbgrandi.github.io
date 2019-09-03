###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###


###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash

  # Use relative URLs
  activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end

# github deploy
#activate :deploy do |deploy|
#  deploy.method = :git
#  deploy.build_before = true
#  deploy.branch   = "master"
#  deploy.remote   = "git@github.com:dbgrandi/dbgrandi.github.io.git"
#end

activate :blog do |blog|
  blog.paginate = true
  blog.sources = "posts/:title.html"
  blog.permalink = ":title.html"
  blog.per_page = 20
  blog.page_link = "page/:num"
  blog.layout = "article"
end

activate :syntax, line_numbers: false
set :markdown_engine, :kramdown

activate :directory_indexes
# activate :livereload

require 'zen-grids'

# from http://www.okgrow.com/posts/2013/03/17/how-our-blog-works/
require 'lib/blog_helpers'
helpers BlogHelpers
