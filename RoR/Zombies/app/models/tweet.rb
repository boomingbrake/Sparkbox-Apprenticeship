class Tweet < ActiveRecord::Base
has_many :tweets
belongs_to :zombue
end
