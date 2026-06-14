-- USERS

CREATE TABLE users (
                       id SERIAL PRIMARY KEY,

                       username VARCHAR(50)
                           UNIQUE
                           NOT NULL,

                       email VARCHAR(255)
                           UNIQUE
                           NOT NULL,

                       password_hash TEXT
                           NOT NULL,

                       created_at TIMESTAMP
                           DEFAULT CURRENT_TIMESTAMP
);


-- PROJECTS

CREATE TABLE projects (
                          id SERIAL PRIMARY KEY,

                          title VARCHAR(255)
                              NOT NULL,

                          slug VARCHAR(255)
                              UNIQUE
                              NOT NULL,

                          description TEXT
                              NOT NULL,

                          github_url TEXT,

                          live_url TEXT,

                          technologies TEXT[],

                          featured BOOLEAN
                              NOT NULL
                              DEFAULT FALSE,

                          created_at TIMESTAMP
                              DEFAULT CURRENT_TIMESTAMP,

                          updated_at TIMESTAMP
                              DEFAULT CURRENT_TIMESTAMP
);


-- BLOG POSTS

CREATE TABLE blog_posts (
                            id SERIAL PRIMARY KEY,

                            title VARCHAR(255)
                                NOT NULL,

                            slug VARCHAR(255)
                                UNIQUE
                                NOT NULL,

                            excerpt TEXT,

                            content TEXT
                                NOT NULL,

                            status VARCHAR(20)
                                NOT NULL
                                DEFAULT 'draft'
                                CHECK (
                                    status IN (
                                               'draft',
                                               'published',
                                               'archived'
                                        )
                                    ),

                            published_at TIMESTAMP,

                            created_at TIMESTAMP
                                DEFAULT CURRENT_TIMESTAMP,

                            updated_at TIMESTAMP
                                DEFAULT CURRENT_TIMESTAMP
);