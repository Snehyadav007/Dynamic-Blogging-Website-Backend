-- Sample Entries for Users Table
INSERT INTO Users (username, email, password, full_name, bio, profile_image_url)
VALUES
    ('user1', 'user1@email.com', 'password123', 'User One', 'Bio for User One', 'profile1.jpg'),
    ('user2', 'user2@email.com', 'password456', 'User Two', 'Bio for User Two', 'profile2.jpg');

-- Sample Entries for Categories Table
INSERT INTO Categories (name)
VALUES
    ('Category A'),
    ('Category B'),
    ('Category C');

-- Sample Entries for BlogPosts Table
INSERT INTO BlogPosts (title, content, author_id, category_id)
VALUES
    ('Post 1 Title', 'Content for Post 1', 1, 1),
    ('Post 2 Title', 'Content for Post 2', 2, 2);

-- Sample Entries for Tags Table
INSERT INTO Tags (name)
VALUES
    ('Tag A'),
    ('Tag B'),
    ('Tag C');

-- Sample Entries for Comments Table
INSERT INTO Comments (post_id, author_id, content)
VALUES
    (1, 2, 'Comment on Post 1'),
    (2, 1, 'Comment on Post 2');

-- Sample Entries for Likes Table
INSERT INTO Likes (user_id, post_id)
VALUES
    (1, 2),
    (2, 1);

-- Sample Entries for Followers Table
INSERT INTO Follows (follower_id, followed_user_id)
VALUES
    (1, 2),
    (2, 1);

-- Sample Entries for Post Tags Table
INSERT INTO posttags (post_id, tag_id)
VALUES
    (1, 1),
    (1, 2),
    (2, 3);

-- Sample Entries for Media Table
INSERT INTO Media (file_url, post_id)
VALUES
    ('post1_image.jpg', 1),
    ('post2_image.jpg', 2);
