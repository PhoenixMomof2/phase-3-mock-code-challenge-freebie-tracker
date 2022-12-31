class Freebie < ActiveRecord::Base
  belongs_to :company 
  belongs_to :dev 

  def print_details
    #How do you grab an instance in an instance method? self
    "#{self.dev.name} owns a #{self.item_name} from #{self.company.name}"
  end
end
