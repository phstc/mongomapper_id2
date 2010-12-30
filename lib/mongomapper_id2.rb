require 'base62'
require 'incrementor'

module MongomapperId2
  # Your code goes here...
end

# Base on http://railstips.org/blog/archives/2010/02/21/mongomapper-07-plugins/
module MongoMapper
  module Plugins
    module AutoIncrement
      module ClassMethods
        def auto_increment!
          key :id2
          class_eval { before_create class_eval { :update_auto_increment }}
        end
      end
      module InstanceMethods
        def to_base62
          MongomapperId2::Base62.encode(self.id2) unless self.id2.nil?
        end
        private
        def update_auto_increment
          self.id2 = MongomapperId2::Incrementor[self.class.name].inc
        end
      end
    end
  end
end
 
module AutoIncrementPluginAddition
  def self.included(model)
    model.plugin MongoMapper::Plugins::AutoIncrement
  end
end
MongoMapper::Document.append_inclusions(AutoIncrementPluginAddition)