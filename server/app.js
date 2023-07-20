const express = require("express");
const path = require("path");
const cookieParser = require("cookie-parser");
const logger = require("morgan");
const cors = require("cors");
const dotenv = require("dotenv");
const { sequelize } = require("./models");

const authRouter = require("./routes/auth");
const ticketRouter = require("./routes/ticket");
const meetRouter = require("./routes/meet");
const postRouter = require("./routes/post");
const eventRouter = require("./routes/event");
const currentMovie = require("./routes/currentmovie");
const cinemaRouter = require("./routes/cinema");
// const adminEventRouter = require("./routes/admin/adminevent");

const axios = require("axios");
const mysql = require("mysql2");

const app = express();
dotenv.config();

app.use(logger("dev"));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());

// const connection = mysql.createConnection({
//   host: "192.168.10.104",
//   user: "CarCarO2",
//   password: "edurootroot",
//   database: "ModoosMovie",
// });

app.use(express.static(path.join(__dirname, "public")));

app.use(
  cors({
    origin: "http://localhost:3000",
    methods: ["GET", "POST", "OPTIONS", "PATCH", "DELETE"],
    credentials: true,
  })
);

app.use("/auth", authRouter);
app.use("/ticket", ticketRouter);

app.use("/post", postRouter);
app.use("/event", eventRouter);
app.use("/currentmovie", currentMovie);
app.use("/meet", meetRouter);
app.use("/cinema", cinemaRouter);
// app.use("/admin/event/", adminEventRouter);

// catch 404 and forward to error handler
app.use((req, res, next) => {
  const error = new Error(`${req.method} ${req.url} 라우터가 없습니다.`);
  error.status = 404;
  next(error);
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get("env") === "development" ? err : {};

  // render the error page
  res.status(err.status || 500);
});
app.listen(app.get("port"), () => {
  console.log(app.get("port"), "번 포트에서 대기중");
});

module.exports = app;
