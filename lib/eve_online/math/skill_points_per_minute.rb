# frozen_string_literal: true

module EveOnline
  module Math
    # https://eveonline-third-party-documentation.readthedocs.io/en/latest/formulas/skillpoints.html
    class SkillPointsPerMinute
      attr_reader :primary, :secondary

      def initialize(primary:, secondary:)
        @primary = primary
        @secondary = secondary
      end

      def value
        @value ||= primary + (secondary / 2.0)
      end
    end
  end
end
