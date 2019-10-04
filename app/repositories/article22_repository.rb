require_relative '../models/article22'

class Article22Repository
    def all
        serialized = Article22Record.all
        deserialized = serialized.map { |article| deserialize(article) }
        return deserialized
    end
    
    def find(id)
        serialized = Article22Record.find(id)
        deserialize(serialized)
    end

    def save(article)
        raise 'invalid' unless (article.is_a?(Article22))
        serialized = serialize(article)
        serialized.save
    end

    def update(article)
        raise 'invalid' unless (article.is_a?(Article22))
        record = Article22Record.find(article.id)
        attrs = article.instance_values
        record.update(attrs)
    end

    def destroy(id)
        article = Article22Record.find(id)
        article.destroy
    end

    private

    def deserialize(serialized)
        Article22Deserializer.new(serialized).deserialize()
    end

    def serialize(deserialized)
        Article22Serializer.new(deserialized).serialize()
    end
end
