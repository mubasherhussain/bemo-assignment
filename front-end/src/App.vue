<template>
  <div id="app">
    <ColumnsList />
    <DumpDatabaseButton />
  </div>
</template>

<script>
import ColumnsList from "@/components/ColumnsList.vue";
import DumpDatabaseButton from "@/components/DumpDatabaseButton.vue";

export default {
  name: 'App',
  components: {
    DumpDatabaseButton,
    ColumnsList,
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
}
body{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
</style>
