class Student < ActiveRecord::Base
	validates :name, :presence => true
	validates :registration_number, :presence => true, :uniqueness => true
	validates :amount, :presence => true
	validates :receipt_number, :presence => true, :uniqueness => true



	def self.search(search)
	  where("registration_number LIKE ? OR receipt_number LIKE ?", "%#{search}%", "%#{search}%") 
	end
end
def bubble_sort(array)
		  n = array.length

		  loop do
		    swapped = false

		    (n-1).times do |i|
		      if array[i] > array[i+1]
		        array[i], array[i+1]=array[i+1], array[i]
		        swapped = true
		      end
		    end

		    break if not swapped
		  end

		  array
		end

		a = "amount"
		p bubble_sort(a)

