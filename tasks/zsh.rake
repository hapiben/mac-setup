namespace :zsh do

  desc 'Install Zsh'
  task :install do
    sh 'sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"'
  end

  desc 'Configure Zsh'
  task :configure do
    setup_theme
    setup_zshrc
  end
end

def setup_theme
  unless File.exist? File.expand_path('~/.oh-my-zsh/themes/honukai.zsh-theme')
    sh 'wget https://github.com/oskarkrawczyk/honukai-iterm-zsh/archive/master.zip && \
        unzip master.zip'
    sh 'mv honukai-iterm-zsh-master/honukai.zsh-theme ~/.oh-my-zsh/themes/honukai.zsh-theme && \
        rm master.zip && \
        rm -fr honukai-iterm-zsh-master'
  end
end

def setup_zshrc
  sh 'rm ~/.zshrc && \
      cp templates/zshrc.template ~/.zshrc'
end
