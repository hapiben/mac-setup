namespace :sublime do

  desc 'Install Sublime'
  task :install do
    sh 'wget https://download.sublimetext.com/Sublime%20Text%20Build%203126.dmg -O sublimetext.dmg && \
       hdiutil attach sublimetext.dmg'
    sh 'cp -R /Volumes/Sublime\ Text/Sublime\ Text.app /Applications/'
    sh 'hdiutil detach /dev/disk2s1 && \
        rm sublimetext.dmg'
  end

  task :configure do
    sh 'rm -fr ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User'
    sh 'ln -s ~/Dropbox/Sublime/User ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User'
  end
end
