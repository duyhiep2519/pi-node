import express, { Application, Request, Response } from 'express';
import dotenv from 'dotenv';

dotenv.config();

const app: Application = express();

const port: number = parseInt(process.env.PORT || '5000', 10);

app.get('/toto', (req: Request, res: Response) => {
  res.send('Hello toto');
});

app.listen(port, function () {
  console.log(`App is listening on port ${port} !`);
});
