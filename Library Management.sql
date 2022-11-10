Create Database [Library Management System]
Go

/*Creating and Populating Tables*/

Create table Books(Book_ID int primary key not null, Title nvarchar (100) not null, Author nvarchar (100) not null, Publisher nvarchar (100) not null, Genre nvarchar(100) not null)
Insert into Books values
(01, 'The Da Vinci Code', 'Dan Brown', 'Transworld', 'Crime, Thriller and Adventure'),
(02, 'The Kite Runner', 'Khaled Hosseini', 'Bloomsbury', 'Literary Fiction'),
(03, 'The Alchemist', 'Paulo Coelho', 'Harper Collins', 'General Fiction'),
(04, 'Harry Potter and The Half-Blood Prince', 'J.K. Rowling', 'Bloomsbury', 'Fantasy'),
(05, 'Becoming', 'Michelle Obama', 'Viking', 'Autobiography'),
(06, 'The Secret of The Nagas', 'Amish Tripathi', 'Westland', 'Mythology'),
(07, 'The Power of You Suconscious Mind', 'Joseph Murphy', 'Fingerprint Classics', 'Non-Fiction'),
(08, 'To Kill a Mockingbird', 'Harper Lee', 'Harper Collins', 'Classic Fiction'),
(09, 'The Last Song', 'Nicholas Sparks', 'Brown Book Group', 'Romance'),
(10, 'Wings of Fire', 'A P J Abdul Kalam', 'Universities Press', 'Autobiography'),
(11, 'Tomb of Sand', 'Geetanjali Shree', 'Penguin Books India', 'Domestic Fiction'),
(12, 'It Ends With Us', 'Coollean Hoover', 'Simon and Schuster', 'Romance'),
(13, 'Where The Crawdads Sing', 'Delia Owens','GP Putnam', 'Literary Fiction'),
(14, 'House of Sky and Breath', 'Sarah J. Maas', 'Bloomsbury', 'Fantasy'),
(15, 'In The Blood', 'Jack Carr', 'Simon and Schuster', 'Thriller'),
(16, 'Divergent', 'Veronica', 'Harper Collins', 'Science Fiction'),
(17, 'Nightwork', 'Nora Roberts', 'Macmillan', 'Romance, Suspense'),
(18, 'Sparring Partners', 'John Grisham', 'Doubleday', 'Thriller'),
(19, 'Insurgent', 'Veronica Roth', 'Katherine Tegen', 'Science Fiction'),
(20, 'Harry Potter and The Chamber of Secrets', 'J.K. Rowling' , 'Bloomsbury', 'Fantasy'),
(21, 'A Promised Land', 'Barack Obama', 'Crown', 'Autobiography'),
(22, 'House of Cards', 'Sudha Murty', 'India Penguin', 'Domestic Fiction'),
(23, 'Oliver Twist', 'Charles Dickens', 'Simon and Schuster', 'Literary Fiction'),
(24, 'The Merchant of Venice', 'William Shakespeare', 'Selina Publishers', 'Shakespearean Comedy'),
(25, 'Gitanjali', 'Rabindranath Tagore', 'Macmillan', 'Poem')

Select * from Books

Update Books
set Publisher = 'Harper Collins'
where Book_ID = 19

Update Books
set Publisher = 'Penguin Books India'
where Book_ID = 22


Create table Publisher (Publisher_Name varchar (100) not null, Phone varchar (50) null)
Insert into Publisher values 
('Transworld', '800-888-4741'), 
('Bloomsbury', '1140574957'),
('Harper Collins', '1-800-242-7737'),
('Viking', '1-800-733-3000'),
('Westland', ''),
('Fingerprint Classics', '1123265358'),
('Brown Book',''),
('Universities Press', '040-27662849'),
('Penguin Books India', '0124-4785600'),
('Simon and Schuster', '0120-4089389'),
('Macmillan', '0120-4000100'),
('Doubleday', '1-212-782-9000'),
('Crown', '1-800-726-0600'),
('Selena Publishers', '011-2328-0711')

select * from Publisher

Create table Borrowers (Card_No int primary key not null identity (500,1), Name varchar(100) not null, Phone_No varchar(50) not null)
Insert into Borrowers ( name, Phone_No) values 
('Shiv Sharma', '2345998765'),
('Priyanka Chaudhary', '9876678841'),
('Ankit Gupta', '3478890546'),
('Shalin Aggarwal', '8796582345'),
('Nimrit Kaur', '8875573386'),
('Gautam Singh', '9087452391')

Select * from Borrowers 


Create table Branch ([Branch ID] int primary key not null,[Branch Name] varchar (50)) 
Insert into Branch values
(1, 'East Side'),
(2, 'West Side'),
(3, 'North Side'),
(4, 'South Side'),
(5, 'Central')

Select * from Branch

Create table [Book Copies] (Book_ID int not null constraint fk_bookid_2 foreign key references books(Book_ID)
                          ,[Branch ID] int not null constraint fk_branchid foreign key references branch ([branch id])
						  ,Copies int not null) 

