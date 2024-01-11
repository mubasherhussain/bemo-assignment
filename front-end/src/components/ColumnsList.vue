<script>
import draggable from 'vuedraggable'
// import ColumnMain from "@/components/Column.vue";
import {batchUpdateColumns, getColumns} from "@/api/column";
import ColumnMain from "@/components/Column.vue";
import ViewCardModal from "@/components/ViewCardModal.vue";

export default {
  name: "ColumnsList",
  components: {ViewCardModal, ColumnMain, draggable},
  data() {
    return {
      newColumnName: "",
      editCardData: {},
      columnsList: [],
      columnDragOptions: {
        itemKey: "order",
        animation: 0,
        group: "columns",
        disabled: false,
        ghostClass: "ghost"
      },
      cardDragOptions: {
        itemKey: "order",
        animation: 0,
        group: "cards",
        disabled: false,
        ghostClass: "ghost"
      },
    }
  },
  methods: {
    fetchAndUpdateColumns() {
      getColumns().then(({data}) => {
        this.columnsList = data;
      }).catch((e) => {
        console.log(e)
      this.columnsList = []
      })
    },
    updateCardOrder(columnIndex) {
      this.columnsList[columnIndex].cards = this.columnsList[columnIndex].cards.map((item, index) => {
        item.order = index;
        return item;
      });
    },
    cardsChanged(e, columnIndex) {
      if(e.moved) {
        const element = e.moved.element
        const oldIndex = e.moved.oldIndex
        const newIndex = e.moved.newIndex
        this.columnsList[columnIndex].cards.splice(oldIndex, 1);
        this.columnsList[columnIndex].cards.splice(newIndex, 0, element);
        this.updateCardOrder(columnIndex)
        this.columnChanged()
      }
      if(e.added) {
        const element = e.added.element
        const newIndex = e.added.newIndex
        element.column_id = this.columnsList[columnIndex].id;
        this.columnsList[columnIndex].cards.splice(newIndex, 0, element);
        this.updateCardOrder(columnIndex)
      }
      if(e.removed) {
        const oldIndex = e.removed.oldIndex
        this.columnsList[columnIndex].cards.splice(oldIndex, 1);
        this.updateCardOrder(columnIndex)
        setTimeout(() => {
          this.columnChanged()
        }, 0)
      }
    },
    columnChanged() {
      const updatedList = this.columnsList.map((item, index) => {
        item.order = index;
        return item;
      });
      batchUpdateColumns({columns: updatedList}).then(({data}) => {
        this.columnsList = data;
      }).catch((e) => {
        console.log(e)
      })
    },
    addColumn() {
      if (this.newColumnName) {
        const newColumn = {
          title: this.newColumnName,
          order: this.columnsList.length,
        }
        this.columnsList.push(newColumn);
        this.newColumnName = "";
        this.columnChanged()
      }
    },
    deleteColumn(id) {
      this.columnsList = this.columnsList.filter((item) => item.id !== id);
      this.columnChanged()
    },
    // Cards actions
    addNewCard(payload, columnIndex) {
      this.columnsList[columnIndex].cards.push(payload);
      this.columnChanged()
    },
    updateCard(payload, columnIndex) {
      this.columnsList[columnIndex].cards = this.columnsList[columnIndex].cards.map((item) => {
        if (item.id === payload.id) {
          return payload;
        }
        return item;
      });
      this.$refs.viewCardModal.hideModal()
      this.columnChanged()
    },
    deleteCard(card, columnIndex) {
      this.columnsList[columnIndex].cards = this.columnsList[columnIndex].cards.filter((item) => item.id !== card.id);
      this.$refs.viewCardModal.hideModal()
      this.columnChanged()
    },
    showCardModal(card, columnIndex) {
      this.editCardData = {
        card,
        columnIndex
      }
      this.$refs.viewCardModal.showModal(card, columnIndex)
    }
  },
  mounted() {
    this.fetchAndUpdateColumns();
  }
}
</script>

<template>
  <div class="columns-list">
    <draggable v-if="columnsList.length" @change="columnChanged" v-bind="columnDragOptions" v-model="columnsList">
      <transition-group class="column-list-group">
        <column-main @addCard="addNewCard" :column-id="item.id" @delete="deleteColumn" @change="cardsChanged"
                     @showCardModal="showCardModal"
                     :columnIndex="index" :cards="item.cards" :drag-options="cardDragOptions"
                     v-for="(item, index) in columnsList" :key="index">
          {{ item.title }}
        </column-main>
      </transition-group>
    </draggable>
    <div class="add-column">
      <input v-on:keyup.enter="addColumn" v-model="newColumnName" type="text" placeholder="Add column"/>
      <button @click="addColumn">Add</button>
    </div>
    <view-card-modal @updateCard="updateCard" @deleteCard="deleteCard" ref="viewCardModal"/>
  </div>
</template>

<style scoped lang="scss">
.columns-list {
  padding: 10px;
  display: flex;
  gap: 8px;
  box-sizing: border-box;
  .column{
    height: 100%;
  }
  .column-list-group {
    display: flex;
    gap: 10px;
  }
  .add-column {
    display: flex;
    height: 100%;
    gap: 10px;

    input {
      font-weight: bold;
      font-size: 18px;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 4px;
      outline: none;
    }
    button {
      padding: 5px 20px;
      border: 1px solid #ccc;
      border-radius: 4px;
      outline: none;
      cursor: pointer;
      font-weight: bold;
      font-size: 15px;
    }
  }
}
</style>