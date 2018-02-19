#
# ssh username to be used
#
set :user, "elisa15"
#set :use_sudo, false

#
# if hosted by Anchor and uses fastCGI
##set :is_hosted_by_anchor_and_fastcgi, true

set :keep_releases, 2
after 'deploy:restart', 'deploy:cleanup'
#
# remote server ip address or domain name
#
server "109.199.122.168", :app, :web, :db, :primary => true,port:18765
#
# Full path to project folder
#
# 
# set :deploy_to,	"/home/#{user}/public_html"
 set :deploy_to,	"/home/#{user}/murrayfredericks.com.au/"

##################################################################
# Comments and specific configuration to add below
