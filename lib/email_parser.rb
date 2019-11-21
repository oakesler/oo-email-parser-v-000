# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require "pry"
class EmailAddressParser
  attr_accessor :emails
  
  NEW_LIST = []
  
  def initialize(emails)
    @emails = emails 
  end
  
  def parse(emails = @emails)
    binding.pry
    final_list = []
    first_list = emails.scan(/[^,"\s]/)
    second_list = first_list.join()
    third_list = second_list.gsub(/m/, 'm,')
    fourth_list = third_list.split(",")
    fourth_list.each do |item|
      if final_list.include?(item) == false
        final_list << item
      end
    end
    final_list
  end
end
    
    #temp_list = emails.split()
    #temp_list.map do |item|
      #if final_list.include?("#{item}") == false
        #final_list << item
      #end
    #end
    #final_list
  #end
#end


 #temp_list << emails.split(", ")

    #temp_list.each do |address|
     #new_list << address
   #end
   #temp_list
   #new_list
 #end
 #end

#new_list << emails.split(, )