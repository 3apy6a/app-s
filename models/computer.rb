# comment for rubocop
class Computer
  def initialize(mother_board, cpu, memory, video)
    @mother_board = mother_board
    @cpu = cpu
    @memory = memory
    @video = video
    @ip = Faker::Internet.ip_v4_address
  end

  def ip_address
    p "IP ADDRESS: #{@ip}"
  end

  def each(&_)
    p 'Each method for PC'
    for c in components do
      yield(c)
    end
  end

  def inject(sum = 0, &_)
    p "Initial sum is: #{sum}"
    components.each do |c|
      next if c.nil?
      sum = yield(sum, c)
    end
    sum
  end

  def map(arr = [], &_)
    p 'Map method for PC'
    for c in components do
      arr << yield(c)
    end
    p arr
  end

  def each_in_arr(arr = [], &_)
    p 'each_in_arr method for PC'
    for c in components do
      arr << yield(c)
    end
    p arr
  end

  private

  def components
    @components ||= [@mother_board, @cpu, @memory, @video]
  end
end
