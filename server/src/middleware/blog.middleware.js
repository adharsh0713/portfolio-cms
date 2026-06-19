import { param, validationResult } from 'express-validator';

export const validatePostSlug = [
  param('slug')
    .trim()
    .matches(/^[a-z0-9-]+$/)
    .withMessage('Invalid slug'),

  (req, res, next) => {
    const errors = validationResult(req);

    if (!errors.isEmpty()) {
      return res.status(400).json({
        error: errors.array()[0].msg,
      });
    }

    next();
  },
];
