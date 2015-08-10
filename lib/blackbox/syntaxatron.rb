class Blackbox::Syntaxatron

  class << self
    def method_missing(*); new;end
  end

  def method_missing(*); self;end

end
