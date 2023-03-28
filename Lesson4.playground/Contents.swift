import UIKit

// MARK: - OOP

// blog
//let postTitle = "OOP"
//let postText = "OOP OOP OOP"
//let postAuthor = "JI"
//
//let postTitle2 = "OOP"
//let postText2 = "OOP OOP OOP"
//let postAuthor2 = postAuthor


class Post {
    var postTitle = ""
    var postText = ""
    var postAuthor = ""
}

let firstPost = Post()

firstPost.postTitle = "This is my first post"
firstPost.postText = "Text here"
firstPost.postAuthor = "JI"

let secondPost = firstPost

secondPost.postTitle = "This is my 2nd post"
secondPost.postText = "New post"

firstPost === secondPost


class Comment {
    var like = ""
    var author = ""
    
    var numberOfComments = 0
    
    func addComment() {
        numberOfComments += 1
    }
}

let firstComment = Comment()

firstComment.addComment()
firstComment.addComment()
firstComment.addComment()


class Human {
    var myName: String
    var myAge: Int
    
    init(name: String, age: Int) {
        self.myName = name
        self.myAge = age
    }
}

let person = Human(name: "Jack", age: 50)
person.myAge


class Parent {
    var myName: String
    var myAge: Int
    
    init(name: String, age: Int) {
        self.myName = name
        self.myAge = age
    }
    
    func walk() {
        print("can walk")
    }
}

let dad = Parent(name: "Sam", age: 40)

dad.myName
dad.walk()


class Child: Parent {
    
    func feeding() {
        if myAge <= 2 {
            print("needs a help")
        }else{
            print("can eat independately")
        }
    }
    
    func educating() {
        if myAge <= 4 {
            print("kinder age")
        }else{
            print("ready to go to school")
        }
    }
}

let littleBoy = Child(name: "Tom", age: 2)
littleBoy.feeding()


class Figure {
    func draw() {}
}

class Circle: Figure {
    
    override func draw() {
        print("Draw the circle")
    }
}

class Rectangle: Figure {
    
    override func draw() {
        print("Draw the rectangle")
    }
}


let rectangle = Rectangle()
rectangle.draw()
