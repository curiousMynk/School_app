class School < ApplicationRecord
 belongs_to :board
 has_attached_file :logo, styles: { small: "64x64", med: "160x160", large: "241x241" }
 validates_attachment_content_type :logo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
 validates :logo, :attachment_presence => true

  validates :name, presence: true
  validates :pincode, length: { is: 6 }
  validates :mobile_no, length: { is: 10 }  
end
