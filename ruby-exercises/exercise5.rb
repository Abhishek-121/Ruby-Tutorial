# Exercise: 5 - Customer Account Balance
# Define a class Account with three three attributes "name","account_no" & "balance". 
# Name and Balance should be set when creating an object of Account class, account_number should be auto increment. 
# This Account class must have two methods, deposit() and withdraw(). Your code should take three arguments  
# customer one 
# customer two 
# transaction amount
# Input Format:
# customer_name1:account_balance1 customer_name2:account_balance2 transfer:transaction_amount
# [input]
# Rahul:2000 Abhishek:3000 transfer:200
# [output]
# Account number: 1
# Account holder name: Rahul
# Account balance: 1800

# Account number:	 2
# Account holder name: Abhishek
# Account balance: 3200 

# Code :

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
