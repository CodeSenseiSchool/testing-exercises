require_relative "entry_collection"

RSpec.describe EntryCollection do
  describe "#from_this_week" do
    context "on Monday" do
      it "returns entries only from Monday" do
        raise NotImplementedError
      end
    end

    context "on Sunday" do
      it "returns entries from whole week" do
        raise NotImplementedError
      end
    end
  end
end
