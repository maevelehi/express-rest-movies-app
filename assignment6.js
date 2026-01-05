const express = require("express");
const app = express();
const fs = require("fs");
require("dotenv").config();
app.use(express.json());

app.use("/js", express.static("./public/js"));
app.use("/css", express.static("./public/css"));
app.use("/img", express.static("./public/img"));

app.get("/", function (req, res) {
  let doc = fs.readFileSync("./app/html/index.html", "utf8");
  res.send(doc);
});

app.get("/movies", function (req, res) {
  let resFormat = req.query["format"];
  if (resFormat == "json") {
    res.setHeader("Content-Type", "application/json");
    res.send(fs.readFileSync("./app/data/movies.json", "utf8"));
  } else {
    res.status(400).json({ status: "fail", msg: "Wrong format!" });
  }
});

app.get("/movie-join", function (req, res) {
  const mysql = require("mysql2");
  //node connect to mysql
  const connection = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
  });

  let myResults = null;
  connection.connect();
  connection.execute(
    `SELECT A01468635_movie.title, 
                A01468635_movie.release_year,
                A01468635_movie.director,
                A01468635_movie.description,
                DATE_FORMAT(A01468635_movie_review.review_date, '%Y-%m-%d') AS review_date,
                A01468635_movie_review.review_text,
                A01468635_movie_review.review_time,
                A01468635_movie_review.rating,
                A01468635_movie_review.views
        FROM A01468635_movie
        INNER JOIN A01468635_movie_review
        ON A01468635_movie.movie_id = A01468635_movie_review.movie_id AND A01468635_movie.movie_id = 1`,
    function (error, results, fields) {
      if(error) {
        console.log(error);
      }
      res.json(results);
      connection.end();
    }
  );
});

app.use(function (req, res, next) {
  res
    .status(404)
    .send(
      "<html><head><title>Page not found!</title></head><body><p>Nothing here.</p></body></html>"
    );
});

app.listen(8000, () => {
  console.log("server is listening");
});
