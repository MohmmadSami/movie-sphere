const mongoose = require('mongoose');

let cached = global.mongoose;

if (!cached) {
  cached = global.mongoose = { conn: null, promise: null };
}

const connectDB = async () => {
  if (cached.conn) return cached.conn;

  if (!process.env.MONGODB_URI) {
    throw new Error('MONGODB_URI is missing');
  }

  if (!cached.promise) {
    cached.promise = mongoose.connect(process.env.MONGODB_URI).then((mongoose) => {
      console.log('✅ MongoDB connected successfully');
      return mongoose;
    });
  }

  cached.conn = await cached.promise;
  return cached.conn;
};

module.exports = connectDB;
