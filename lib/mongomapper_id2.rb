require 'incrementor'

# Based on http://railstips.org/blog/archives/2010/02/21/mongomapper-07-plugins/
module MongoMapper
  module Plugins
    module AutoIncrement
      extend ActiveSupport::Concern
      module ClassMethods
        def auto_increment! options = {:override => false}
          key :id2
          if(options[:override])
            class_eval { before_create class_eval { :update_auto_increment_override }}
          else
            class_eval { before_create class_eval { :update_auto_increment }}
          end
        end
      end
      module InstanceMethods
        private
        def update_auto_increment
          self.id2 = MongomapperId2::Incrementor[self.class.name].inc
        end
        def update_auto_increment_override
          update_auto_increment
          self.id = self.id2.to_s
        end
      end
    end
  end
end

MongoMapper::Document.plugin(MongoMapper::Plugins::AutoIncrement)
# MongoMapper::EmbeddedDocument.plugin(MongoMapper::Plugins::AutoIncrement)