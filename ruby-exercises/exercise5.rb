# frozen_string_literal: true

class Account
  @@account_no = 0
  def initialize(name, balance)
    @name = name
    @balance = balance
    @@account_no += 1
  end

  def deposit(amount)
    @balance += amount
    puts "Account no : #{@@account_no}"
    puts "Account holder name : #{@name}Account balance : #{@balance} "
  end

  def withdraw(amount)
    if @balance >= amount
      @balance -= amount
      puts "Account no : #{@@account_no}"
      puts "Account holder name : #{@name}Account balance : #{@balance}"
    else
      puts 'Insufficient balance'
    end
  end
end

customer1 = gets
customer1_balance = Integer(gets)
customer2 = gets
customer2_balance = Integer(gets)
transfer = Integer(gets)
a = Account.new(customer1, customer1_balance)
a.withdraw(transfer)
b = Account.new(customer2, customer2_balance)
b.deposit(transfer)
