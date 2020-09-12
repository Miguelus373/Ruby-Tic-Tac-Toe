require_relative '../lib/logic.rb'

describe Logic do
  let(:game_draw) { Logic.new(%w[X O X X O X O X O]) }
  let(:game_incomplete) { Logic.new(['X', 'O', 'X', 'X', 5, 6, 7, 8, 9]) }

  describe '#draw?' do
    it 'returns nil when the game ends in a draw' do
      expect(game_draw.draw?).to be nil
    end

    it 'returns true when the game is not in a draw' do
      expect(game_incomplete.draw?).to be true
    end
  end

  describe '#winner?' do
    let(:game_win_row) { Logic.new(['X', 'X', 'X', 'O', 'O', 6, 7, 8, 9]) }
    let(:game_win_col) { Logic.new(['X', 'O', 3, 'X', 'O', 6, 'X', 8, 9]) }
    let(:game_win_diag) { Logic.new(['O', 'X', 'X', 'X', 'O', 6, 7, 8, 'O']) }
    let(:game_not_win) { Logic.new([1, 2, 3, 'O', 'X', 6, 7, 8, 'X']) }

    it 'returns true when a row is filled with the same symbol' do
      expect(game_win_row.winner?).to be true
    end

    it 'returns true when a column is filled with the same symbol' do
      expect(game_win_col.winner?).to be true
    end

    it 'returns true when a diagonal is filled with the same symbol' do
      expect(game_win_diag.winner?).to be true
    end

    it 'returns nil if there is not a winner yet' do
      expect(game_not_win.winner?).to be nil
    end
  end
end
