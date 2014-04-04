SegueDemo
=========

Demo code for an unwind segue - Objective C - iOS7 - Xcode 5

------------------------------------------------------------------

I will begin with the solution to my problem:

[self performSegueWithIdentifier:@"some identifier" sender:self];

------------------------------------------------------------------

Well it happens to be, that when you're using Xcode 5 and it's great
UI, you can use navigation controllers and view controllers and use
the great power of its controls to navigate between them. 

But it also happens that I needed to make some navigation with some
custom views which are added programatically and I was having problems
on doing the "unwind" from a view controller to the other. 

The solution is somehow an easy one and the code is posted in here
