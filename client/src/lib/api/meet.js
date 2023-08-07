import client from "./client";

export const writeMeet = ({ title, body, tags, userId, region }) => {
  return client.post("/meet/write", { title, body, tags, userId, region });
};
export const readMeet = (meetNum) => {
  return client.get(`/meet/detail/${meetNum}`);
};
export const Meetlist = ({ tag, region, page, sort }) => {
  console.log("dsdfasfsadf", tag, region, page, sort);
  return client.get(`/meet/list`, {
    params: { tag, region, page, sort },
  });
};
export const joinMeet = ({ user, meetNum }) => {
  console.log("joinMeet API", user, meetNum);
  return client.post("/meet/join", { user, meetNum });
};
export const withdrawMeet = ({ user, meetNum }) => {
  return client.post(`/meet/withdraw`, { user, meetNum });
};
export const updateMeet = ({ meetNum, title, body, tags, region }) =>
  client.patch(`/meet/detail/${meetNum}`, {
    meetNum,
    title,
    body,
    tags,
    region,
  });
export const removeMeet = (meetNum) =>
  client.delete(`/meet/${meetNum}`, meetNum);

// 게시판
export const writeMeetBoard = ({ body, userId, meetNum }) => {
  return client.post("/meet/writeMeetBoard", { body, userId, meetNum });
};

export const MeetBoardList = (meetNum) => {
  return client.get("/meet/meetBoardList", { params: { meetNum } });
};

export const readComment = (meetboardNum) => {
  return client.get(`/meet/meetBoardList/${meetboardNum}`);
};

export const writeMeetComment = ({ userId, body, meetboard_Num }) => {
  return client.post("/meet/writeMeetComment", { userId, body, meetboard_Num });
};

export const removeMeetBoard = ({ meetboardNum, meetNum }) => {
  return client.delete(`/meet/detail/${meetboardNum}`, {
    params: { meetboardNum, meetNum },
  });
};

export const removeMeetComment = ({ meetcommentNum, meetboardNum }) => {
  return client.delete(`/meet/detail/comment/${meetcommentNum}`, {
    params: { meetcommentNum, meetboardNum },
  });
};

export const updateMeetBoard = ({ meetboardNum, MeetNum, body }) => {
  return client.post(`/meet/updateMeetBoard/${meetboardNum}`, {
    meetboardNum,
    MeetNum,
    body,
  });
};

export const updateMeetComment = ({ meetcommentNum, MeetBoardNum, body }) => {
  return client.post(`/meet/updateMeetComment/${meetcommentNum}`, {
    meetcommentNum,
    MeetBoardNum,
    body,
  });
};

// 채팅
export const getMsg = ({ meetNum, userId }) => {
  return client.post("/meet/chat/getmsg", {
    meetNum,
    userId,
  });
};

export const sendMsg = ({ userId, meetNum, message }) => {
  return client.post("/meet/chat/sendmsg", {
    userId,
    meetNum,
    message,
  });
};

//회원관리
export const mandate = ({ meetuserId, meetNum }) => {
  return client.post(`/meet/manage/mandate/${meetuserId}`, { meetNum });
};

export const kickMeet = ({ meetNum, meetuserNum }) => {
  return client.post(`/meet/manage/kick/${meetuserNum}`, { meetNum });
};
