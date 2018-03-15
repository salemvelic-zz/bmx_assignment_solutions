## Theory

**Q.** What type of inheritance does Ruby have?

**A.** Ruby have only single inheritance, that means that class can only inherit from one class. 

**Q.** Which iteration is more idiomatic?

```
# A
[1, 2, 3].each { |number| p number * 10 }

```

```
# B
for number in [1, 2, 3]
  p number * 10
end
```

What is happening behind the scenes in each case (basic explanation)?

**A.** A is more idiomatic. Both cases on the first look doing almost the same thing, taking numbers from 1 till 3 and then print multiply by 10. 
But behind the scene, each works like this:
1. Create a local i variable
2. Assign 1 to i
3. Run block
4. Create a local i variable
5. Assign 2 to i
6. Run block
7. Create a local i variable
8. Assign 3 to i
9. Run block

However, for works like this:
1. Create an i variable unless it exists (only for does this)
2. Assign 1 to i
3. Run block
4. Assign 2 to i
5. Run block
6. Assign 3 to i
7. Run block

In for loop there is only one variable and it still exits  after the loop. That's not the case with each(). 


**Q.** Is it possible to invoke `Foo#qux` method? Try it.

```
class Foo
  private

  def qux
    puts "Can you reach me?"
  end
end
```
**A.** No, it is not. Method #qux is private, what means that it cannot be called explicitly. Private methods can be called only in the context of the current object. 

**Q.** What keyword do you use when you declare String data?
**A.** Strings primarily exist within single (') or double (") quotes, so to create a string, it is necessary to enclose a sequence of characters in quotes, for example: "Hello, World!"

**Q.** What is Enumerable?
**A.** The Enumerable mixin provides collection classes with several traversal and searching methods, and with the ability to sort.

**Q.** What will the method `#bar` send to the standard output? Why?

```
class Foo
  def self.bar
    puts "My name is #{self}."
  end
end
``` 
**A.** Method #bar will write My name is Foo because 'self' refers to the current class which is 'Foo'.   
Self is special variable that points to the object that "owns" the currently executing code.

**OPTIONAL**

**Q.** In abstract, explain what Ruby does internally so that the output of the
following code example is `['A', 'B', 'C']`.

```
["a", "b", "c"].map(&:upcase)
```

**A.** Map runs the block for each element, outputting each returned value from the block (the original object is unchanged).
& operator creating a lambda function that will call method ':upcase' so the new array have upcase letters.