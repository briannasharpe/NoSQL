PRAGMA foreign_keys=ON;

CREATE TABLE IF NOT EXISTS posts (
    id          INTEGER PRIMARY KEY,
    username    INTEGER NOT NULL,
    text        TEXT NOT NULL,
    timestamp   INTEGER DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO posts(username, text) VALUES('baekhyunee_exo', '에리들 사랑하고 고마워 이 겨울이 끝나기 전에 또 보고싶다 열심히 준비해서 또 나올게 !');
INSERT INTO posts(username, text) VALUES('baekhyunee_exo', '라이브를준비해볼까');
INSERT INTO posts(username, text) VALUES('real__pcy', '천재견 인정');
INSERT INTO posts(username, text) VALUES('real__pcy', '앞으로 삼십분!! 미우치아프라다와 라프시먼스가 공동으로 크리에이티브 디렉터로 참여한 첫번째 패션쇼');
INSERT INTO posts(username, text) VALUES('oohsehun', 'super matcha kit #수퍼말차 #porecare #skincarekit #미라클처럼 보송촉촉 #광고');

CREATE INDEX IF NOT EXISTS post_username_idx ON posts(username);
CREATE INDEX IF NOT EXISTS post_timestamp_idx ON posts(timestamp);

