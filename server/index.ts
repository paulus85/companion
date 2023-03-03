import dotenv from "dotenv";
import httpServer from "./src/app";

dotenv.config();

const port = process.env.PORT;

httpServer.listen(port, () => {
  console.log(`⚡️[server]: Server is running at http://localhost:${port}`);
});
