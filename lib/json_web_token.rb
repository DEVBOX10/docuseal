# frozen_string_literal: true

module JsonWebToken
  module_function

  def encode(payload)
    JWT.encode(payload, Rails.application.secrets.secret_key_base)
  end

  def decode(token)
    JWT.decode(token, Rails.application.secrets.secret_key_base)[0]
  end
end
