class MentorExam
  attr_reader :solver, :score
  def initialize(solver:, score:)
    @solver = solver
    @score = score
  end

  def message_by_teacher
    if @score >= 70
      "#{@solver}くん、よく出来ました！"
    else
      "#{@solver}くん、もっと頑張って！"
    end
  end
end