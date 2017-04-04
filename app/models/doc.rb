class Doc < ApplicationRecord
  has_attached_file :pdf, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :pdf, {:content_type => %w(image/jpeg image/jpg image/png application/pdf "video/mp4", "video.mov", "video/mpeg","video/mpeg4", application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}
  
end
