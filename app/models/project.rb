class Project < ActiveRecord::Base
  has_many :tickets, :dependent => :destroy
  has_many :permissions, :as => :thing

  scope :readable_by, lambda { |user|
    joins(:permissions).where(:permissions => { :action => "view",
                                                :user_id => user.id })
  }

  validates :name, :presence => true
end
