require "rack/test"
require "test/unit"

 this_dir = File.join(File.dirname(__FILE__),"..")
 $LOAD_PATH
 $LOAD_PATH.unshift File.expand_path(this_dir)
 $LOAD_PATH
require "rulers"