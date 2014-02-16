class Symbol
  def to_proc(*args)
    -> receiver { receiver.send self, *args }
  end
end
