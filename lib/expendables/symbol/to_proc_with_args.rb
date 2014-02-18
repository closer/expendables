class Symbol
  def +@
    self.to_proc
  end

  def to_proc_with_args(*static_args, &static_block)
    Proc.new do |*proc_args, &proc_block|
      receiver = proc_args.shift
      block = (+static_block >> +proc_block)
      to_proc_without_args.call(receiver, *static_args, *proc_args, &block)
    end
  end
  alias_method :to_proc_without_args, :to_proc
  alias_method :to_proc, :to_proc_with_args
end
