# load the acidgreen recipe library
$LOAD_PATH.unshift(File.join(File.dirname((File.respond_to?('realdirpath') ? File.realdirpath(__FILE__) : File.expand_path(__FILE__))), '../../lib/follow'))

require 'base'

#
# Depending on the type of project use 'magento' or 'wordpress' recipe
#

#require 'magento/magento'
require 'wordpress/wordpress'

# Use the current GIT repository name
set :repo_name,	"mf_production"

##################################################################
# Comments and specific configuration to add below



##
# If more symbolic folders and files are required please add them using the following
##


### For Magento
# app_symlinks.push("/trunk/app/code/community")
#app_shared_dirs.push("/trunk/app/code/community","/trunk/app/etc/modules/")

### For wordpress
# app_symlinks.push("/path/to/your/folder1","/path/to/your/folder2")
# app_file_symlinks.push("/path/to/your/file.txt")