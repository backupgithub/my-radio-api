# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

task :server do
  `bundle exec rails s -p 8080`
end

Rails.application.load_tasks
