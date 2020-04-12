require 'spec_helper'

#all tests are passed into a block. Here we are using Book as a class.
describe Book do

 #Before means this section will be run before each test.
 before :each do
   #create an instance variable inside the class (so it is accessible everywhere)
   @book = Book.new "Title", "Author", :category
 end

#tests begin with "it" and have a do and end.
 describe "#new" do
  it "returns a new book object" do
   @book.should( be_an_instance_of ( Book ))
 end

 it "throws an ArgumentError when less than 3 parameters are given" do
   lambda { Book.new "Title", "Author"}.should raise_exception ArgumentError

 end
end

#these methods ensure the correct variables are provided.
 describe "#title" do
   it "returns the correct book title" do
   @book.title.should eql "Title"
   end
 end 

 describe "#author" do
   it "returns the correct book author" do
   @book.author.should eql "Author"
   end
 end

 describe "#category" do
   it "returns the correct book category" do
   @book.category.should eql :category
   end
 end
end

#eql - matches Title accordingly (the string inside the variable is correct)
#equal - is exactly identical to the string - equal in the literal sense according to the code

#'Book#new'is a convention which means the same as Classname#methodname
