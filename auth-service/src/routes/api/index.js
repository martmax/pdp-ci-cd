import authRouter from './auth.routes';

import express from 'express';

const router = express.Router();

router.use('/auth', authRouter);

export default router;
