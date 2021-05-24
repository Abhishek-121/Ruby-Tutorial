# Exercise: Sales Tax Problem
# Sales Tax Problem: You have to write a program in Ruby which would 
# calculate the sales tax on the items according to the following conditions:

# a. Flat 10 % sales tax is applicable on all items except for book, food and medicine
# b. Additional Import Duty of 5 % is applicable on all imported items without any exceptions
# The input to the program would be in the following format: 
  
# Name of the product: Chocolates
# Imported?: yes
# Exempted from sales tax? Yes
# Price: 120
# Do you want to add more items to your list(y/n): y
# Name of the product: Potato Chips
# Imported?: no
# Exempted from sales tax?: yes
# Price: 100
# Do you want to add more items to your list(y/n): y
# Name of the product: Perfume
# Imported?: yes
# Exempted from sales tax? No
# Price: 150
# Do you want to add more items to your list(y/n): n
# You have to generate a list that would display the list in a nice format and 
# the grand total should be rounded to the nearest integer.

#  Code :

class SalesTax
  @grand_total = 0
  def initialize(price, product, imported, exempted)
    @price = Float(price)
    @product = product
    @imported = imported
    @exempted = exempted
  end

  def flat_tax
    @price += @price * 0.1
  end

  def imported_duty
    @price += @price * 0.05
  end

  def exempted
    @price
  end

  loop do
    print 'Name of the product: '
    product = gets.chomp
    print 'Imported?: '
    imported = gets.chomp
    print 'Exempted from sales tax? '
    exempted = gets.chomp
    print 'Price: '
    price = gets.to_i
    print 'Do you want to add more items to your list(y/n): '
    option = gets.chomp
    next unless option.downcase == 'n'
    sales_tax = SalesTax.new(price, product, imported, exempted)
    exempted = 'yes' if %w[book medicine food].include?(product)
    @grand_total += if exempted == 'yes'
                      sales_tax.exempted
                    else
                      sales_tax.flat_tax
                    end
    @grand_total += sales_tax.imported_duty if imported.downcase == 'yes'
    puts @grand_total
    break
  end
end
