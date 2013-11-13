class Robin
  private
  
  def smith
  end
end

puts Robin.new().respond_to?('smith')

puts Robin.respond_to?('smith')

puts Robin.new().is_a?(Robin)

puts Robin.is_a?(Robin)

puts Robin.new().kind_of?(Robin)

puts Robin.new().methods()[0]

puts Robin.methods()[0]

puts Robin.private_instance_methods()[0]

puts Robin.protected_instance_methods()

puts Robin.public_instance_methods()[0]

puts Robin.superclass()

puts Object.superclass()

puts "nil" if BasicObject.superclass() == nil

puts "constants: " + Robin.constants().to_s()