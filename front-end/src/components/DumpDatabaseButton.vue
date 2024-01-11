<script>
// import {donwload} from "@/api/database";

export default {
  name: "DumpDatabaseButton",
  methods: {
    downloadDatabase() {
      window.open(`${process.env.VUE_APP_API_BASE_URL}/database?access_token=${process.env.VUE_APP_API_ACCESS_TOKEN}`, '_blank')
    }
  }
}
</script>

<template>
  <div class="dump-database-button">
    <button @click="downloadDatabase">Download Database</button>
  </div>
</template>

<style scoped lang="scss">
.dump-database-button{
  position: absolute;
  right: 15px;
  bottom: 15px;
  button{
    padding: 10px 15px;
    border-radius: 5px;
    border: 1px solid #ccc;
    background: #fff;
    cursor: pointer;
    &:hover{
      background: #eee;
    }
  }
}
</style>