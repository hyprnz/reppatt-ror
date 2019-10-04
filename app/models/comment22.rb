class Comment22
  include ActiveModel::Model
  attr_accessor :id, :commenter, :body, :article

  def initialize(attributes ={})
    super
    @commenter = attributes[:commenter]
    @body = attributes[:body]
    @article = attributes[:article]

    validate
  end

  def persisted?
    @id && @id > 0
  end

  def update(attributes={})
    @commenter = attributes[:commenter]
    @body = attributes[:body]

    validate
    return true
  end

  private

  def validate
    raise 'invalid' unless @commenter
    raise 'invalid' unless @body
  end

end
