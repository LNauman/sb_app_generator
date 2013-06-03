def template(from, to)
  erb = File.read(File.expand_path("../templates/#{from}", __FILE__))
  put ERB.new(erb).result(binding), to
end

def set_default(name, *args, &block)
  set(name, *args, &block) unless exists?(name)
end

def remote_folder_exists?(full_path)
  'true' ==  capture("if [ -d #{full_path} ]; then echo 'true'; fi").strip
end

namespace :deploy do
  desc "Install everything onto the server"
  task :install do
    # http://mosh.mit.edu/
    # run "#{sudo} add-apt-repository -y ppa:keithw/mosh" 
    # run "#{sudo} apt-get -y install mosh 
    run "#{sudo} apt-get -y update"
    run "#{sudo} apt-get -y install python-software-properties software-properties-common libxslt-dev libxml2-dev vim"
    run "#{sudo} apt-get -y install zsh" 
    run "curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh"
    # run "#{sudo :as => user} chsh -s `which zsh`" 
  end
end
