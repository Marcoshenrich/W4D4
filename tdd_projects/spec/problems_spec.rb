require "rspec"
require "problems"

describe "Array" do
    describe "my_uniq" do
        it "returns a different array" do
            arr = [1, 2, 1, 3, 3]
            expect(arr.my_uniq.object_id).not_to be(arr.object_id)
        end

        it "removes duplicates from the array" do
            arr = [1, 2, 1, 3, 3]
            expect(arr.my_uniq).to eq([1, 2, 3])
        end
    end





end



