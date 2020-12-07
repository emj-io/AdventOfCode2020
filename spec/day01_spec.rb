require 'day01'

describe Day01 do
  describe '.part_a' do
    context 'given a set of numbers (two of which sum to 2020)' do
      let(:target_sum) { 2020 }
      let(:entries_with_target_sum) {
        [
          1721,
          979,
          366,
          299,
          675,
          1456,
        ]
      }

      it 'returns the product of those two numbers' do
        expect(described_class.part_a(target_sum, entries_with_target_sum)).to eq(514579)
      end
    end

    context 'given a set of numbers (no two of which sum 2020)' do
      let(:target_sum) { 2020 }
      let(:entries_without_target_sum) {
        [
          1,
          100,
          1_000,
          10_000,
        ]
      }

      it 'raises Day01::InvalidEntriesError' do
        expect do
          described_class.part_a(
            target_sum,
            entries_without_target_sum)
        end.to raise_error(Day01::InvalidEntriesError)
      end
    end

  end

  describe '.part_b' do
    context 'given a set of numbers (three of which sum to 2020)' do
      let(:target_sum) { 2020 }
      let(:entries_with_target_sum) {
        [
          1000,
          1001,
          1,
          2,
          19,
        ]
      }

      it 'returns the product of those three numbers' do
        expect(described_class.part_b(target_sum, entries_with_target_sum)).to eq(19_019_000)
      end
    end

    context 'given a set of numbers (no three of which sum 2020)' do
      let(:target_sum) { 2020 }
      let(:entries_without_target_sum) {
        [
          1,
          2,
          3,
          4,
        ]
      }

      it 'raises Day01::InvalidEntriesError' do
        expect do
          described_class.part_b(
            target_sum,
            entries_without_target_sum)
        end.to raise_error(Day01::InvalidEntriesError)
      end
    end

  end

end