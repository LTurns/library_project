require './spec_helper'

#all tests are passed into a block. Here we are using Book as a class.
describe Book do

 #Before means this section will be run before each test.
 Before: each do
   #create an instance variable inside the class (so it is accessible everywhere)
   @book = Book.new "Title", "Author", :category
   
 end

#tests begin with "it" and have a do and end.
 it "" do
 end
end
