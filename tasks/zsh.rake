namespace :brew do

  desc 'Install Zsh'
  task :install do
    unless File.exists?('~/.oh-my-zsh')
      sh 'sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"'
    else
      p 'Zsh already installed'
    end
  end
end