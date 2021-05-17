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
# [/input]
# [output]
# Account number: 1
# Account holder name: Rahul
# Account balance: 1800

# Account number:	 2
# Account holder name: Abhishek
# Account balance: 3200 
# [/output]
  
# [input]
# "Shivam Goel":12500 "Jatin Kapoor":1000 transfer:12000
# [/input]
# [output]
# Account number: 1
# Account holder name: Shivam Goel
# Account balance: 500

# Account number: 2
# Account holder name: Jatin Kapoor
# Account balance: 13000 

# Code :

class Account
  @@account_no = 0
  def initialize(name, balance)
    @name = name
    @balance = balance
    @@account_no += 1
  end

  def inspect
    "Account no : #{@@account_no}\nAccount holder name : #{@name}\nAccount balance : #{@balance} "
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
puts a.inspect
b = Account.new(customer2, customer2_balance)
b.deposit(transfer)
puts b.inspect
