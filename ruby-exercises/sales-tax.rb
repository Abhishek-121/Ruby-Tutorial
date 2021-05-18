# frozen_string_literal: true

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
    puts 'Name of the product: '
    product = gets.chomp
    puts 'Imported?:'
    imported = gets.chomp
    puts 'Exempted from sales tax?'
    exempted = gets.chomp
    puts 'Price: '
    price = gets.to_i
    puts 'Do you want to add more items to your list(y/n): '
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

# Without Rubocop
# class SalesTax
#   @grand_total = 0
#   def initialize(price, product, imported, exempted)
#     @price = Float(price)
#     @product = product
#     @imported = imported
#     @exempted = exempted
#   end

#   def flat_tax
#     @price += @price * 0.1
#   end

#   def imported_duty
#     @price += @price * 0.05
#   end

#   def exempted
#     @price
#   end

#   while true do
#     puts 'Name of the product: '
#     product = gets.chomp
#     puts 'Imported?:'
#     imported = gets.chomp
#     puts 'Exempted from sales tax?'
#     exempted = gets.chomp
#     puts 'Price: '
#     price = gets.to_i
#     puts 'Do you want to add more items to your list(y/n): '
#     option = gets.chomp
#     if option.downcase == 'n'
#       sales_tax = SalesTax.new(price, product, imported, exempted)
#       if product == "book" || product == "medicine" || product == "food"
#         exempted = 'yes'
#       end
#       if exempted == 'yes'
#         @grand_total += sales_tax.exempted
#       else
#         @grand_total += sales_tax.flat_tax
#       end

#       if imported.downcase == 'yes'
#         @grand_total += sales_tax.imported_duty
#       end
#       puts @grand_total
#       break
#     end
#   end
# end
