import client from "./client";

export const regions = async () => await client.get("/ticket/region");

export const selectedRegion = async (grade) => {
  return await client.get(`/ticket/cinema?grade=${grade}`);
};

export const movies = async () => await client.get("/ticket/movies");