require 'rubygems'
require 'sitemap_generator'

SitemapGenerator::Sitemap.default_host = 'http://dreamshine.com.ua'
SitemapGenerator::Sitemap.create do
  add '/galary', :changefreq => 'weekly', :priority => 0.9
  add '/services', :changefreq => 'weekly'
  add '/products', :changefreq => 'weekly'
  add '/about/', :changefreq => 'weekly'
  add "/about/cosmetics", :changefreq => 'weekly'
  add "/about/meguiars", :changefreq => 'weekly'
  add "/about/steam_force", :changefreq => 'weekly'
  add "/about/steam_safety", :changefreq => 'weekly'
  add "/about/steam_eco", :changefreq => 'weekly'
  add "/about/employee", :changefreq => 'weekly'
  add "/about/coffee", :changefreq => 'weekly'
  add "/about/guarantee", :changefreq => 'weekly'
  add "/about/discount", :changefreq => 'weekly'
  add "/about/subscription", :changefreq => 'weekly'

end
SitemapGenerator::Sitemap.ping_search_engines # called for you when you use the rake task