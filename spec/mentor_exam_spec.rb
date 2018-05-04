require 'spec_helper'

RSpec.describe MentorExam do
  describe '#message_by_teacher' do
    it "@score >= 70, returnよく出来ました" do
      mentor_exam = MentorExam.new(solver: 'たろう', score: 70)
      expect(mentor_exam.message_by_teacher).to eq "たろうくん、よく出来ました！"
    end

    it "@score < 70, return もっとがんばって" do
     mentor_exam = MentorExam.new(solver: 'たろう', score: 69)
    expect(mentor_exam.message_by_teacher).to eq "たろうくん、もっと頑張って！"
    end
  end

end