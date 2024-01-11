<script>
import draggable from 'vuedraggable'
// import Column from "@/components/Column.vue";

export default {
  name: "HomeCards",
  components: {draggable},
  data() {
    return {
      columnList: [
        {
          name: 'Mubasher',
          columnOrder: 1,
          fixed: false
        },
        {
          name: 'Mubasher 1',
          columnOrder: 2,
          fixed: false
        },
        {
          name: 'Mubasher 2',
          columnOrder: 3,
          fixed: false
        }
      ],
      cardDragOptions: {
        itemKey: "order",
        animation: 0,
        group: "cards",
        disabled: false,
        ghostClass: "ghost"
      },
      columnDragOptions: {
        itemKey: "columnOrder",
        animation: 0,
        group: "columns",
        disabled: false,
        ghostClass: "ghost"
      }
    }
  }
}
</script>

<template>
  <div class="home-column">
    <draggable v-bind="columnDragOptions" v-model="columnList">
      <transition-group class="home-column-group">
<!--        <Column v-for="(item, index) in columnList" :drag-options="cardDragOptions" :key="index" />-->
        <div v-for="(item, index) in columnList" :key="index">Mubasher {{index}}</div>
      </transition-group>
    </draggable>
  </div>
</template>

<style scoped lang="scss">
.home-column {
  padding: 10px;
  display: flex;
  gap: 8px;
  box-sizing: border-box;
  .home-column-group{
    //display: flex;
    //gap: 10px;
  }
}
</style>