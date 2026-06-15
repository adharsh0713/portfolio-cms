import express from 'express';
import { getProjects, getProjectById } from '../controllers/project.controller.js';
import { validateId } from '../middleware/project.middleware.js';

const router = express.Router();

router.get('/', getProjects);
router.get('/:projectId', validateId, getProjectById);

export default router;
