import { createAction, handleActions } from "redux-actions";
import createRequestSaga, {
  createRequestActionTypes,
} from "../lib/createRequestSaga";
import * as regionAPI from "../lib/api/ticket";
import { takeLatest, put } from "redux-saga/effects";

// 액션 타입--------------------------------------------------------

const [READ_REGION, READ_REGION_SUCCESS, READ_REGION_FAILURE] =
  createRequestActionTypes("stepfirst/READ_REGION");

const [SELECTED_REGION, SELECTED_REGION_SUCCESS, SELECTED_REGION_FAILURE] =
  createRequestActionTypes("stepfirst/SELECTED_REGION");

const [READ_MOVIE, READ_MOVIE_SUCCESS, READ_MOVIE_FAILURE] =
  createRequestActionTypes("stepfirst/READ_MOVIE");

const [READ_TIME, READ_TIME_SUCCESS, READ_TIME_FAILURE] =
  createRequestActionTypes("stepfirst/READ_TIME");

const [SET_FIRST_DATA] = createRequestActionTypes("stepfirst/SET_FIRST_DATA");

const [SET_SECOND_DATA] = createRequestActionTypes("stepfirst/SET_SECOND_DATA");

const [SET_DATE_DATA] = createRequestActionTypes("stepfirst/SET_DATE_DATA");

const [SET_TIME_DATA] = createRequestActionTypes("stepfirst/SET_TIME_DATA");

// 액션 생성--------------------------------------------------------

export const readRegion = createAction(READ_REGION);

export const selectedRegion = createAction(SELECTED_REGION, (grade) => grade);

export const readMovie = createAction(READ_MOVIE);

export const setFirstData = createAction(SET_FIRST_DATA, (cinema) => ({
  cinema,
}));

export const setSecondData = createAction(SET_SECOND_DATA, (movie) => ({
  movie,
}));

export const setDateData = createAction(SET_DATE_DATA, (date) => ({
  date,
}));

export const setTimeData = createAction(SET_TIME_DATA, (start, end) => ({
  start,
  end,
}));

export const readTime = createAction(READ_TIME);

// 사가 함수--------------------------------------------------------

export const readRegionSaga = createRequestSaga(READ_REGION, regionAPI.regions);
export function* regionSaga() {
  yield takeLatest(READ_REGION, readRegionSaga);
  yield put(selectedRegion(1));
}

export const selectedRegionSaga = createRequestSaga(
  SELECTED_REGION,
  regionAPI.selectedRegion
);
export function* SelectedSaga() {
  yield takeLatest(SELECTED_REGION, selectedRegionSaga);
}

export const readMovieSaga = createRequestSaga(READ_MOVIE, regionAPI.movies);
export function* movieReadSaga() {
  yield takeLatest(READ_MOVIE, readMovieSaga);
}

export const readTimeSaga = createRequestSaga(READ_TIME, regionAPI.times);
export function* timeSaga() {
  yield takeLatest(READ_TIME, readTimeSaga);
}

// 초기 값--------------------------------------------------------

const today = new Date();
const year = today.getFullYear();
const month = today.getMonth() + 1;
const day = today.getDate();

const format =
  year +
  "-" +
  ("00" + month.toString()).slice(-2) +
  "-" +
  ("00" + day.toString()).slice(-2);
  
const initialState = {
  region: [],
  cinema: [],
  movie: [],
  date: "",
  time: [],
  data: { cinema: "", movie: "", date: `${format}(오늘)`, time: "" },
  error: null,
};

// 핸들 액션------------------------------------------------------

const stepfirst = handleActions(
  {
    [READ_REGION_SUCCESS]: (state, action) => ({
      ...state,
      region: action.payload,
    }),
    [READ_REGION_FAILURE]: (state, { payload: error }) => ({
      ...state,
      error,
    }),
    // ----------------------------------------------------
    [SELECTED_REGION_SUCCESS]: (state, action) => ({
      ...state,
      cinema: action.payload,
    }),
    [SELECTED_REGION_FAILURE]: (state, error) => ({
      ...state,
      error,
    }),
    // ----------------------------------------------------
    [READ_MOVIE_SUCCESS]: (state, action) => ({
      ...state,
      movie: action.payload,
    }),
    [READ_MOVIE_FAILURE]: (state, error) => ({
      ...state,
      error,
    }),
    // ----------------------------------------------------
    [SET_FIRST_DATA]: (state, action) => ({
      ...state,
      data: {
        ...state.data,
        cinema: action.payload.cinema,
      },
    }),
    [SET_SECOND_DATA]: (state, action) => ({
      ...state,
      data: {
        ...state.data,
        movie: action.payload.movie,
      },
    }),
    // ----------------------------------------------------
    [SET_DATE_DATA]: (state, action) => ({
      ...state,
      data: {
        ...state.data,
        date: action.payload.date,
      },
    }),
    // ----------------------------------------------------
    [SET_TIME_DATA]: (state, action) => ({
      ...state,
      data: {
        ...state.data,
        time: `${action.payload.start} ~ ${action.payload.end}`,
      },
    }),
    // ----------------------------------------------------
    [READ_TIME_SUCCESS]: (state, action) => ({
      ...state,
      time: action.payload,
    }),
    [READ_TIME_FAILURE]: (state, error) => ({
      ...state,
      error,
    }),
  },
  initialState
);

export default stepfirst;
