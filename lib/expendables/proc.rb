class Proc
  def compose o
    -> *args { (+o).call((+self).call(*args)) }
  end
  alias_method :>>, :compose

  def +@
    self
  end
end
