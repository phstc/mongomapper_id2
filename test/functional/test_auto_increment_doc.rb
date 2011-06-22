File.expand_path("../lib/mongomapper_id2.rb", __FILE__)

require 'test_helper'
require 'mongomapper_id2'

class AutoIncrementTest < Test::Unit::TestCase
  context 'autoincrementing' do
    setup do
      @klass = Doc do
        key :title, String
        auto_increment!
      end
            
      @klass_override = Doc do
        key :title, String
        auto_increment! :override => true
      end
    end

    should 'set id2 on create' do
      doc = @klass.new(:title => 'The Simpsons Movie')
      doc.id2.should be(nil)
      doc.save      
      doc.id2.should_not be(nil)
      id2 = doc.id2
      doc.save
      doc.id2.should eql id2
    end

    should 'auto increment id2' do
      doc = @klass.new(:title => 'Pirates of Silicon Valley')
      doc.save      
      doc2 = @klass.new(:title => 'Tropa de Elite')
      doc2.save
      (doc.id2 + 1).should eql doc2.id2
    end
    
    should 'override id' do
      doc2 = @klass_override.new(:title => 'Tropa de Elite')
      doc2.save
      doc2.id2.to_s.should eql doc2.id
    end
  end
end