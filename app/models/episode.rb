class Episode < ApplicationRecord
  belongs_to :podcast
  has_attached_file :episode_thumbnail, styles: { large: "960x960#", medium: "600x600#" }
  validates_attachment_content_type :episode_thumbnail, content_type: /\Aimage\/.*\z/
end
