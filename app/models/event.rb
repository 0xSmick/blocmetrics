class Event < ActiveRecord::Base
  belongs_to :web_property
  belongs_to :user


end
