-- USERS

INSERT INTO users (username,
                   email,
                   password_hash)
VALUES ('luffy', 'luffy@gmail.com', '$2b$10$gmoZ/zp7lfUK8tAAkV3MTOZUjuM1I3WAyIvNWPXdvPUui4.sQDLkm'),
       ('admin', 'admin@gmail.com', '$2b$10$e7KaI5RqwutrRAdeGZhJQuVs/MMbmVedzCh8BsPK3pLVpG1wy6DVW');

-- PROJECTS

INSERT INTO projects (title,
                      slug,
                      description,
                      github_url,
                      live_url,
                      technologies,
                      featured)
VALUES ('Portfolio CMS',
        'portfolio-cms',
        'A full-stack content management system for managing portfolio projects and blog posts.',
        'https://github.com/adharsh0713/portfolio-cms',
        'https://portfolio-cms-demo.com',
        ARRAY ['React', 'Node.js', 'Express', 'PostgreSQL'],
        TRUE);

-- BLOG POSTS

INSERT INTO blog_posts (title,
                        slug,
                        excerpt,
                        content,
                        status,
                        published_at)
VALUES ('How I Built My Portfolio CMS',
        'how-i-built-my-portfolio-cms',
        'Building a portfolio CMS using React, Express and PostgreSQL.',
        'This article explains the architecture, database design, API development and deployment process used in building the Portfolio CMS project.',
        'published',
        CURRENT_TIMESTAMP),
       ('PostgreSQL Notes for Beginners',
        'postgresql-notes-for-beginners',
        'Important PostgreSQL concepts every backend developer should know.',
        'This article covers tables, constraints, joins, indexes, transactions and practical SQL commands.',
        'published',
        CURRENT_TIMESTAMP);