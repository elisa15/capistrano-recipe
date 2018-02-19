#
# ssh username to be used
#
set :user, "elisa15"
#set :use_sudo, false

#
# if hosted by Anchor and uses fastCGI
##set :is_hosted_by_anchor_and_fastcgi, true
set :branch, 'master'
set :keep_releases, 2
after 'deploy:restart', 'deploy:cleanup'
#
# remote server ip address or domain name
#
server "murrayfredericks.com.au", :app, :web, :db, :primary => true
#
# Full path to project folder
#
# 
set :template_name, "sage"
set :deploy_to,	"/home/#{user}/public_html/staging/mf2018/"
 ##################################################################
 # Comments and specific configuration to add below
desc <<-DESC
	Installing Sage theme dependencies (gulp bower npm)
DESC
namespace :run_taskrunner do
	#task :dependencies do
		#run "cd #{current_path}/trunk/wp-content/themes/#{template_name}/ && npm install -g gulp bower"
	#end	
    task :bower_install do
 		run "cd #{current_path}/trunk/wp-content/themes/#{template_name}/ && bower install"
	end
    task :npm_install do
 		run "cd #{current_path}/trunk/wp-content/themes/#{template_name}/ && npm install"
	end
    task :run_gulp do
 		run "cd #{current_path}/trunk/wp-content/themes/#{template_name}/ && gulp --production"
	end

end
after "deploy", "run_taskrunner:npm_install"
after "deploy", "run_taskrunner:bower_install"
after "deploy", "run_taskrunner:run_gulp"
#before "deploy","run_taskrunner:dependencies"