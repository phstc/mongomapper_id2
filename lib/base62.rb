# based on http://flowcoder.com/148
module MongomapperId2
  module Base62
    CHARS = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
    # The encode is skipping the first 'a'  when will change the digits size 62, 62 * 62
    # FIXME encode(1).should eql 'a' NOT 'b'
    # FIXME encode(62).should eql '99' NOT 'ba'
    # FIXME encode(3844).should eql '99' NOT 'baa'
    # FIXME encode(238328).should eql '999' NOT 'baaa'
    # See base62_spec
    def self.encode(i)
      return '0' if i == 0
      s = ''
      while i > 0
        s << CHARS[i.modulo(62)]
        i /= 62
      end
      s.reverse!
      s
    end
  end
end