class Post < ApplicationRecord
	has_attached_file :image, styles: { large: "800x800>", medium: "400x400>", thumb: "150x150#" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	acts_as_votable

	belongs_to :user
end
