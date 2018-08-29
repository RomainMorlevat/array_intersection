require 'spec_helper'
require './lib/array_intersection'

RSpec.describe '#intersect' do
  it 'return expected results' do
    expect(intersect([], [1])).to eq([])
    expect(intersect([1], [])).to eq([])
    expect(intersect([1], [1])).to eq([1])
    expect(intersect([1], [2])).to eq([])
    expect(intersect([1, 1, 4, 5], [1, 4, 7])).to eq([1, 4])
    expect(intersect([1, 4, 5], [1, 4, 4, 7])).to eq([1, 4])
    expect(intersect([1, 1, 1, 4, 5], [1, 1, 4, 7])).to eq([1, 1, 4])
    expect(intersect([2, 3, 4, 4, 5, 10], [1, 1, 2, 4, 4, 7])).to eq([2, 4, 4])
  end
end
