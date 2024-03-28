# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :author, class_name: "User", foreign_key: "author_id"

  validates :title, presence: true
  validates :body, presence: true
  validates :state, presence: true

  enum :state, %i[draft unpublished published].index_with(&:to_s), default: :draft

  # def encoded_id
  #   UrlEncoder.encode Array(id)
  # end
  # def to_param
  #   UrlEncoder.encode Array(id)
  # end
end
