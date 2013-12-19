# Guardfile
require 'guard/plugin'

module ::Guard
  class InlineGuard < ::Guard::Plugin
    SCHEME = "Tests"
    DESTINATION = "name=iPhone Retina (4-inch 64-bit),OS=7.0"
    COMMAND = "xcodebuild test -scheme #{SCHEME} -destination \"#{DESTINATION}\""
    SUFFIX = " | xcpretty -c"

    def run_all
      system("#{COMMAND} #{SUFFIX}")
    end

    def run_on_changes(paths)
      onlys = paths.map {|path| "-only Tests:#{File.basename(path, '.*')}" }.join(' ')
      if onlys.empty?
        run_all
      else
        #system("#{COMMAND} #{onlys} #{SUFFIX}")
        run_all
      end
    end
  end
end

guard :inline_guard do
  watch /.*\.[mh]$/
end
