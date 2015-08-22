class Triangle
  def self.judge(array)
    a, b, c = array

    unless a + b > c && b + c > a && c + a > b
      return "三角形じゃないです><"
    end

    if a == b && b == c
      "正三角形ですね！"
    elsif a == b || b == c || a == c
      "二等辺三角形ですね！"
    else
      "不等辺三角形ですね！"
    end
  end
end

if $0 == __FILE__
  puts Triangle.judge(ARGV)
end