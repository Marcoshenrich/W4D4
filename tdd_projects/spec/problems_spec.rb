require "rspec"
require "problems"

describe "Array" do
    describe "my_uniq" do
        subject(:arr) { [1, 2, 1, 3, 3] }

        it "returns a different array" do
            # arr = [1, 2, 1, 3, 3]
            expect(arr.my_uniq.object_id).not_to be(arr.object_id)
        end

        it "removes duplicates from the array" do
            # arr = [1, 2, 1, 3, 3]
            expect(arr.my_uniq).to eq([1, 2, 3])
        end
    end

    describe "two_sum" do
        it "finds all pairs of positions that sum to zero" do
            arr = [-1, 0, 2, -2, 1]
            expect(arr.two_sum).to eq([[0, 4], [2, 3]])
        end
    end

    describe "my_transpose" do
        subject(:matrix) {[[0, 1, 2],[3, 4, 5],[6, 7, 8]]} 

        it "converts a matrix from row-oriented to column-oriented" do
            expect(matrix.my_transpose).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
        end

        it "returns a new array" do
            expect(matrix.my_transpose.object_id).not_to be(matrix.object_id)
        end

        it "does not call transpose" do
            expect(matrix).not_to receive(:transpose)
            matrix.my_transpose
        end

        it "returns nil when not a square grid" do
            arr2 = [[0, 1, 2],[3, 4, 5]]
            expect(arr2.my_transpose).to eq(nil)
        end

        #not the same id
        #does not call transpose
        #returns nil when not a square grid
    end

    describe "stock_picker" do
        subject(:prices) { [23, 9, 41, 16, 11, 89, 2] }
        it "returns the most profitable pair of days" do
            expect(prices.stock_picker).to eq([1,5])
        end

        it "returns nil if array is empty" do
            nilarr = []
            expect(nilarr.stock_picker).to eq(nil)
        end
    end

    


end



