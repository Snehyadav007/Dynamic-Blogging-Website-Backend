CREATE TABLE Users (
user_id INT PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(255) UNIQUE NOT NULL,
email VARCHAR(255) UNIQUE NOT NULL,
password VARCHAR(255) NOT NULL,
full_name VARCHAR(255),
bio TEXT,
profile_image_url VARCHAR(255),
registration_date DATETIME DEFAULT CURRENT_TIMESTAMP
);




CREATE TABLE Categories (
category_id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(255) NOT NULL
);





CREATE TABLE BlogPosts (
post_id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(255) NOT NULL,
content TEXT NOT NULL,
author_id INT NOT NULL,
publication_date DATETIME DEFAULT CURRENT_TIMESTAMP, last_modified_date DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE
CURRENT_TIMESTAMP,
category_id INT NOT NULL,
FOREIGN KEY (author_id) REFERENCES Users(user_id),
FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);





CREATE TABLE Tags (
tag_id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(255) NOT NULL
);



CREATE TABLE Comments (
comment_id INT PRIMARY KEY AUTO_INCREMENT,
post_id INT,
author_id INT,
content TEXT NOT NULL,
comment_date DATETIME DEFAULT CURRENT_TIMESTAMP, parent_comment_id INT,
FOREIGN KEY (post_id) REFERENCES BlogPosts(post_id),
FOREIGN KEY (author_id) REFERENCES Users(user_id),
FOREIGN KEY (parent_comment_id) REFERENCES Comments(comment_id)
);







CREATE TABLE Likes (
like_id INT PRIMARY KEY AUTO_INCREMENT,
user_id INT,
post_id INT,
like_date DATETIME DEFAULT CURRENT_TIMESTAMP, FOREIGN KEY (user_id) REFERENCES Users(user_id), FOREIGN KEY (post_id) REFERENCES BlogPosts(post_id)
);







CREATE TABLE Follows (
follower_id INT,
followed_user_id INT,
PRIMARY KEY (follower_id, followed_user_id),
FOREIGN KEY (follower_id) REFERENCES Users(user_id), FOREIGN KEY (followed_user_id) REFERENCES Users(user_id)
);






CREATE TABLE posttags (
post_id INT,
tag_id INT,
PRIMARY KEY (post_id, tag_id),
FOREIGN KEY (post_id) REFERENCES BlogPosts(post_id), FOREIGN KEY (tag_id) REFERENCES Tags(tag_id)
);






CREATE TABLE Media (
media_id INT PRIMARY KEY AUTO_INCREMENT,
file_url VARCHAR(255) NOT NULL,
post_id INT,
FOREIGN KEY (post_id) REFERENCES BlogPosts(post_id)
);








