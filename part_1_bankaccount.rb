class BankAccount

#class variables below ----------
  @@interest_rate = 0.01
  @@accounts = []

#class methods below ----------
  def self.create
    new_accounts = BankAccount.new
    @@accounts << new_accounts
    return new_accounts
  end


  def self.total_funds
    total_funds = 0
    @@accounts.each do |entry|
      total_funds += entry.balance
    end
    return total_funds
  end

  def self.interest_time
    @@accounts.each do |entry|
      interest = entry.balance * (@@interest_rate)
      entry.deposit(interest)
    end
  end

#instance variables below ----------


#instance methods below ----------
  def initialize
    @balance = 0
  end

  def balance
    @balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdrawal(amount)
    @balance -= amount
  end

end


my_account = BankAccount.create
your_account = BankAccount.create

puts my_account.balance
puts BankAccount.total_funds

my_account.deposit(10000)
your_account.deposit(12500)

puts my_account.balance
puts your_account.balance
puts BankAccount.total_funds

BankAccount.interest_time
puts my_account.balance
puts your_account.balance
puts BankAccount.total_funds

my_account.withdrawal(2500)
puts my_account.balance
puts BankAccount.total_funds