Insert into [Book Copies] values 
(1, 1, 4),
(1, 2, 4),
(1, 3, 4),
(1, 4, 4),
(1, 5, 5),
(2, 1, 4),
(2, 2, 4),
(2, 3, 4),
(2, 4, 4),
(2, 5, 5),
(3, 1, 4),
(3, 2, 4),
(3, 3, 4),
(3, 4, 4),
(3, 5, 5),
(4, 1, 4),
(4, 2, 4),
(4, 3, 4),
(4, 4, 4),
(4, 5, 5),
(5, 1, 4),
(5, 2, 4),
(5, 3, 4),
(5, 4, 4),
(5, 5, 5),
(6, 1, 4),
(6, 2, 4),
(6, 3, 4),
(6, 4, 4),
(6, 5, 5),
(7, 1, 4),
(7, 2, 4),
(7, 3, 4),
(7, 4, 4),
(7, 5, 5),
(8, 1, 4),
(8, 2, 4),
(8, 3, 4),
(8, 4, 4),
(8, 5, 5),
(9, 1, 4),
(9, 2, 4),
(9, 3, 4),
(9, 4, 4),
(9, 5, 5),
(10, 1, 4),
(10, 2, 4),
(10, 3, 4),
(10, 4, 4),
(10, 5, 5),
(11, 1, 4),
(11, 2, 4),
(11, 3, 4),
(11, 4, 4),
(11, 5, 5),
(12, 1, 4),
(12, 2, 4),
(12, 3, 4),
(12, 4, 4),
(12, 5, 5),
(13, 1, 4),
(13, 2, 4),
(13, 3, 4),
(13, 4, 4),
(13, 5, 5),
(14, 1, 4),
(14, 2, 4),
(14, 3, 4),
(14, 4, 4),
(14, 5, 5),
(15, 1, 4),
(15, 2, 4),
(15, 3, 4),
(15, 4, 4),
(15, 5, 5),
(16, 1, 4),
(16, 2, 4),
(16, 3, 4),
(16, 4, 4),
(16, 5, 5),
(17, 1, 4),
(17, 2, 4),
(17, 3, 4),
(17, 4, 4),
(17, 5, 5),
(18, 1, 4),
(18, 2, 4),
(18, 3, 4),
(18, 4, 4),
(18, 5, 5),
(19, 1, 4),
(19, 2, 4),
(19, 3, 4),
(19, 4, 4),
(19, 5, 5),
(20, 1, 4),
(20, 2, 4),
(20, 3, 4),
(20, 4, 4),
(20, 5, 5),
(21, 1, 4),
(21, 2, 4),
(21, 3, 4),
(21, 4, 4),
(21, 5, 5),
(22, 1, 4),
(22, 2, 4),
(22, 3, 4),
(22, 4, 4),
(22, 5, 5),
(23, 1, 4),
(23, 2, 4),
(23, 3, 4),
(23, 4, 4),
(23, 5, 5),
(24, 1, 4),
(24, 2, 4),
(24, 3, 4),
(24, 4, 4),
(24, 5, 5),
(25, 1, 4),
(25, 2, 4),
(25, 3, 4),
(25, 4, 4),
(25, 5, 5)

Select * from [Book Copies]

Create table [Books Issued] 
(Book_ID int not null constraint fk_bookid foreign key references  books (book_id),
card_no int not null constraint fk_cardno foreign key references borrowers (card_no),
[Branch id] int constraint fk_branch_id foreign key references branch ([branch id]), 
date_issued varchar (50) not null,
due_date varchar (50) not null)

/* GETDATE() to retrieve the date for date issued and DATEADD to retrieve the due date*/

Insert into [Books Issued] values
('1', '500', '5', '1/11/22', '1/12/22'),
('5', '500', '5', '1/11/22', '1/12/22'),
('3', '502', '1', '3/11/22', '3/12/22'),
('4', '502', '1', '1/11/22', '1/12/22'),
('7', '503', '2', '7/11/22', '7/12/22'),
('8', '504', '4', '8/11/22', '8/12/22'),
('10', '504', '4', '8/11/22', '8/12/22')

Select * from [Books Issued] 


/*Questions*/
/*Retrieve the names and card number of borrowers who have more than 1 book issued*/

Select COUNT([Books Issued].book_id) as [total count], [Books Issued].card_no, Borrowers.Name
from [Books Issued] 
inner join Borrowers on ([Books Issued].card_no) = Borrowers.Card_No
group by [Books Issued].card_no, Borrowers.Name
having  COUNT([Books Issued].book_id) > 1

/*Retrieve the branch name and the total number of books in each branch*/

Select COUNT([Book Copies].copies) as [count of copies], Branch.[Branch Name]
from [Book Copies]
inner join Branch on Branch.[Branch ID] = [Book Copies].[Branch ID]
group by ([Book Copies].copies), Branch.[Branch Name]

/*Retrieve the branch name and the total number of books issued from that branch*/

Select Branch.[Branch ID], COUNT([Books Issued].[Branch id]) as [Total Issues], Branch.[Branch Name]
from [Books Issued]
inner join Branch on [Books Issued].[Branch id] = Branch.[Branch ID]
group by Branch.[Branch ID], Branch.[Branch Name]










