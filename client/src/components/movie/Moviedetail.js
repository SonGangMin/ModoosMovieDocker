import styled from "styled-components";
import React, { useState } from "react";
import ImageCarousel from "../common/ImageCarousel";
import VideoCarousel from "../common/VideoCarousel";
import MovieVideoModal from "./MovieVideoModal";
import { MdOutlineWatchLater, MdOutlineArrowRight } from "react-icons/md";
import StarRating from "./StarRating";
import CommentActionButtons from "./CommentActionButtons";
import { Link } from "../../../node_modules/react-router-dom/dist/index";

const DetailContainer = styled.div`
  display: block;
  justify-content: center;
  align-items: center;
  margin-top: 90px;
`;

const DetailContent = styled.div`
  display: flex;
  width: 980px;
  margin: 0 auto;
  padding: 50px 0 0 0;
`;
const DetailTop = styled.div`
  display: flex;
  min-height: 460px;
  margin-bottom: 15px;
`;

const PosterInfo = styled.div`
  img {
    width: 316px;
    height: 468px;
    border-radius: 20px;
  }
`;

const MovieContent1 = styled.div`
  padding-left: 50px;
`;

const MovieInfo1 = styled.div`
  display: flex;
  margin-top: 10px;
  .movielist1 {
    padding-left: 12px;
    margin-left: 12px;
  }
`;

const MovieInfo2 = styled.div`
  display: flex;
  margin-top: 50px;
  .btn_trailer {
    box-sizing: border-box;
    height: 40px;
    line-height: 38px;
    padding: 0 15px;
    border: 1px solid black;
    border-radius: 50px;
    background-color: white;
    color: black;
    font-size: 19px;
    text-align: center;
    vertical-align: middle;
    cursor: pointer;
  }
  .btn_icon_wish {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    box-sizing: border-box;
    min-width: 88px;
    height: 40px;
    line-height: 38px;
    padding: 0 15px;
    border: 1px solid black;
    border-radius: 50px;
    background-color: white;
    color: black;
    font-size: 19px;
    text-align: center;
    vertical-align: middle;
    margin-left: 10px;
    cursor: pointer;
  }
  .icon_wishheart {
    box-sizing: border-box;
    position: relative;
    width: 22px;
    height: 18px;
    background: url(/heart_bdr_black_off.svg) no-repeat 0 0;
    border: none;
    font: 0 auto;
    text-indent: -9999999em;
  }
  .btn_icon_share {
    align-items: center;
    box-sizing: border-box;
    width: 40px;
    height: 40px;
    border: 1px solid black;
    border-radius: 50px;
    background-color: white;
    color: black;
    font: 0 auto;
    text-align: center;
    vertical-align: middle;
    margin-left: 10px;
    cursor: pointer;
  }
  .icon_share {
    display: inline-block;
    width: 24px;
    height: 24px;
    background: url(/btn_icon_share.svg) 0 0 no-repeat;
  }
  button {
    font-size: 19px;
  }
`;

const MovieInfo3 = styled.div`
  margin: 20px 0 27px;
  overflow-y: scroll;
  height: 115px;
  line-height: 1.6;
  font-size: 18px;
  border: 0;
  padding: 0 20px 0 0;
`;

const Button1 = styled.button`
  width: 323px;
  height: 58px;
  font-size: 24px;
  border-radius: 60px;
  border: 1px solid #ff243e;
  background-color: #ff243e;
  color: white;
`;

const Clickevent = styled.div`
  justify-content: center;
  display: flex;
  button {
    width: 490px;
    background-color: white;
    cursor: pointer;
    border: none;
    font-size: 30px;
    border-bottom: 1px solid #ccc;

    &.active {
      border-bottom: 1px solid #000;
    }
  }
`;

const MovieContentInfo = styled.div`
  background-color: #f8f8f8;
  margin-bottom: 45px;
  .MovieContentInfo {
    width: 980px;
    margin: 0 auto;
  }
  .MovieContentInfo1 {
    padding: 50px 0;
  }
`;

const Genre = styled.div`
  display: flex;
`;

const Director = styled.div`
  display: flex;
  align-items: center;
`;

const Talent = styled.div`
  ul {
    display: flex;
    align-items: center;
    flex-wrap: wrap;
  }
`;

const VideoImageInfo = styled.div`
  width: 980px;
  margin: 0 auto;
`;

const Video = styled.div`
  display: block;
  justify-content: center;
  iframe {
    display: flex;
  }
`;

