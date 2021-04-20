PRAGMA foreign_keys=ON;

CREATE TABLE IF NOT EXISTS users (
    id        INTEGER PRIMARY KEY,
    username  TEXT NOT NULL UNIQUE,
    email     TEXT NOT NULL UNIQUE,
    password  TEXT NOT NULL
);
INSERT INTO users VALUES(1, 'baekhyunee_exo', 'exolnaeggo@exoplanet.com', 'baekhyun4');
INSERT INTO users VALUES(2, 'kimjongdae', 'bossbellkim@exoplanet.com', 'chenchen');
INSERT INTO users VALUES(3, 'real__pcy', 'loeygotothespacenow@exoplanet.com', 'chanyeol61');
INSERT INTO users VALUES(4, 'zkdlin', 'zkdlin@exoplanet.com', 'jongin:)');
INSERT INTO users VALUES(5, 'oohsehun', 'ohvivi@exoplanet.com', 'monsieur412');
INSERT INTO users VALUES(6, 'e_xiu_o', 'xiuweetime@exoplanet.com', 'minseok');
INSERT INTO users VALUES(7, 'kimjuncotton', 'cotton@exoplanet.com', 'junmyeon0522');
INSERT INTO users VALUES(8, 'layzhang', 'iamthesheep@exoplanet.com', 'yixing1111');
INSERT INTO users VALUES(9, 'dokyungsoo', 'dokyungsoo@exoplanet.com', 'kyungsoo');

CREATE TABLE IF NOT EXISTS followers (
    id            INTEGER PRIMARY KEY,
    follower_id   INTEGER NOT NULL,
    following_id  INTEGER NOT NULL,

    FOREIGN KEY(follower_id) REFERENCES users(id),
    FOREIGN KEY(following_id) REFERENCES users(id),
    UNIQUE(follower_id, following_id)
);
INSERT INTO followers(follower_id, following_id) VALUES(1, 3);
INSERT INTO followers(follower_id, following_id) VALUES(1, 5);
INSERT INTO followers(follower_id, following_id) VALUES(1, 2);
INSERT INTO followers(follower_id, following_id) VALUES(1, 9);
INSERT INTO followers(follower_id, following_id) VALUES(2, 6);
INSERT INTO followers(follower_id, following_id) VALUES(2, 1);
INSERT INTO followers(follower_id, following_id) VALUES(3, 1);
INSERT INTO followers(follower_id, following_id) VALUES(3, 5);
INSERT INTO followers(follower_id, following_id) VALUES(3, 9);
INSERT INTO followers(follower_id, following_id) VALUES(4, 5);
INSERT INTO followers(follower_id, following_id) VALUES(4, 9);
INSERT INTO followers(follower_id, following_id) VALUES(5, 1);
INSERT INTO followers(follower_id, following_id) VALUES(5, 2);
INSERT INTO followers(follower_id, following_id) VALUES(5, 9);
INSERT INTO followers(follower_id, following_id) VALUES(5, 4);
INSERT INTO followers(follower_id, following_id) VALUES(5, 7);
INSERT INTO followers(follower_id, following_id) VALUES(6, 2);
INSERT INTO followers(follower_id, following_id) VALUES(7, 5);
INSERT INTO followers(follower_id, following_id) VALUES(7, 4);
INSERT INTO followers(follower_id, following_id) VALUES(7, 8);
INSERT INTO followers(follower_id, following_id) VALUES(8, 1);
INSERT INTO followers(follower_id, following_id) VALUES(8, 2);
INSERT INTO followers(follower_id, following_id) VALUES(8, 7);
INSERT INTO followers(follower_id, following_id) VALUES(9, 5);
INSERT INTO followers(follower_id, following_id) VALUES(9, 2);
INSERT INTO followers(follower_id, following_id) VALUES(9, 1);
INSERT INTO followers(follower_id, following_id) VALUES(9, 4);


CREATE VIEW IF NOT EXISTS following
AS
    SELECT users.username, friends.username as friendname
    FROM users, followers, users AS friends
    WHERE
        users.id = followers.follower_id AND
        followers.following_id = friends.id;

