import http from "@/http";

export const getColumns = () => http.get("/column");

export const batchUpdateColumns = (payload) => http.put("/column", payload);

export const deleteColumn = (id) => http.delete(`/column/${id}`);