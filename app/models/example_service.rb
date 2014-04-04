class ExampleService
  def initialize(opts={})
    @name = opts['name']
  end

  def start
    Thread.new { run }
  end

  def stop
    @done = true
  end

  def run
    until @done
      puts "Hello #{@name}"
      sleep(5.minutes)
    end
  end
end
