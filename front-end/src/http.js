import axios from "axios";

const http = axios.create({
    baseURL: process.env.VUE_APP_API_BASE_URL,
    params: {
        access_token: process.env.VUE_APP_API_ACCESS_TOKEN,
    },
});

export default http;