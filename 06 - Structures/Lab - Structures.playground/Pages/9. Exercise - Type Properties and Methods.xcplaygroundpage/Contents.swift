/*:
## Exercise - Type Properties and Methods
 
 Imagine you have an app that requires the user to log in. You may have a `User` struct similar to that shown below. However, in addition to keeping track of specific user information, you might want to have a way of knowing who the current logged in user is. Create a `currentUser` type property on the `User` struct below and assign it to a `user` object representing you. Now you can access the current user through the `User` struct. Print out the properties of `currentUser`.
 */
struct User {
    var username: String
    var email: String
    var age: Int

    static var currentUser = User(username: "sajalgarg", email: "sajal@example.com", age: 25)
}

print("Username: \(User.currentUser.username)")
print("Email: \(User.currentUser.email)")
print("Age: \(User.currentUser.age)")
/*:
[Previous](@previous)  |  page 9 of 10  |  [Next: App Exercise - Type Properties and Methods](@next)
 */
