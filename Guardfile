# More info at https://github.com/guard/guard#readme

require 'guard/guard'
require 'guard/shell'

module ::Guard
    class ShellGuard < ::Guard::Shell
        def run_all
            run_on_change
        end
    end
end

group 'backend' do
    guard 'bundler' do
        watch 'Gemfile'
    end

    guard 'compass' do
        watch %r{^sass/.+\.s[ac]ss$}
    end

    guard 'jammit' do
        watch %r{^source/javascripts/.+\.js$}
        watch %r{^source/stylesheets/.+\.css$}
    end

    # guard 'livereload', :grace_period => 1 do
        # watch(%r{^sass/(.+)\.(sass)$}) { |m| "public/assets/#{m[1]}.css" }
        # watch %r{^js/.+\.js$}
        # watch %r{^public/images/.+$}
        # watch %r{^lib/helpers\.py$}
    # end

    # guard 'shell' do
        # watch(%r{^tests/.*$}) do |m|
            # result = `make test`
            # if $? == 0
                # puts 'Green light!'
            # else
                # puts result
            # end
        # end
    # end
end
