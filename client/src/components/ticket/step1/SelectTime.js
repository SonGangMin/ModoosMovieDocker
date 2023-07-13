import React, { useCallback, useEffect, useState } from "react";
import { useDispatch, useSelector } from "react-redux";
import styled from "styled-components";
import { AreaItem, MovieList } from "./SelectMovie";
import { readTime, setTimeData } from "../../../modules/stepfirst";

const BtnWrap = styled.div`
  display: flex;
`;
const FilterBtn = styled.button`
  position: relative;
  width: calc(100% / 6);
  height: 50px;
  background: none;
  border: none;
  border-bottom: 1px solid #ddd;
  cursor: pointer;
  transition: 0.3s ease;
  &.selected {
    border-bottom: 2px solid #000;
    &:after {
      content: "";
      position: absolute;
      bottom: -2px;
      left: 0;
      width: 100%;
      height: 2px;
      background: #000;
    }
  }
`;

const TimeWrap = styled.ul`
  padding: 0 20px;
`;

const ScheduleBtn = styled.div`
  position: relative;
  display: inline-block;
  width: 23%;
  margin-left: 2%;
  margin-bottom: 10px;
  &.selected{
    border: 1px solid;
  }
  &:nth-child(4n + 1) {
    margin-left: 0;
  }
  padding: 8px 14px;
  background: linear-gradient(
    to bottom,
    rgba(255, 255, 255, 1) 0%,
    rgba(248, 248, 248, 1) 100%
  );
  border: 1px solid #ddd;
  border-radius: 5px;
  cursor: pointer;
  strong {
    display: block;
    text-align: center;
  }
  span {
    font-size: 11px;
  }
`;

const SelectTime = () => {
  const [selectedFilter, setSelectedFilter] = useState("전체");
  const [selectedTime, setSelectedTime] = useState("");

  const handleFilter = (start) => {
    setSelectedFilter(start);
  };

  const { data, time } = useSelector(({ stepfirst }) => stepfirst);
  console.log(data);

  const dispatch = useDispatch();

  const onSelctedTime = useCallback(
    (time) => {
      dispatch(setTimeData(time));
    },
    [dispatch]
  );

  const handleSelectTime = (e, start, end) => {
    setSelectedTime(e.target.start);
    onSelctedTime(start, end);
    console.log(selectedTime);
  };
  
  useEffect(() => {
    dispatch(readTime());
  }, []);

  const groupedData = {};

  time.forEach((item) => {
    const { cinema, movie_name, age, disp, language, start, end, seat } = item;
    const key = `${movie_name}-${disp}-${language}`;
    if (!groupedData[key]) {
      groupedData[key] = {
        cinema,
        movie_name,
        age,
        disp,
        language,
        start: [],
        end,
        seat,
      };
    }
    groupedData[key].start.push(start);
  });

  const uniqueTimes = Object.values(groupedData);

  const filteredTimes = uniqueTimes
    .filter((item) => {
      if (selectedFilter === "전체") {
        return true;
      } else if (selectedFilter === "스페셜관") {
        return item.disp === "스페셜관";
      } else if (selectedFilter === "Atmos") {
        return item.disp === "Atmos";
      } else if (selectedFilter === "13시 이후") {
        return item.start.some(
          (start) => parseInt(start.split(":")[0], 10) >= 13
        );
      } else if (selectedFilter === "19시 이후") {
        return item.start.some(
          (start) => parseInt(start.split(":")[0], 10) >= 19
        );
      } else if (selectedFilter === "심야") {
        return item.start.some((start) => {
          const hour = parseInt(start.split(":")[0], 10);
          return (hour >= 0 && hour < 6) || hour === 23;
        });
      }
      return true;
    })
    .map((item) => {
      const { start } = item;
      const filteredStart = start.filter((time) => {
        if (selectedFilter === "13시 이후") {
          return parseInt(time.split(":")[0], 10) >= 13;
        } else if (selectedFilter === "19시 이후") {
          return parseInt(time.split(":")[0], 10) >= 19;
        } else if (selectedFilter === "심야") {
          const hour = parseInt(time.split(":")[0], 10);
          return (hour >= 0 && hour < 6) || hour === 23;
        }
        return true;
      });
      return { ...item, start: filteredStart };
    });

  return (
    <>
      <BtnWrap>
        <FilterBtn
          onClick={handleFilter}
          className={selectedFilter === "전체" ? "selected" : ""}
        >
          전체
        </FilterBtn>
        <FilterBtn
          onClick={handleFilter}
          className={selectedFilter === "스페셜관" ? "selected" : ""}
        >
          스페셜관
        </FilterBtn>
        <FilterBtn
          onClick={handleFilter}
          className={selectedFilter === "Atmos" ? "selected" : ""}
        >
          Atmos
        </FilterBtn>
        <FilterBtn
          onClick={handleFilter}
          className={selectedFilter === "13시 이후" ? "selected" : ""}
        >
          13시 이후
        </FilterBtn>
        <FilterBtn
          onClick={handleFilter}
          className={selectedFilter === "19시 이후" ? "selected" : ""}
        >
          19시 이후
        </FilterBtn>
        <FilterBtn
          onClick={handleFilter}
          className={selectedFilter === "심야" ? "selected" : ""}
        >
          심야
        </FilterBtn>
      </BtnWrap>
      <TimeWrap>
        {data.cinema && data.date && (
          <>
            {filteredTimes
              .filter((item) => {
                if (data.movie) {
                  return (
                    item.cinema === data.cinema &&
                    item.movie_name === data.movie.movie_name
                  );
                } else {
                  return item.cinema === data.cinema;
                }
              })
              .map((item) => (
                <AreaItem
                  key={`${item.cinema}-${item.movie_name}-${item.age}-${item.disp}-${item.language}`}
                  className="movie_list time"
                >
                  <MovieList>
                    <span
                      className={`${
                        item.age === "all"
                          ? "age_all"
                          : item.age === "12"
                          ? "age_12"
                          : item.age === "15"
                          ? "age_15"
                          : item.age === "19"
                          ? "age_19"
                          : ""
                      } age`}
                    ></span>
                    {item.movie_name}
                  </MovieList>
                  <div>
                    <div>
                      <p>{item.disp}</p>
                      <p>{item.language}</p>
                    </div>
                    <div>
                      {item.start.map((start, index) => (
                        <ScheduleBtn
                          key={index}
                          onClick={(e) => handleSelectTime(e, start, item.end)}
                          className={selectedTime ? 'selected' : ''}
                        >
                          <strong>{start}</strong>
                          <span>{item.seat}</span>
                          <span>{item.end}</span>
                        </ScheduleBtn>
                      ))}
                    </div>
                  </div>
                </AreaItem>
              ))}
          </>
        )}
      </TimeWrap>
    </>
  );
};

export default SelectTime;