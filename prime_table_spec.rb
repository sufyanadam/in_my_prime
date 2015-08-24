require './prime_table.rb'

describe '#find_primes' do
  subject { find_primes(n) }
  let(:n) { 10 }

  it 'returns a list of the first n prime numbers' do
    expect(subject).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
  end
end

describe '#prime?' do
  subject { prime?(number) }

  context 'when given 2' do
    let(:number) { 2 }

    it 'returns true' do
      expect(subject).to eq true
    end
  end

  context 'when given 3' do
    let(:number) { 3 }

    it 'returns true' do
      expect(subject).to eq true
    end
  end

  context 'when given 7' do
    let(:number) { 7 }

    it 'returns true' do
      expect(subject).to eq true
    end
  end

  context 'when given a very large prime number' do
    let(:number) { 982451653 }

    it 'returns true' do
      expect(subject).to eq true
    end
  end

  context 'when given a non-prime number' do
    let(:number) { 9 }

    it 'returns false' do
      expect(subject).to eq false
    end
  end
end
