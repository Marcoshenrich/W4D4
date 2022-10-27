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
        #[-1, 0, 2, -2, 1].two_sum # => [[0, 4], [2, 3]]
        #[0, 2] before [2, 1] (smaller first elements come first)
        #[0, 1] before [0, 2] (then smaller second elements come first)
    end



end



