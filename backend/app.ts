import dotenv from "dotenv";

dotenv.config();

import express, { Express, NextFunction, Request, Response } from "express";
import mongoose from "mongoose";
import { StatusCodes } from "http-status-codes";
import { Server } from "node:http";

const app: Express = express();
const port = process.env.PORT || 80;
const server = new Server(app);

app.disable("x-powered-by");
app.set("trust proxy", true);

app.use((req: Request, res: Response, next: NextFunction) => {
  res.header("Content-Type", "application/json");
  next();
});

app.get("/", (req, res) => {
  res.status(StatusCodes.OK).send("Hello world")
});

mongoose
  .connect(process.env.MONGODB as string)
  .then(async () => {
    console.log("[database]: Connected to database");

    server.listen(port, () => {
      console.log(
        "\x1b[32m%s\x1b[0m",
        `[server]: Server is running at http://localhost:${port}`
      );
    });
  })
  .catch((e) => {
    console.log("\x1b[31m%s\x1b[0m", `[database]: ${e.message}`);
  });
