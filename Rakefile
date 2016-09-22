require 'rake'
require 'erb'
require 'mkmf'

Dir.glob('tasks/*.rake').each { |r| import r }

namespace :dotfiles do

  desc 'Setup your machine'
  task :install do
    p 'Invoking Homebrew tasks'
    p '--------------------------------------------------------------------'
    
    Rake::Task['brew:install'].invoke
    Rake::Task['brew:install_dev_dependencies'].invoke
    Rake::Task['brew:start_services'].invoke
  end
end