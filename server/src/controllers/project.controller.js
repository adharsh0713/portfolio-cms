import { pool } from '../config/db.js';

export const getProjects = async (req, res) => {
  try {
    const projects = await pool.query('SELECT * FROM projects ORDER BY created_at');

    res.status(200).json(projects.rows);
  } catch (error) {
    res.status(500).json({
      message: error.message,
    });
  }
};

export const getProjectById = async (req, res) => {
  try {
    const id = req.params.projectId;

    const project = await pool.query('SELECT * FROM projects WHERE id = $1', [id]);

    res.status(200).json(project.rows[0]);
  } catch (error) {
    res.status(500).json({
      message: error.message,
    });
  }
};
