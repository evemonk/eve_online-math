# frozen_string_literal: true

module EveOnline
  module Math
    # https://eveonline-third-party-documentation.readthedocs.io/en/latest/formulas/skillpoints.html
    class SkillpointsPerLevel
      attr_reader :level, :rank

      def initialize(level:, rank:)
        @level = level
        @rank = rank
      end

      def value
        @value ||= 2**(2.5 * (level - 1)) * 250 * rank
      end
    end
  end
end
