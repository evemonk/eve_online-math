# frozen_string_literal: true

require 'spec_helper'

require 'pry'

describe EveOnline::Math::SkillPointsPerLevel do
  RANK_AND_POINTS = [
    [1, 250, 1_414, 8_000, 45_254, 256_000],
    [2, 500, 2_828, 16_000, 90_509, 512_000],
    [3, 750, 4_242, 24_000, 135_764, 768_000],
    [4, 1_000, 5_656, 32_000, 181_019, 1_024_000],
    [5, 1_250, 7_071, 40_000, 226_274, 1_280_000],
    [6, 1_500, 8_485, 48_000, 271_529, 1_536_000],
    [7, 1_750, 9_899, 56_000, 316_783, 1_792_000],
    [8, 2_000, 11_313, 64_000, 362_038, 2_048_000],
    [9, 2_250, 12_727, 72_000, 407_293, 2_304_000],
    [10, 2_500, 14_142, 80_000, 452_548, 2_560_000],
    [11, 2_750, 15_556, 88_000, 497_803, 2_816_000],
    [12, 3_000, 16_970, 96_000, 543_058, 3_072_000],
    [13, 3_250, 18_384, 104_000, 588_312, 3_328_000],
    [14, 3_500, 19_798, 112_000, 633_567, 3_584_000],
    [15, 3_750, 21_213, 120_000, 678_822, 3_840_000],
    [16, 4_000, 22_627, 128_000, 724_077, 4_096_000]
  ].freeze

  RANK_AND_POINTS.each do |rank_and_points|
    rank = rank_and_points.first

    points = rank_and_points[1..-1]

    points.each_with_index do |value, index|
      level = index + 1

      describe '#value' do
        subject { described_class.new(rank: rank, level: level) }

        specify { expect(subject.value).to eq(value) }
      end
    end
  end
end
