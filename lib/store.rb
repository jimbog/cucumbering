class Store
  @@elements = []

  def self.add element
    @@elements << element
  end

  def self.find_by_id id
    @@elements.find { |element| element["id"] == id }
  end
end
