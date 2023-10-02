*(check all that apply) Identify Object Relationships: Check all that justify the direct connection between the two mentioned objects for an inventory system? (1 point)*
# A. vendors send out shipments 
# B. customers make payments
~C. employees checkout items~
~D. employees balance inventories~ 
# E. vendors sell products

# A, B, E = 1

*In the ER model for a library checkout system, the involved entities include Book, BookCopy, Patron, Checkout, Return, Reservation, Employee, and Transaction. Assume each return is for many books. If a book is returned with damage, where do you record the information so that we can track the damage by user in case we need to? (1 point)*
~A. Book~
~B. BookCopy~
~C. Patron~
# D. Association between Return and BookCopy 
~E. Return~

*(check all that apply) Identify Object Relationships: Which of the following may justify a direct relationship (without going through an intermediate record) between a customer record and a product record in an e-commerce system? (1 point)*
~A. customers buy products~
# B. customers are assigned to review certain products 
~C. customers evaluate products~
# D. customers wish-list their favorite products
~E. customers search for products~

# B, D = 1

*What is not right about weak entities? (1 point)*
~A. often used to model multivalued attributes~
~B. do not have a full UID themselves~
# C. must have 1:m relationships with a strong entity
~D. cannot exist independently of a strong entity~

*What technique is used to model the situation that Student may have multiple addresses? (1 point)*
~A. Associative Entity (gerund)~ 
# B. Weak entities
~C. Super/sub types~
~D. Recursive relationships~

*How is a gerund converted into a relational model? (1 point)*
~A. ignore the gerund in the conversion~ 
~B. convert the gerund into a table without primary key~
~C. Convert the gerund into a table duplicate the primary keys of its both ends as a part of the composite foreign key for the gerund table~
# D. convert the gerund into a table and duplicate the primary keys of its both ends as a part of the composite primary key for the gerund table

*In the ER diagram for a Point of Sale system, there are entities such as Cashier, Product, Checkout, Transaction, CheckoutStand, Return, Inventory, etc. Here inventory records each storage location and its capacity. Assume we need to track certain products are bundled and must be sold together. Which of the following is the correct design? (1 point)*
~A. Create Bundle entity to link with Product~ 
# B. Create a recursive relationship for Product
~C. Create Bundle as a weak entity of Product~
~D. Create Bunble as a subtype of Product~

*The difference between char(100) and varcharc2(100) is that, when actual text is less than 100 characters, varchar2(100) will automatically save the remaining unused spaces for other uses. True or False (1 point)*
# A. True
~B. False~

*(check all that apply) When do you use recursive relationships? (1 point)*
# A. the relationship between employees and their supervisors
~B. the relationship between employees and their dependents~
~C. the relationship between employees and their departments~
# D. the relationship between employees and their team members
~E. the relationship between employees and their job assignments~

# A, D = 1

*How do you convert a recursive m:m relationship into relational tables? (1 point)*
~A. duplicate the primary key twice inside the same table~
~B. duplicate the primary key once inside the same table~
# C. create a junction table and duplicate the primary key twice in the junction table
~D. create a junction table and duplicate the primary key once in the junction table~
