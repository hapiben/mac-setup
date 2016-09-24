namespace :iterm do

  desc 'Configure iterm'
  task :configure do
    copy_plist
    install_powerline_fonts
  end
end

def copy_plist
  sh 'rm -fr ~/Library/Preferences/com.googlecode.iterm2.plist && \
      cp templates/com.googlecode.iterm2.plist ~/Library/Preferences'
end

def install_powerline_fonts
  unless Dir.entries('/Users/ben/Library/Fonts').reject { |entry| entry =~ /\.{1,2}$/ }.any?
    sh 'wget https://github.com/powerline/fonts/archive/master.zip && \
        unzip master.zip && \
        fonts-master/install.sh'
    sh 'rm master.zip && \
        rm -fr fonts-master'
  end
end
