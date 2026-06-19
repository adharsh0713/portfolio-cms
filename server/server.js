import express from 'express';
import dotenv from 'dotenv';
import cors from 'cors';

import projectRoutes from './src/routes/project.routes.js';
import blogRoutes from './src/routes/blog.routes.js';

dotenv.config();
const app = express();
app.use(cors());

app.get('/health', (req, res) => {
  res.json({ status: 'ok' });
});

app.use('/api/projects', projectRoutes);

app.use('/api/posts', blogRoutes);

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
  console.log(`Server started on port ${PORT}`);
});
