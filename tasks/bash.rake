namespace :bash do

  desc 'Configure bash_profile'
  task :configure do
    setup_bash_profile
  end
end

def setup_bash_profile
  if File.exist? File.expand_path('~/.bash_profile')
    sh 'rm ~/.bash_profile'
  end

  sh 'cp templates/bash_profile.template ~/.bash_profile && \
      source ~/.bash_profile'
end
