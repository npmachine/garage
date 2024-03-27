# frozen_string_literal: true

class Home::IndexComponent < ReactComponent
  def initialize(raw_props = {})
    super("HomeIndex", raw_props: raw_props)
  end

  def props
    raw_props.merge(
      # price: helpers.number_to_currency(raw_props[:price])
    )
  end
end
