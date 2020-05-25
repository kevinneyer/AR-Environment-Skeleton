User.delete_all
Category.delete_all
Book.delete_all
Author.delete_all
Checkout.delete_all



user1 = User.create(name: "John")
user2 = User.create(name: "Jim")
user3 = User.create(name: "Anna")
user4 = User.create(name: "Laura")
user5 = User.create(name: "Bill")

cat1 = Category.create(name: "Horror")
cat2 = Category.create(name: "Sci_fi")
cat3 = Category.create(name: "Drama")
cat4 = Category.create(name: "DIY")


author1 = Author.create(name: "Steven King")
author2 = Author.create(name: "John C Handy")
author3 = Author.create(name: "Louisa May Alcott")
author4 = Author.create(name: "Sci-Fi Man")

book1 = Book.create(title: "The Shining", author: author1, category: cat1)
book2 = Book.create(title: "Little Women", author: author3, category: cat3)
book3 = Book.create(title: "Star Trek", author: author4, category: cat2)
book4 = Book.create(title: "It", author: author1, category: cat1)
book5 = Book.create(title: "Fix Your Plumbing", author: author2, category: cat4)


check1 = Checkout.create(user: user1, book: book1)
check2 = Checkout.create(user: user2, book: book2)
check3 = Checkout.create(user: user3, book: book4)
check4 = Checkout.create(user: user1, book: book3)