const Image = styled.div``;

const Reviews = styled.div`
  .comment {
    background: #f8f8f8;
  }
  input {
    width: 800px;
    height: 100px;
  }
`;
const Title = styled.div`
  width: 980px;
  margin: 0 auto;
  text-align: center;
  padding: 30px;
  .starInfo {
    position: relative;
    margin-top: 30px;
    padding-top: 70px;
  }
  .starInfo1 {
    display: flex;
    align-items: center;
    justify-content: center;
  }
  .txt_Info {
    padding: 74px 0 23px;
    color: #000;
    font-size: 19px;
    text-align: center;
  }
  .btn_col2 {
    width: 380px;
    height: 50px;
    margin-bottom: 35px;
    line-height: 50px;
    padding: 0 24px;
    text-decoration: none;
    cursor: pointer;
    display: inline-block;
    box-sizing: border-box;
    border-radius: 4px;
    border: 1px solid #414141;
    font-size: 14px;
    color: #ffffff !important;
    text-align: center;
    vertical-align: middle;
    background-color: #414141;
  }
`;

const Star = styled.div``;
const InputBox = styled.div`
  height: 119px;
  margin-bottom: 20px;
  border: 1px solid #ccc;
  box-sizing: border-box;
  .review-write-box {
    width: 799px;
    background: #fff;
    float: left;
  }
  textarea {
    height: 100px;
    border: none;
    width: 100%;
    line-height: 1.5;
    box-sizing: border-box;
    padding: 13px 18px;
    resize: none;
    font-size: 14px;
    outline: none;
  }
  span {
    margin: 0 10px 5px 0;
    margin-top: -3px;
    background: #fff;
    display: block;
    text-align: right;
    font-size: 10px;
    color: #666;
  }
  strong {
    color: #000;
    font-weight: bold;
  }
  button {
    float: left;
    height: 119px;
    margin-bottom: 20px;
    background-color: #414141;
    width: 119px;
    border: none;
    margin: -1px -1px 0 0;
    padding: 0;
    color: #fff;
    font-size: 15px;
    cursor: pointer;
  }
`;

const Comment = styled.div`
  width: 980px;
  margin: 0 auto;
  .Comment1 {
    padding-top: 30px;
    display: block;
    align-items: center;
    margin-bottom: 8px;
    /* width: 100%; */
  }
  .CommentHeader {
    display: flex;
    align-items: center;
    margin-bottom: 8px;
    width: 100%;
  }
  .sortright {
    display: flex;
    align-items: center;
    margin-left: auto;
  }
  .sortList {
    display: flex;
    position: relative;
    margin-left: 5px;
    float: right;
    list-style: none;
    margin: 0;
    padding: 0;
    li {
      margin-left: 15px;
    }
  }
`;

const ReviewComent = styled.ul`
  margin: 0;
  padding: 0;
  li {
    border-color: #ccc;
    position: relative;
    padding: 20px 0 15px 68px;
    border-top: 1px solid #eee;
  }
  .img {
    display: block;
    position: absolute;
    top: 15px;
    left: 10px;
    width: 42px;
    height: 42px;
  }
  img {
    width: 42px;
    height: 42px;
  }
`;
const ReviewTopInfo = styled.div`
  display: block;
  position: relative;
  margin-bottom: 6px;
  span {
    display: block;
    font-size: 14px;
    padding-bottom: 8px;
  }
  .btn_good {
    position: absolute;
    top: 0;
    right: 10px;
    font-size: 12px;
    line-height: 24px;
    padding: 5px;
    cursor: pointer;
  }
  button {
    background-color: white;
    border: none;
  }
  img {
    width: 15px;
    height: 15px;
  }
`;
const ReviewInfo = styled.div``;

