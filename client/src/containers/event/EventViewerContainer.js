import React, { useEffect } from "react";
import { useParams } from "react-router-dom";
import { useDispatch, useSelector } from "react-redux";
import EventViewerCompots from "../../components/event/EventViewerCompots";
import { eventPostMovie } from "../../modules/eventpost";

const EventViewerContainer = () => {
  const { eventNum } = useParams();
  const dispatch = useDispatch();
  const eventpost = useSelector(({ eventpost }) => eventpost);

  useEffect(() => {
    dispatch(eventPostMovie(eventNum));
  }, [dispatch, eventNum]);

  return (
    <div>
      <EventViewerCompots eventpost={eventpost} />;
    </div>
  );
};

export default EventViewerContainer;
