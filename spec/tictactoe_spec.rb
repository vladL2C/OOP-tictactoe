require 'tictacToe'

describe 'Player' do 
	let (:player) {Player.new("vlad", "x")}
	context 'initialize' do 
		it 'names the player' do 
			expect(player.name).to eql("vlad")
		end 
		it 'gives a player a symbol' do
			expect(player.symbol).to eql("x")
		end 
	end 
end 

describe 'Board' do
	let(:board) {Board.new}
	context 'creates a board' do 
		it 'creates a board instance belongs to board class' do 
			expect(Board.new).to be_instance_of(Board)
		end
		it 'initalizes a board [1,2,3,4,5,6,7,8,9]' do 
			expect(board.board).to eql([1,2,3,4,5,6,7,8,9])
			end
	end

	describe '#player_move' do 
			it 'marks the board where player moves' do 
				expect(board.player_move(1,"x")).to eql(["x",2,3,4,5,6,7,8,9]) 
			end 
		end 

	describe '#win?' do 
		let(:player) {"vlad"}
		it 'lets you know what user has lost' do 
			      board.board = ["X","X","X",
                     				4,5,6,
                     				7,8,9]
		expect(board.win?(player)).to eql("Better luck next time! #{player.capitalize}")		
		end
	end  
end 
