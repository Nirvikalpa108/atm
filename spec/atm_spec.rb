require 'rspec'
require 'atm'

RSpec.describe 'Atm' do
  context 'when a person has no transactions' do
    it 'shows an empty statement' do
      atm = Atm.new

      expect(atm.statement).to be_empty
    end
  end

  context 'when a person deposits 1000' do
    it 'shows the deposit in the statement' do
      atm = Atm.new

      atm.deposit(1000)

      expect(atm.statement).to eq([{date: Date.today, amount: 1000, type: :deposit, balance: 1000 }])
    end
  end

  context 'when a person deposits 2000' do
    it 'shows the deposit in the statement' do
      atm = Atm.new

      atm.deposit(2000)

      expect(atm.statement).to eq([{date: Date.today, amount: 2000, type: :deposit, balance: 2000 }])
    end
  end

  context 'when a person has existing transactions' do
    it 'updates the balance' do
      atm = Atm.new([{date: Date.today, amount: 1000, type: :deposit, balance: 1000 }])

      atm.deposit(1000)

      expect(atm.statement).to eq(
                                   [
                                       {
                                           date: Date.today,
                                           amount: 1000,
                                           type: :deposit,
                                           balance: 2000
                                       },
                                       {
                                           date: Date.today,
                                           amount: 1000,
                                           type: :deposit,
                                           balance: 1000
                                       },
                                   ]
                               )
    end
  end
end
