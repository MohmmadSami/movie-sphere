const axios = require('axios');

const TMDB_BASE_URL = process.env.TMDB_BASE_URL || 'https://api.themoviedb.org/3';
const TMDB_API_KEY = process.env.TMDB_API_KEY;
const TMDB_IMAGE_BASE_URL = 'https://image.tmdb.org/t/p/w500';

const tmdbClient = axios.create({
  baseURL: TMDB_BASE_URL,
  params: {
    api_key: TMDB_API_KEY,
  },
});

const tmdbService = {
  // Get trending movies
  getTrendingMovies: async (timeWindow = 'week') => {
    try {
      const response = await tmdbClient.get(`/trending/movie/${timeWindow}`);
      return response.data;
    } catch (error) {
      console.error('Error fetching trending movies:', error.message);
      throw error;
    }
  },

  // Search movies
  searchMovies: async (query, page = 1) => {
    try {
      const response = await tmdbClient.get('/search/movie', {
        params: {
          query,
          page,
        },
      });
      return response.data;
    } catch (error) {
      console.error('Error searching movies:', error.message);
      throw error;
    }
  },

  // Get movie details with videos, credits, and recommendations
  getMovieDetails: async (movieId) => {
    try {
      console.log(`[TMDB SERVICE] Fetching movie details for ID: ${movieId}`);
      console.log(`[TMDB SERVICE] API Key available: ${!!TMDB_API_KEY}`);
      console.log(`[TMDB SERVICE] Base URL: ${TMDB_BASE_URL}`);

      const response = await tmdbClient.get(`/movie/${movieId}`, {
        params: {
          append_to_response: 'videos,credits,recommendations,similar',
        },
      });

      console.log(`[TMDB SERVICE] Successfully fetched movie: ${response.data.title}`);
      return response.data;
    } catch (error) {
      console.error(`[TMDB SERVICE] Error fetching movie ${movieId}:`, error.message);
      if (error.response) {
        console.error(`[TMDB SERVICE] Status: ${error.response.status}`);
        console.error(`[TMDB SERVICE] Data:`, error.response.data);
      }
      throw error;
    }
  },

  // Get popular movies
  getPopularMovies: async (page = 1) => {
    try {
      const response = await tmdbClient.get('/movie/popular', {
        params: {
          page,
        },
      });
      return response.data;
    } catch (error) {
      console.error('Error fetching popular movies:', error.message);
      throw error;
    }
  },

  // Get upcoming movies
  getUpcomingMovies: async (page = 1) => {
    try {
      const response = await tmdbClient.get('/movie/upcoming', {
        params: {
          page,
        },
      });
      return response.data;
    } catch (error) {
      console.error('Error fetching upcoming movies:', error.message);
      throw error;
    }
  },

  // Get movies by genre
  getMoviesByGenre: async (genreId, page = 1) => {
    try {
      const response = await tmdbClient.get('/discover/movie', {
        params: {
          with_genres: genreId,
          page,
        },
      });
      return response.data;
    } catch (error) {
      console.error('Error fetching movies by genre:', error.message);
      throw error;
    }
  },

  // Get actor details
  getActorDetails: async (actorId) => {
    try {
      const response = await tmdbClient.get(`/person/${actorId}`, {
        params: {
          append_to_response: 'movie_credits,tv_credits',
        },
      });
      return response.data;
    } catch (error) {
      console.error('Error fetching actor details:', error.message);
      throw error;
    }
  },

  // Get genres
  getGenres: async () => {
    try {
      const response = await tmdbClient.get('/genre/movie/list');
      return response.data;
    } catch (error) {
      console.error('Error fetching genres:', error.message);
      throw error;
    }
  },

  // Get image URL
  getImageUrl: (imagePath) => {
    if (!imagePath) return null;
    return `${TMDB_IMAGE_BASE_URL}${imagePath}`;
  },
};

module.exports = tmdbService;

