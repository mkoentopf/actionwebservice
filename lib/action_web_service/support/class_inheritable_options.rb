# encoding: UTF-8

class Class # :nodoc:
  def class_inheritable_option(sym, default_value=nil)
    class_eval <<-EOS
      class_attribute :#{sym}
      self.#{sym} = default_value

      def self.#{sym}(value=nil)
        unless value.nil?
          Class.#{sym} = value
        else
          Class.#{sym}
        end
      end

      def self.#{sym}=(value)
        Class.#{sym} = value
      end

      def #{sym}
        self.class.#{sym}
      end

      def #{sym}=(value)
        self.class.#{sym} = value
      end
    EOS
  end
end
