import { useParams, useSearchParams } from "react-router-dom";
import { useDispatch, useSelector } from "react-redux";
import { useEffect } from "react";
import { listPosts } from "../../lib/api/posts";
import PostList from "../../components/posts/PostList";

const PostListContainter = () => {
    const { username } = useParams();
    const { searchParams } = useSearchParams();
    const dispatch = useDispatch();
    const { posts, error, loading, user } = useSelector(
        ({ posts, loading, user }) => ({
            posts: posts.posts,
            error: posts.error,
            loading: loading['posts/LIST_POSTS'],
            user: user.user,
    }),
    );
    useEffect(() => {
        const tag = searchParams.get('tag');
        const page = parseInt(searchParams.get('page'), 10) || 1;
        dispatch(listPosts({ tag, username, page }));
    }, [dispatch, searchParams, username]);

    return (
        <PostList
            loading={loading}
            error={error}
            posts={posts}
            showWriteButton={user}
        />
    );
};

export default PostListContainter