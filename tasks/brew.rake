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
  task :bundle do
    sh 'brew bundle'
  end
end
