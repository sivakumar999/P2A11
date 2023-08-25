create database ContentDB
use ContentDB

create table Articles
(
    ArticleId int primary key,
    Title nvarchar(MAX),
    Content nvarchar(MAX),
    PublishDate datetime
)

insert into Articles (ArticleId, Title, Content, PublishDate)
values
    (1, 'Introduction to SQL', 'SQL is a powerful database query language.', '2023-08-24'),
    (2, 'Web Development Basics', 'Learn the fundamentals of web development.', '2023-08-25'),
    (3, 'Data Modeling Techniques', 'Understand how to create effective data models.', '2023-08-26')

select * from Articles
