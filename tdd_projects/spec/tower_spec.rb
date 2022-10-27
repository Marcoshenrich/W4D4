require "rspec"
require "tower"

describe "Tower" do
    subject(:tower) {Tower.new}

    describe "#initialize" do
        it "sets the board" do
            expect(tower.board).to eq([[3,2,1],[],[]])
        end
    end

    describe "#won?" do
        it "returns true if the game is won." do
            tower.move(0,2)
            tower.move(0,1)
            tower.move(2,1)
            tower.move(0,2)
            tower.move(1,0)
            tower.move(1,2)
            tower.move(0,2)
            expect(tower.won?).to eq(true)
        end
    end

    describe "#valid_move?" do
        it "returns false if selected array is empty" do
            expect(tower.valid_move?(1,2)).to eq(false) 
            #takes in two args (select pull from, select push two)
        end

        it "returns false if target array holds a smaller disk" do
            tower.move(0,1)
            expect(tower.valid_move?(0,1)).to eq(false) 
        end
    end

    describe "#move" do
        it "removes last disk from selected array" do
            tower.move(0,1)
            expect(tower.board[0].last).to eq(2)
        end

        it "places selected disk in new array" do 
            tower.move(0,1)
            expect(tower.board[1].last).to eq(1)
        end
    end



    # de move the discs
#   -> check that move is legal
end



# de move the discs
#   -> check that move is legal


# valid move?
#   
# won? checks if game is won