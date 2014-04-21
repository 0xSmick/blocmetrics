class WebProperty < ActiveRecord::Base
  has_many :events
  belongs_to :user

  default_scope { order( 'created_at DESC' ) }

end
