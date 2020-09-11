require './lib/board.rb'

describe Board do
  board = Board.new([1, 2, 3, 4, 5, 6, 7, 8, 9])

  describe '#move' do
    it "returns the board array with Player's 1 move" do
      expect(board.move(0, 'X')).to eql(['X', 2, 3, 4, 5, 6, 7, 8, 9])
    end

    it "returns the board array with Player's 2 move" do
      expect(board.move(1, 'O')).to eql(['X', 'O', 3, 4, 5, 6, 7, 8, 9])
    end

    it 'returns false when invalid move' do
      expect(board.move(1, 'X')).to eql(false)
    end

    it 'returns false when use string as input' do
      expect(board.move('a'.to_i, 'X')).to eql(false)
    end

    it 'returns false when use negative number as input' do
      expect(board.move(-1, 'X')).to eql(false)
    end

    it 'returns false when use a big number as input' do
      expect(board.move(10, 'X')).to eql(false)
    end
  end

  describe '#display' do
    it 'returns board representation' do
      expect(board.display).to eql("\n  X | O | 3
  --|---|--
  4 | 5 | 6
  --|---|--
  7 | 8 | 9")
    end
  end
end
