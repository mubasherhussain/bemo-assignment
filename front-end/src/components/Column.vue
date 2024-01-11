<script>
import draggable from 'vuedraggable'
export default {
  name: "ColumnMain",
  components: {
    draggable,
  },
  props: {
    dragOptions: {
      type: Object,
      required: true,
    },
    cards: {
      type: Array,
      required: true
    },
    columnId: {
      type: Number,
      required: false
    },
    columnIndex: {
      type: Number,
      required: true
    }
  },
  data() {
    return {
      newCardName: "",
    }
  },
  methods: {
    changeTrigger(e) {
      this.$emit('change', e, this.columnIndex)
    },
    addNewCard() {
      if(this.newCardName) {
        const newCard = {
          title: this.newCardName,
          order: this.cards.length,
          columnId: this.columnId
        }
        this.$emit('addCard', newCard, this.columnIndex)
        this.newCardName = "";
      }
    }
  }
}
</script>

<template>
  <div class="column">
    <div class="column-header">
      <div class="column-title">
        <slot />
      </div>
      <div @click="$emit('delete', columnId)" class="delete-btn">X</div>
    </div>
    <draggable class="card" v-bind="dragOptions" @change="changeTrigger" :value="cards">
      <transition-group type="transition" name="flip-list">
        <div @click="$emit('showCardModal', card, columnIndex)" class="card-header" v-for="card in cards" :key="card.id + '-' + columnId">
          {{card.title}}
        </div>
      </transition-group>
    </draggable>
    <div class="add-card">
      <input v-on:keyup.enter="addNewCard" v-model="newCardName" type="text" placeholder="Add card" />
      <button @click="addNewCard">Add</button>
    </div>
  </div>
</template>

<style scoped lang="scss">
.column {
  min-width: 300px;
  max-width: 300px !important;
  border: 1px solid #ccc;
  border-radius: 4px;
  padding: 10px;
  .column-header{
    padding-bottom: 10px;
    border-bottom: 2px solid #ccc;
    display: flex;
    justify-content: space-between;
    .column-title{
      text-wrap: nowrap;
      overflow: hidden;
      width: 100%;
      font-size: 18px;
      font-weight: bold;
    }
    .delete-btn{
      cursor: pointer;
      font-size: 18px;
      font-weight: bold;
      color: red;
    }
  }
  .card{
    cursor: pointer;
    margin-top: 10px;
    border-radius: 4px;
    //max-height: 85vh !important;
    //overflow-y: scroll;
    .card-header{
      font-weight: 500;
      font-size: 16px;
      margin-bottom: 10px;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 4px;
      background-color: #fff;
    }
  }
  .add-card{
    display: flex;
    gap: 10px;
    margin-top: 10px;
    input{
      font-size: 16px;
      padding: 5px 10px;
      border: 1px solid #ccc;
      border-radius: 4px;
      outline: none;
      width: 100%;
    }
    button{
      padding: 5px 20px;
      border: 1px solid #ccc;
      border-radius: 4px;
      outline: none;
      cursor: pointer;
      font-weight: bold;
    }
  }
}
</style>