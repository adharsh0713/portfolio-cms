-- USERS

CREATE TABLE users
(
    id            SERIAL PRIMARY KEY,

    username      VARCHAR(50)
        UNIQUE
        NOT NULL,

    email         VARCHAR(255)
        UNIQUE
        NOT NULL,

    password_hash TEXT
        NOT NULL,

    created_at    TIMESTAMPTZ
        NOT NULL DEFAULT NOW()
);


-- PROJECTS

CREATE TABLE projects
(
    id          SERIAL PRIMARY KEY,

    title       VARCHAR(255)
        NOT NULL,

    description TEXT
        NOT NULL,

    tech_stack  TEXT[],

    image_url   TEXT,

    github_url  TEXT,

    live_url    TEXT,

    featured    BOOLEAN
        NOT NULL DEFAULT FALSE,

    created_at  TIMESTAMPTZ
        NOT NULL DEFAULT NOW(),

    updated_at  TIMESTAMPTZ
        NOT NULL DEFAULT NOW()
);


-- BLOG POSTS

CREATE TABLE blog_posts
(
    id           SERIAL PRIMARY KEY,

    title        VARCHAR(255)
        NOT NULL,

    slug         VARCHAR(255)
        UNIQUE
        NOT NULL,

    body         TEXT
        NOT NULL,

    status       VARCHAR(20)
        NOT NULL
                 DEFAULT 'draft'
        CHECK (
            status IN (
                       'draft',
                       'published',
                       'archived'
                )
            ),

    published_at TIMESTAMPTZ,

    created_at   TIMESTAMPTZ
        NOT NULL DEFAULT NOW(),

    updated_at   TIMESTAMPTZ
        NOT NULL DEFAULT NOW()
);