class Comment22Serializer
    def initialize(comment)
        raise 'invalid' unless comment.is_a? Comment22
        @comment = comment
    end

    def serialize
        Comment22Record.new(
            id: @comment.id,
            commenter: @comment.commenter,
            body: @comment.body
        )
    end
end
