const express = require("express");
const {
  register,
  check,
  login,
  logout,
  checkDuplicate,
  withdraw,
  checkPW,
} = require("../controllers/auth");
const router = express.Router();

router.post("/register", register);
router.get("/check", check);
router.post("/login", login);
router.post("/logout", logout);
router.post("/checkDuplicate", checkDuplicate);

//MyPage
router.post("/withdraw/:id", withdraw);
router.post("/check/:id", checkPW);

module.exports = router;
