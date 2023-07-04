import { createAction, handleActions } from "redux-actions";
import createRequestSaga, {
  createRequestActionTypes,
} from "../lib/createRequestSaga";
import * as authAPI from "../lib/api/auth";
import * as meetAPI from "../lib/api/meet";
import { takeLatest, call } from "redux-saga/effects";

const TEMP_SET_USER = "user/TEMP_SET_USER";
const [CHECK, CHECK_SUCCESS, CHECK_FAILURE] =
  createRequestActionTypes("user/CHECK");
const LOGOUT = "user/LOGOUT";
const JOIN_MEET = "user/JOIN_MEET";

export const tempSetUser = createAction(TEMP_SET_USER, (user) => user);
export const check = createAction(CHECK);
export const logout = createAction(LOGOUT);
export const join = createAction(JOIN_MEET);

const checkSaga = createRequestSaga(CHECK, authAPI.check);
const joinSaga = createRequestSaga(JOIN_MEET, meetAPI.joinMeet);

function checkFailureSaga() {
  try {
    localStorage.removeItem("user");
  } catch (error) {
    console.log("localStorage is not working");
  }
}
function* logoutSaga() {
  try {
    yield call(authAPI.logout);
    localStorage.removeItem("user");
  } catch (error) {
    console.log(error);
  }
}

export function* userSaga() {
  yield takeLatest(CHECK, checkSaga);
  yield takeLatest(CHECK_FAILURE, checkFailureSaga);
  yield takeLatest(LOGOUT, logoutSaga);
  yield takeLatest(JOIN_MEET, joinSaga);
}

const initialState = {
  user: {
    meet: [],
  },
  checkError: null,
};

export default handleActions(
  {
    [TEMP_SET_USER]: (state, { payload: user }) => ({
      ...state,
      user,
    }),
    [CHECK_SUCCESS]: (state, { payload: user }) => ({
      ...state,
      user,
      checkError: null,
    }),
    [CHECK_FAILURE]: (state, { payload: error }) => ({
      ...state,
      user: null,
      checkError: error,
    }),
    [LOGOUT]: (state) => ({
      ...state,
      user: null,
    }),
    [JOIN_MEET]: (state, { payload: meet }) => ({
      ...state,
      user: {
        ...state.user,
        meet: [...state.user.meet, meet.meetNum],
      },
    }),
  },
  initialState
);
