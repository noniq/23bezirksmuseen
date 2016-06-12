###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

activate :blog do |blog|
  blog.sources = "bm-{nr}.html"
  blog.permalink = "bm-{nr}.html"
end

activate :middleman_simple_thumbnailer

Time.zone = "Vienna"

###
# Helpers
###

helpers do
  def article_image(image, text)
    %{
<figure>
  <figcaption>#{text}</figcaption>
  <picture>
    <a data-lightbox href="/images/#{image}">#{image_tag image, resize_to: '300x500'}</a>
  </picture>
</figure>}
  end
end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end
