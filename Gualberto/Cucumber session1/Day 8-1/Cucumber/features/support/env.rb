require 'pathname'
require 'yaml'

AfterConfiguration do |config|
  # read config file
  configuration = load_app_config_file('config.yml')    #Se puede cambiar config.yml
  # Load application configuration parameters
  $app_user = configuration['app']['admin_user']        #Se puede cambiar el 'app' top level
  $app_pass = configuration['app']['admin_pass']        #Y los 'admin_...' options in level
  $app_host = configuration['app']['host']
  $db_user = configuration['db']['db_user']
end


#No es necesario hacer cambios en el codigo siguiente

def find_config_file(filename)
  root = Pathname.pwd
  while not root.root?
    root.find do |path|
      if path.file? and path.basename.to_s == filename
        return path.to_s
      end
    end
    root = root.parent
  end
  raise 'Configuration file ' #{filename}' not found!'
end


def load_app_config_file(filename)
  config_file = find_config_file(filename)
  config = YAML.load_file(config_file)
  $app_context = config['app']['host']
  return config
end

