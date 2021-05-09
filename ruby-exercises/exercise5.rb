# frozen_string_literal: true

class Account
  @@account_no = 0
  def initialize(name, balance)
    @name = name
    @balance = balance
    @@account_no += 1
  end

  def print_details
    puts "Account no : #{@@account_no}"
    puts "Account holder name : #{@name}"
    puts "Account balance : #{@balance} "
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if @balance >= amount
      @balance -= amount
    else
      puts 'Insufficient balance'
    end
  end
end

str = gets.split(' ')

customer1 = str[0].split(':')[0]
customer1_balance = str[0].split(':')[1].to_i
customer2 = str[1].split(':')[0]
customer2_balance = str[1].split(':')[1].to_i
transfer = str[2].split(':')[1].to_i

a = Account.new(customer1, customer1_balance)
a.withdraw(transfer)
a.print_details
b = Account.new(customer2, customer2_balance)
b.deposit(transfer)
b.print_details