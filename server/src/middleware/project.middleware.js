export const validateId = (req, res, next) => {
  const id = Number(req.params.projectId);

  if (!Number.isInteger(id) || id <= 0) {
    return res.status(400).json({
      message: 'Invalid project id',
    });
  }

  next();
};
