namespace :zsh do

  desc 'Install Zsh'
  task :install do
    install_zsh
  end

  task :reinstall do
    sh 'rm -fr ~/.oh-my-zsh'
    install_zsh
    setup_zshrc
  end

  desc 'Configure Zsh'
  task :configure do
    setup_zshrc
  end
end

def install_zsh
  sh 'sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"'
end

def setup_zshrc
  sh 'rm ~/.zshrc && \
      cp templates/zshrc.template ~/.zshrc'
end
