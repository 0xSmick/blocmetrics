class Event < ActiveRecord::Base
  self.inheritance_column = nil
  
  belongs_to :web_property
  belongs_to :user


end
