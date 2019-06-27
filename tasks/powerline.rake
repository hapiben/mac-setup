namespace :powerline do

  desc 'Configure Powerline'
  task :configure do
    install_powerline_fonts
  end
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
