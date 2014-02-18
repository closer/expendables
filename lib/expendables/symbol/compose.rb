class Symbol
  def compose o
    -> *args { (+o).call((+self).call(*args)) }
  end
  alias_method :>>, :compose
end
