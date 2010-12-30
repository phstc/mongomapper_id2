require 'spec_helper'
require 'base62'

describe MongomapperId2::Base62 do 
  
  it 'should return a valid Base62' do
    # 1
    MongomapperId2::Base62.encode(1).should eql 'b'
    MongomapperId2::Base62.encode(2).should eql 'c'
    # 62
    MongomapperId2::Base62.encode(62).should eql 'ba'
    MongomapperId2::Base62.encode(63).should eql 'bb'
    # 62 * 62 = 3844
    MongomapperId2::Base62.encode(3844).should eql 'baa'
    MongomapperId2::Base62.encode(3845).should eql 'bab'
    # 62 * 62 * 62 = 238328
    MongomapperId2::Base62.encode(238328).should eql 'baaa'
    MongomapperId2::Base62.encode(238329).should eql 'baab'
  end
  
end