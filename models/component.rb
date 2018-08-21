# comment for rubocop
class Component
  attr_reader :type, :name, :price, :unit, :power

  def initialize(components = {})
    @type = components[:type]
    @name = components[:name]
    @price = components[:price]
    @unit = components[:unit]
    @power = components[:power]
  end
end
