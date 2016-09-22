namespace :brew do

  desc 'Install Homebrew'
  task :install do
    if find_executable 'brew'
      sh 'brew update'
    else
      sh '/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'
    end
  end

  desc 'Install development dependencies'
  task :install_dev_dependencies do
    sh 'brew install rbenv ruby-build \
        z mongo mysql redis postgresql \
        imagemagick qt v8 chromedriver'
  end

  desc 'Start Homebrew services'
  task :start_services do
    sh 'brew services start mongodb'
    sh 'brew services start mysql'
    sh 'brew services start redis'
    sh 'brew services start postgresql'
  end
end