# Your code here!

class VerticalAdapter
    def initialize(padding_space: '  ', padding_size: 0)
        @padding_space = padding_space
        @padding_size = padding_size
    end
    
    def split_and_padding_space(word)
        word.split('').fill(@padding_space, word.length...@padding_size)
    end
end


words = %w(
    タイソンスポルタスビデオの超マッチョ
    サーフ系ボディビルダー拓也
    胸囲１０７センチだって
    すごいわね
)

size = words.map(&:size).max
adapter = VerticalAdapter.new(padding_size: size)

concat_inner_words = Proc.new { |array|
    array.reduce(&:+)
}



first, *left = words.reverse.map(&adapter.method(:split_and_padding_space))
puts first.zip(*left).map(&concat_inner_words)
