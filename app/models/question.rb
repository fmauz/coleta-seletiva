class Question < ActiveRecord::Base
  belongs_to :section

  has_many :answers, :dependent => :destroy
  has_many :card_questions, :dependent => :destroy

  default_scope order( Question.arel_table[:order] )

  validates :code,
            :content,
            :section,
            :presence => true

  def down_order
    anterior = section.questions.where( order: self.order - 1 ).first
    anterior.order += 1
    anterior.save

    self.order -= 1
    self.save
  end

  def up_order
    anterior = section.questions.where( order: self.order + 1 ).first
    anterior.order -= 1
    anterior.save

    self.order += 1
    self.save
  end

  after_destroy :reposiciona_order
  def reposiciona_order
    questions = self.section.questions.all
    questions.each do |question|
      question.order = questions.index( question )
      question.save
    end
  end
end
