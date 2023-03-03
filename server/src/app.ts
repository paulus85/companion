import express, { Request, Response } from "express";
import { Server } from "socket.io";
import { createServer } from "http";

const app = express();
const httpServer = createServer(app);
const io = new Server(httpServer);

app.get("/", (req: Request, res: Response) => {
  res.send({
    uptime: process.uptime(),
    message: "OK",
    timestamp: Date.now(),
  });
});

io.on("connection", (socket) => {
  console.log("a user connected");
  console.log(socket.id);
});

export default httpServer;
