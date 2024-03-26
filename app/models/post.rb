# frozen_string_literal: true

class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :author, class_name: "User", foreign_key: "author_id"

  validates :title, presence: true
  validates :body, presence: true
  validates :state, presence: true
  validates :slug, presence: true, uniqueness: true

  enum :state, %i[draft unpublished published].index_with(&:to_s), default: :draft

  private
    def should_generate_new_friendly_id?
      slug.blank? || title_changed?
    end
end
