require "pundit"
require "sinatra/base"
require "sinatra/pundit/version"

module Sinatra
  module Pundit
    module Helpers
      include ::Pundit

      protected

      def authorize(record, query)
        # query must be a required parameter because if is omitted
        # Pundit tries to uses the Rails controller action name.
        super
      end

      def pundit_user
        instance_eval(&settings.pundit_user_block) if settings.respond_to?(:pundit_user_block)
      end
    end

    def current_user(&block)
      set :pundit_user_block, Proc.new { block }
    end

    def self.registered(app)
      $LOAD_PATH << File.join(app.settings.root, 'policies')
      Dir[File.join(app.settings.root, 'policies', '/**/*.rb')].each { |file| require file }

      app.helpers Pundit::Helpers
    end
  end

  register Pundit
end
