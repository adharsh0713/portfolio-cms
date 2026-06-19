import { pool } from '../config/db.js';

export const getBlogs = async (req, res) => {
  try {
    const blogs = await pool.query('SELECT * FROM blog_posts WHERE status = $1', ['published']);

    res.status(200).json(blogs.rows);
  } catch (error) {
    res.status(500).json({
      message: error.message,
    });
  }
};

export const getBlogBySlug = async (req, res) => {
  try {
    const { slug } = req.params;

    const blog = await pool.query(`SELECT * FROM blog_posts WHERE slug = $1 and status = $2`, [
      slug,
      'published',
    ]);

    if (!blog.rows[0]) {
      res.status(404).json({
        error: 'Blog not found',
      });
    }

    res.status(200).json(blog.rows[0]);
  } catch (error) {
    res.status(500).json({
      message: error.message,
    });
  }
};
