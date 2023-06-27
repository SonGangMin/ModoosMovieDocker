var DataTypes = require("sequelize").DataTypes;
var _boardcomments = require("./boardcomments");
var _boards = require("./boards");
var _cinema = require("./cinema");
var _events = require("./events");
var _moviereviews = require("./moviereviews");
var _tickets = require("./tickets");
var _users = require("./users");

function initModels(sequelize) {
  var boardcomments = _boardcomments(sequelize, DataTypes);
  var boards = _boards(sequelize, DataTypes);
  var cinema = _cinema(sequelize, DataTypes);
  var events = _events(sequelize, DataTypes);
  var moviereviews = _moviereviews(sequelize, DataTypes);
  var tickets = _tickets(sequelize, DataTypes);
  var users = _users(sequelize, DataTypes);


  return {
    boardcomments,
    boards,
    cinema,
    events,
    moviereviews,
    tickets,
    users,
  };
}
module.exports = initModels;
module.exports.initModels = initModels;
module.exports.default = initModels;
