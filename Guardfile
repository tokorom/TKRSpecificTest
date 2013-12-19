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
      testCase = File.basename(paths[0], '.*')
      if testCase.empty?
        run_all
      else
        defines = "GCC_PREPROCESSOR_DEFINITIONS='DEBUG=1 TEST_ONLY=\\\"#{testCase}\\\"'"
        system("#{COMMAND} #{defines} #{SUFFIX}")
      end
    end
  end
end

guard :inline_guard do
  watch /.*\.[mh]$/
end
