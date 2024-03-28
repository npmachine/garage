# frozen_string_literal: true

UrlEncoder = Sqids.new(
  min_length: 8,
  alphabet: Rails.application.credentials.dig(:sqids, :alphabet))
