class Message < ActiveRecord::Base
  belongs_to :user

  def to_s
    content
  end
end
