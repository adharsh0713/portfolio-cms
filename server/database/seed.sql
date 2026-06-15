-- USERS

INSERT INTO users (username,
                   email,
                   password_hash)
VALUES ('luffy', 'luffy@gmail.com', '$2b$10$gmoZ/zp7lfUK8tAAkV3MTOZUjuM1I3WAyIvNWPXdvPUui4.sQDLkm'),
       ('admin', 'admin@gmail.com', '$2b$10$e7KaI5RqwutrRAdeGZhJQuVs/MMbmVedzCh8BsPK3pLVpG1wy6DVW');

-- PROJECTS

INSERT INTO projects (title,
                      description,
                      tech_stack,
                      image_url,
                      github_url,
                      live_url,
                      featured)
VALUES ('Portfolio CMS',
        'A full-stack content management system for managing portfolio projects and blog posts.',
        ARRAY ['React', 'Node.js', 'Express', 'PostgreSQL'],
        'https://image.jpeg',
        'https://github.com/adharsh0713/portfolio-cms',
        'https://portfolio-cms-demo.com',
        TRUE);

-- BLOG POSTS

INSERT INTO blog_posts (title,
                        slug,
                        body,
                        status,
                        published_at)
VALUES ('How I Built My Portfolio CMS',
        'how-i-built-my-portfolio-cms',
        'This article explains the architecture, database design, API development and deployment process used in building the Portfolio CMS project.',
        'published',
        CURRENT_TIMESTAMP),
       ('PostgreSQL Notes for Beginners',
        'postgresql-notes-for-beginners',
        'This article covers tables, constraints, joins, indexes, transactions and practical SQL commands.',
        'published',
        CURRENT_TIMESTAMP);