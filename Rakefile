require 'rake'
require 'erb'
require 'mkmf'

namespace :brew do
  task :install do
    if find_executable 'brew'
      sh 'brew update'
    else
      system %Q{'/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'}
    end
  end
end