#!/bin/bash
# Automate the prepartion of all scripts from the main developement source
# Requires the existence of YUI Compressor & an alias as `yui`
#
# Assuming the alias exists on the user's account, invoke by `. ./prepare.sh`
#

# Minifiy the script
yuicompressor jquery.infinitescroll.js -o jquery.infinitescroll.min.js

# Copy scripts into the WordPress plugin
cp jquery.infinitescroll.js ./wordpress-plugin/js/front-end/jquery.infinitescroll.dev.js
cp jquery.infinitescroll.min.js ./wordpress-plugin/js/front-end/jquery.infinitescroll.js

cp ./behaviors/* ./wordpress-plugin/behaviors/

# Copy into monkeys website
cp jquery.infinitescroll.js ../3dm/3DM--The-Monkeys-CMS/build/public/wp-content/plugins/infinite-scroll/js/front-end/jquery.infinitescroll.dev.js
cp jquery.infinitescroll.min.js ../3dm/3DM--The-Monkeys-CMS/build/public/wp-content/plugins/infinite-scroll/js/front-end/jquery.infinitescroll.js
cp ./behaviors/* ../3dm/3DM--The-Monkeys-CMS/build/public/wp-content/plugins/infinite-scroll/behaviors/
