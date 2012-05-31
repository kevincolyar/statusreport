class CommandLineExecutor
  def self.execute(cmd)
    IO.popen(cmd).lines.each do |line|
      yield line
    end
  end
end

