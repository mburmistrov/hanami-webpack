require 'hanami/commands/command'
require 'hanami/webpack'

module Hanami
  module Webpack
    class Commands
      class Build < Hanami::Commands::Command
        #require all, because hanami must load initializers from project
        requires 'all'

        def start
          exec Webpack.enviroment_variables, './node_modules/.bin/webpack', *Webpack.webpack_cli_arguments
        end
      end
    end
  end
end