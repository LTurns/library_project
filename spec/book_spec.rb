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

 it "takes three parameters and returns a book object" do
   lambda { Book.new "Title", "Author"}.should raise_exception ArgumentError

 end

 end
end

#'Book#new'is a convention which means the same as Classname#methodname
