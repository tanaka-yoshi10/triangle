require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  context 'scalene triangle' do
    specify { expect(Triangle.judge([2,3,4])).to eq "不等辺三角形ですね！" }
    specify { expect(Triangle.judge([3,4,5])).to eq "不等辺三角形ですね！" }
  end

  context 'isosceles triangle' do
    specify { expect(Triangle.judge([2,2,1])).to eq "二等辺三角形ですね！" }
    specify { expect(Triangle.judge([3,3,1])).to eq "二等辺三角形ですね！" }
  end

  context 'equilateral triangle' do
    specify { expect(Triangle.judge([1,1,1])).to eq "正三角形ですね！" }
    specify { expect(Triangle.judge([2,2,2])).to eq "正三角形ですね！" }
  end

  context 'not triangle' do
    specify { expect(Triangle.judge([1,2,3])).to eq "三角形じゃないです><" }
  end
end