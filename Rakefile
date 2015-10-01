require 'bundler/gem_tasks'
require 'fileutils'

desc 'Update the jquery.smartbanner Javascript and CSS files'
task :update_jquery_smartbanner do
  def download_jquery_smartbanner(version)
    base_url = 'https://raw.githubusercontent.com/jasny/jquery.smartbanner'
    puts "Downlading jquery-smartbanner #{version} ..."

    `curl -o vendor/assets/javascripts/jquery.smartbanner.js \
      #{base_url}/v#{version}/jquery.smartbanner.js`

    `curl -o vendor/assets/stylesheets/jquery.smartbanner.css \
      #{base_url}/v#{version}/jquery.smartbanner.css`

    `curl -o vendor/assets/stylesheets/dark_background_stripes.gif \
    #{base_url}/v#{version}/dark_background_stripes.gif`

  end

  FileUtils.mkdir_p('vendor/assets/javascripts')
  FileUtils.mkdir_p('vendor/assets/stylesheets')
  download_jquery_smartbanner(JquerySmartbannerRails::Rails::VERSION)
  puts "\e[32mDone!\e[0m"
end
desc 'Update the jquery.smartbanner FORK with Javascript and CSS files'

task :update_jquery_smartbanner_with_fork do
  def download_jquery_smartbanner_fork
    base_url = 'https://raw.githubusercontent.com/ratibus/jquery.smartbanner/patch-1'
    puts "Downlading jquery-smartbanner FORK ..."

    `curl -o vendor/assets/javascripts/jquery.smartbanner.js \
    #{base_url}/jquery.smartbanner.js`

    `curl -o vendor/assets/stylesheets/jquery.smartbanner.css \
    #{base_url}/jquery.smartbanner.css`

    `curl -o vendor/assets/stylesheets/dark_background_stripes.gif \
    #{base_url}/dark_background_stripes.gif`

  end

  FileUtils.mkdir_p('vendor/assets/javascripts')
  FileUtils.mkdir_p('vendor/assets/stylesheets')
  download_jquery_smartbanner_fork
  puts "\e[32mDone!\e[0m"
end
