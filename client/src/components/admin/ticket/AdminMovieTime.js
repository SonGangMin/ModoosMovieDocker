import React, { useEffect, useState } from "react";
import { useDispatch, useSelector } from "react-redux";
import styled from "styled-components";
import { selectedRegion } from "../../../modules/stepfirst";
import DatePicker from "react-datepicker";
import "react-datepicker/dist/react-datepicker.css";

const TitleUpload = styled.div`
  display: flex;
  justify-content: space-between;
  align-items: center;
  width: 100%;
`;
const Title = styled.h2``;
const Add = styled.button`
  display: block;
  height: 30px;
  padding: 5px 15px;
  background: none;
  border: 1px solid #ddd;
  border-radius: 5px;
  font-size: 12px;
  font-weight: bold;
  cursor: pointer;
`;
const Table = styled.table`
  width: 100%;
  margin-top: 20px;
  border: 1px solid #ddd;
  border-spacing: 0;

  tr {
    &:last-child {
      td {
        border-bottom: 0;
      }
    }
  }
  th {
    background: #fafafa;
  }
  th,
  td {
    padding: 10px;
    text-align: center;
    border-bottom: 1px solid #ddd;
  }
`;
const AddModal = styled.div`
  position: fixed;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.3);

  .modalWrap {
    position: fixed;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    width: 420px;
    height: 500px;
    background: #fff;
    border-radius: 5px;
  }
  .modalInner {
    position: relative;
    width: 100%;
    height: 100%;
    padding: 30px;
    overflow: auto;
  }

  li {
    display: flex;
    margin-bottom: 10px;

    p {
      width: 100px;
    }

    .inputWrap {
      display: flex;
      flex-wrap: wrap;
      width: 100%;

      .react-datepicker-wrapper {
        width: 100%;
      }

      input,
      select {
        width: 100%;
        padding: 5px 10px;
        margin-bottom: 5px;
      }
    }
  }
`;

const ModalBtn = styled.div`
  width: 100%;
  display: flex;
  justify-content: center;

  button {
    padding: 5px 20px;
    background: none;
    border: 1px solid #ddd;
    border-radius: 5px;
    cursor: pointer;

    &:first-child {
      margin-right: 5px;
    }
    &:last-child {
      background: #ff243e;
      color: #fff;
      border: none;
    }
  }
`;
const AdminMovieTime = ({
  setCinema,
  setRoom,
  setSeat,
  setMovie,
  setAge,
  setDisp,
  setLanguage,
  setStart,
  setEnd,
  date,
  setDate,
  formatDate
}) => {
  const [regionSelect, setRegionSelect] = useState(null);

  const { time, data, region, cinema, movie } = useSelector(
    ({ stepfirst }) => stepfirst
  );

  const dispatch = useDispatch();

  const handleChangeRegion = (e) => {
    dispatch(selectedRegion(e.target.value));
    setRegionSelect(e.target.value);
  };

  useEffect(() => {
    selectedRegion(null);
  }, []);
  return (
    <div>
      <TitleUpload>
        <Title>상영스케줄 관리</Title>
        <Add>추가</Add>
      </TitleUpload>
      <Table>
        <thead>
          <tr>
            <th>번호</th>
            <th>영화관</th>
            <th>좌석수</th>
            <th>상영관</th>
            <th>영화제목</th>
            <th>연령</th>
            <th>스크린</th>
            <th>언어</th>
            <th>상영시간</th>
            <th>종료시간</th>
            <th>상영날짜</th>
          </tr>
        </thead>
        <tbody>
          {time.map((item) => (
            <tr key={item.movietimes_num}>
              <td>{item.movietimes_num}</td>
              <td>{item.cinema}</td>
              <td>{item.seat}</td>
              <td>{item.room}</td>
              <td>{item.movie_name}</td>
              <td>{item.age}</td>
              <td>{item.disp}</td>
              <td>{item.language}</td>
              <td>{item.start}</td>
              <td>{item.end}</td>
              <td>{item.date}</td>
            </tr>
          ))}
        </tbody>
      </Table>
      <AddModal>
        <div className="modalWrap">
          <div className="modalInner">
            <ul>
              <li>
                <p>영화관</p>
                <div className="inputWrap">
                  <select name="region" onChange={handleChangeRegion}>
                    <option defaultValue="">지역</option>
                    {region &&
                      region.map((re) => (
                        <option key={re.grade} value={re.grade}>
                          {re.region}
                        </option>
                      ))}
                  </select>
                  <select onChange={(e) => setCinema(e.target.value)}>
                    <option defaultValue="">영화관</option>
                    {regionSelect &&
                      cinema.map((cine) => (
                        <option key={cine.cinema_num} value={cine.cinema}>
                          {cine.cinema}
                        </option>
                      ))}
                  </select>
                </div>
              </li>
              <li>
                <p>좌석수</p>
                <div className="inputWrap">
                  <input
                    type="number"
                    onChange={(e) => setSeat(e.target.value)}
                  />
                </div>
              </li>
              <li>
                <p>상영관</p>
                <div className="inputWrap">
                  <select onChange={(e) => setRoom(e.target.value)}>
                    <option value="1">1</option>
                    <option value="2">2</option>
                  </select>
                </div>
              </li>
              <li>
                <p>영화제목</p>
                <div className="inputWrap">
                  <select onChange={(e) => setMovie(e.target.value)}>
                    <option defaultValue="">영화선택</option>
                    {movie.map((m) => (
                      <option key={m.movie_num} value={m.movie_name}>
                        {m.movie_name}
                      </option>
                    ))}
                  </select>
                </div>
              </li>
              <li>
                <p>영화연령</p>
                <div className="inputWrap">
                  <select onChange={(e) => setAge(e.target.value)}>
                    <option defaultValue="">연령선택</option>
                    <option value="all">all</option>
                    <option value="12">12</option>
                    <option value="15">15</option>
                    <option value="19">19</option>
                  </select>
                </div>
              </li>
              <li>
                <p>스크린</p>
                <div className="inputWrap">
                  <select onChange={(e) => setDisp(e.target.value)}>
                    <option value="2D">2D</option>
                  </select>
                </div>
              </li>
              <li>
                <p>언어</p>
                <div className="inputWrap">
                  <select onChange={(e) => setLanguage(e.target.value)}>
                    <option defaultValue="">자막유무</option>
                    <option value="">자막없음</option>
                    <option value="자막">자막</option>
                  </select>
                </div>
              </li>
              <li>
                <p>상영시간</p>
                <div className="inputWrap">
                  <input
                    type="text"
                    placeholder="ex) 00:00"
                    onChange={(e) => setStart(e.target.value)}
                  />
                </div>
              </li>
              <li>
                <p>종료시간</p>
                <div className="inputWrap">
                  <input
                    type="text"
                    placeholder="ex) 00:00"
                    onChange={(e) => setEnd(e.target.value)}
                  />
                </div>
              </li>
              <li>
                <p>상영날짜</p>
                <div className="inputWrap date">
                  <DatePicker
                    selected={date}
                    onChange={(selectedDate) => {
                        const formattedDate = formatDate(selectedDate);
                        setDate(formattedDate);
                      }}
                    dateFormat="yyyy-MM-dd"
                  />
                </div>
              </li>
            </ul>
            <ModalBtn>
              <button>취소</button>
              <button>등록</button>
            </ModalBtn>
          </div>
        </div>
      </AddModal>
    </div>
  );
};

export default AdminMovieTime;