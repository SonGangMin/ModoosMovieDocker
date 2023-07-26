const { Op } = require("sequelize");
const { events, users } = require("../../models");

exports.adminEventWrite = async (req, res, next) => {
  const {
    categoryId,
    userId,
    eventTitle,
    eventContent,
    eventImg,
    startEventDate,
    endEventDate,
  } = req.body;

  if (!categoryId || !eventTitle || !eventContent || !eventImg || !startEventDate || !endEventDate) {
    res.status(400).json({ message: "제목과 내용들을 입력해주세요." });
    return;
  }

  try {
    const eventImgString = JSON.stringify(eventImg);
    const eventContentString = JSON.stringify(eventContent);
    const newAdminEventWrite = await events.create({
      categoryId,
      userId,
      eventTitle,
      eventContent: eventContentString,
      eventImg: eventImgString,
      startEventDate,
      endEventDate,
    });
    console.log("newAdminEventWrite", newAdminEventWrite);
    res.status(200).json(newAdminEventWrite);
  } catch (error) {
    res.status(500).json(error);
    next(error);
  }
};

exports.adminEventRead = async (req, res, next) => {
  const eventNum = req.params.eventNum;
  const event = await events.findOne({
    where: { eventNum },
  });
  if (!event) {
    res.status(404).json({ message: "게시글이 존재하지 않습니다." });
  }
  res.json(event);
  console.log("adminEventRead", event);
};

exports.adminEventList = async (req, res) => {
  // console.log("adminEventList페이지 백 page====", req.query.page);
  const page = parseInt(req.query.page || "1", 10);
  if (page < 1) {
    res.status(400);
    return;
  }
  const limit = 10;
  const offset = (page - 1) * limit;
  try {
    console.log("adminEventListPage", page);
    const admineventlist = await events.findAll({
      order: [["eventNum", "DESC"]],
      limit,
      offset,
    });

    const totalCount = await events.count({});
    const totalPages = totalCount ? Math.ceil(totalCount / limit) : 1;
    console.log("토탈카운트", totalCount, totalPages);
    res.json({
      admineventlist,
      totalPages,
    });
  } catch (error) {
    res.status(500).json(error);
  }
};

exports.adminEventUpdate = async (req, res, next) => {
  const {
    eventNum,
    categoryId,
    eventTitle,
    eventContent,
    eventImg,
    startEventDate,
    endEventDate,
  } = req.body;

  try {
    const eventImgString = JSON.stringify(eventImg);
    const eventContentString = JSON.stringify(eventContent);
    const existingEvent = await events.findOne({
      where: { eventNum },
    });

    if (!existingEvent) {
      res.status(404).json({ message: "이벤트가 존재하지 않습니다." });
      return;
    }

    const [updateEventRows] = await events.update(
      {
        categoryId,
        eventTitle,
        eventContent: eventContentString,
        eventImg: eventImgString,
        startEventDate,
        endEventDate,
      },
      {
        where: { eventNum },
      }
    );

    if (updateEventRows === 0) {
      res.status(404).json({ message: "업데이트되지 않았습니다." });
      return;
    }

    const updatedEvent = await events.findOne({
      where: { eventNum },
    });

    res.json(updatedEvent);
  } catch (error) {
    res.status(500).json(error);
    next(error);
  }
};

exports.adminEventDelete = async (req, res, next) => {
  const eventNum = req.params.eventNum;

  try {
    const deletedEventRows = await events.destroy({
      where: { eventNum },
    });

    if (deletedEventRows === 0) {
      res.status(404).json({ message: "이벤트가 존재하지 않습니다." });
      return;
    }

    res.status(204).end();
  } catch (error) {
    res.status(500).json(error);
    next(error);
  }
};