const MovieDetail = ({
  moviedetail,
  showInfo,
  showReviews,
  handleShowInfo,
  handleShowReviews,
  onPublish,
  content,
  star,
  onChangecontent,
  onChangestar,
  commentlist,
  onRemove,
  onEdit,
  ownPost,
  loading,
  selectBtn,
  userId,
  isLiked,
  handleClickUpLike,
  handleClickDownLike,
  like,
}) => {
  const [isOpen, setIsOpen] = useState(false);

  if (moviedetail.length === 0) {
    console.log("아앙아아아아아");
    return;
    <img src="/loader.gif" alt="" />;
  }
  const IMG_BASE_URL = "https://image.tmdb.org/t/p/w1280";

  const genres = moviedetail.genres;
  const images = moviedetail.images.posters;
  const videos = moviedetail.videos.results;
  const credits = moviedetail.credits.cast;
  const credit = moviedetail.credits.crew;
  console.log("moviedetailcomponents", moviedetail);

  const changeDate = (d) => {
    const date = new Date(d);
    const year = date.getFullYear();
    const month = String(date.getMonth() + 1).padStart(2, "0");
    const day = String(date.getDate()).padStart(2, "0");
    const result = `${year}-${month}-${day}`;

    return result;
  };

  const openModal = () => {
    setIsOpen(true);
  };
  const oncloseModal = () => {
    setIsOpen(false);
  };

  const handleRate = (rating) => {
    console.log("별점:", rating);
    // 여기에 별점을 처리하는 로직을 추가하세요.
  };

  const renderLikeButton = (commentNum, likes) => {
    // const likedComment = like && like.find((item) => item.mc_num === commentNum);
    // const likedUser = like && like?.filter((m) => m.id === userId);
    const liked = like && like.filter((m) => m.id === userId);

    // console.log("likedComment", likedComment);
    // console.log("likedUser", likedUser);
    console.log("liked", liked);

    const hasLiked = liked && liked.find((f) => f.mc_num === commentNum);
    console.log("hasLiked", hasLiked);
    console.log("commentnum", commentNum);
    //   const likedComments = like && like.filter((item) => item.mc_num === commentNum);
    // const likedUser = like && like?.filter((m) => m.id === userId);

    // 현재 사용자가 해당 댓글에 좋아요를 눌렀는지 확인합니다.
    // const hasLike = hasLiked.length > 0;

    if (hasLiked) {
      return (
        <button
          className="btn_good"
          onClick={() => handleClickDownLike(commentNum, userId)}
        >
          <img src="/ic_review_goodred_on.png" />
          {likes}
        </button>
      );
    } else {
      return (
        <button
          className="btn_good"
          onClick={() => handleClickUpLike(commentNum, userId)}
        >
          <img src="/ic_review_good.png" />
          {likes}
        </button>
      );
    }
  };

  return (
    <DetailContainer>
      <div>
        <DetailContent>
          <DetailTop>
            <PosterInfo>
              <img
                src={IMG_BASE_URL + moviedetail.poster_path}
                alt={moviedetail.title}
              />
            </PosterInfo>
            <MovieContent1>
              <h2>{moviedetail.title}</h2>
              <MovieInfo1>
                <p>{moviedetail.release_date} 개봉</p>
                <p className="movielist1">
                  <MdOutlineWatchLater />
                  {moviedetail.runtime}분
                </p>
                <p className="movielist1">{moviedetail.popularity}만명</p>
              </MovieInfo1>
              <MovieInfo2>
                <button className="btn_trailer" onClick={openModal}>
                  <img src="/icon_trailerplay.svg" alt="예고편" /> 예고편 재생
                </button>
                <button className="btn_icon_wish">
                  <span className="icon_wishheart"></span>
                  3,749
                </button>
                <button className="btn_icon_share">
                  <span className="icon_share"></span>
                </button>
              </MovieInfo2>
              <MovieInfo3>
                <span>{moviedetail.overview}</span>
              </MovieInfo3>
              <Button1>예매하기</Button1>
            </MovieContent1>
          </DetailTop>
        </DetailContent>
        <Clickevent>
          <button
            onClick={(e) => handleShowInfo(e)}
            className={selectBtn === "영화정보" && "active"}
          >
            영화정보
          </button>
          <button
            onClick={(e) => handleShowReviews(e)}
            className={selectBtn === "평점 및 관람평" && "active"}
          >
            평점 및 관람평({commentlist && commentlist.length})
          </button>
        </Clickevent>
        {showInfo && (
          <div>
            <MovieContentInfo>
              <div className="MovieContentInfo">
                <div ClassName="MovieContentInfo1">
                  <h1>영화정보</h1>
                  <Genre>
                    <p>장르:</p>
                    {genres &&
                      genres.map((genre) => (
                        <p key={genre.id}>{genre.name}&nbsp;</p>
                      ))}
                  </Genre>
                  <Director>
                    <p>감독:</p>
                    {credit &&
                      credit.map((credit) => {
                        if (credit.job === "Director") {
                          return <p key={credit.id}>{credit.name}</p>;
                        }
                        return null;
                      })}
                  </Director>
                  <Talent>
                    <ul>
                      <p>출연진:</p>
                      {credits &&
                        credits.map((credit) => (
                          <li key={credit.id}>
                            {credit.profile_path &&
                              credit.known_for_department === "Acting" && (
                                <>
                                  <p>{credit.name},&nbsp;&nbsp;</p>
                                </>
                              )}
                          </li>
                        ))}
                    </ul>
                  </Talent>
                </div>
              </div>
            </MovieContentInfo>
            <VideoImageInfo>
              <h1>트레일러({videos && videos.length})</h1>
              <Video>
                <VideoCarousel videos={videos && videos} />
              </Video>
              <Image>
                <h1>스틸컷({images && images.length})</h1>
                <ImageCarousel images={images && images} />
              </Image>
            </VideoImageInfo>
          </div>
        )}
        {showReviews && (
          <Reviews>
            {ownPost(userId) ? (
              <div className="comment">
                <Title>
                  <div className="starInfo">
                    <div className="starInfo1">
                      <Star>
                        <StarRating
                          onRate={handleRate}
                          star={star}
                          onChangestar={onChangestar}
                        />
                      </Star>
                    </div>
                    <div>영화 관람 후 관람평 작성 시 L.POINT 50P 적립</div>
                  </div>
                  <InputBox>
                    <div className="review-write-box">
                      <textarea
                        onChange={onChangecontent}
                        sdfsdfsdfdfsdfsdf
                        value={content}
                        maxLength={220}
                        placeholder="평점 및 영화 관람평을 작성해 주세요. (최소 10글자 이상)"
                      ></textarea>
                      <span>
                        <strong>{content.length}</strong>/<em>220</em>
                      </span>
                    </div>
                    <button onClick={onPublish}>관람평 작성</button>
                  </InputBox>
                </Title>
              </div>
            ) : (
              <div className="comment">
                <Title>
                  <div className="txt_Info">
                    영화 관람 후 관람평 작성 시 L.POINT 50P 적립
                  </div>
                  <Link to={"/login"}>
                    <button className="btn_col2">관람평 작성</button>
                  </Link>
                </Title>
              </div>
            )}
            <Comment>
              <div className="Comment1">
                <div className="CommentHeader">
                  <div className="sortright">
                    <ul className="sortList">
                      <li>최신순</li>
                      <li>공감순</li>
                    </ul>
                  </div>
                </div>
                <ReviewComent>
                  {commentlist &&
                    commentlist.map((comment) => (
                      <li key={comment.mc_num}>
                        <span className="img">
                          {comment.star >= 1 && comment.star < 3 && (
                            <img
                              src="/temp_reviewcharacter_05.jpg"
                              alt="별점 1,2점"
                            />
                          )}
                          {comment.star >= 3 && comment.star < 5 && (
                            <img
                              src="/temp_reviewcharacter_04.jpg"
                              alt="별점 3,4점"
                            />
                          )}
                          {comment.star >= 5 && comment.star < 7 && (
                            <img
                              src="/temp_reviewcharacter_03.jpg"
                              alt="별점 5,6점"
                            />
                          )}
                          {comment.star >= 7 && comment.star < 9 && (
                            <img
                              src="/temp_reviewcharacter_02.jpg"
                              alt="별점 7,8점"
                            />
                          )}
                          {comment.star >= 9 && (
                            <img
                              src="/temp_reviewcharacterbig_01.png"
                              alt="별점 9, 10점"
                            />
                          )}
                        </span>
                        <ReviewTopInfo>
                          <span>{comment.id}</span>
                          <span>{changeDate(comment.createdAt)}</span>
                          {renderLikeButton(comment.mc_num, comment.likes)}
                        </ReviewTopInfo>
                        <div>{comment.content}</div>
                        <div>
                          {ownPost(comment.id) && (
                            <CommentActionButtons
                              onRemove={onRemove}
                              onEdit={onEdit}
                              commentNum={comment.mc_num}
                              content={comment.content}
                              star={comment.star}
                              onChangestar={onChangestar}
                              onRate={handleRate}
                            />
                          )}
                        </div>
                      </li>
                    ))}
                </ReviewComent>
              </div>
            </Comment>
          </Reviews>
        )}
      </div>
      {isOpen && (
        <MovieVideoModal oncloseModal={oncloseModal} videos={videos} />
      )}
    </DetailContainer>
  );
};

export default MovieDetail;
