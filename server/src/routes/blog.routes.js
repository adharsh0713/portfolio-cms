import { Router } from 'express';
import { getBlogBySlug, getBlogs } from '../controllers/blog.controller.js';
import { validatePostSlug } from '../middleware/blog.middleware.js';

const router = Router();

router.get('/', getBlogs);
router.get('/:slug', validatePostSlug, getBlogBySlug);

export default router;
