require "java"

# Workaround: JRuby doesn't handle ".." in "jar:file:" paths.  File.expand_path
# removes them.
ext_dir = File.expand_path(File.join(File.dirname(__FILE__), "..", "ext"))
require File.join(ext_dir, "javassist.jar")
require File.join(ext_dir, "msgpack-0.6.6-SNAPSHOT.jar")

require File.join(File.dirname(__FILE__), "jruby-msgpack", "unpacker")
