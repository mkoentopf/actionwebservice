# encoding: UTF-8

class Class # :nodoc:
  def class_inheritable_option(sym, default_value=nil)
    class_eval <<-EOS
      class_attribute :#{sym}
      self.#{sym} = default_value
    EOS
  end
end
