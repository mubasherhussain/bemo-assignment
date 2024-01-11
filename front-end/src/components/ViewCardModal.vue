<script>
export default {
  name: "ViewCardModal",
  data() {
    return {
      card: {},
      columnIndex: null,
    }
  },
  methods: {
    showModal(cardPayload, columnIndex) {
      this.card = cardPayload;
      this.columnIndex = columnIndex;
      this.$modal.show('card-modal')
    },
    hideModal() {
      this.card = {};
      this.columnIndex = null;
      this.$modal.hide('card-modal')
    }
  }
}
</script>

<template>
  <vue-modal name="card-modal" classes="view-card-modal">
    <div class="modal-header">
      <div>Edit card</div>
      <button @click="$modal.hide('card-modal')">X</button>
    </div>
    <div class="modal-body">
      <label for="title">Title</label>
      <input class="title-input" v-model="card.title" >
      <label for="description">Description</label>
      <input class="description-input" v-model="card.description" >
    </div>
    <div class="modal-actions">
      <button @click="$emit('deleteCard', card, columnIndex)">Delete</button>
      <button @click="$emit('updateCard', card, columnIndex)" :disabled="!(card.title && card.description)">Save</button>
    </div>
  </vue-modal>
</template>

<style lang="scss">
.view-card-modal{
  width: 500px !important;
  padding: 20px;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  .modal-header{
    display: flex;
    justify-content: space-between;
    align-items: center;
    div{
      font-size: 20px;
      font-weight: bold;
    }
    button{
      cursor: pointer;
      font-size: 18px;
    }
  }
  .modal-body{
    margin-top: 20px;
    display: flex;
    flex-direction: column;
    gap: 5px;
    .title-input{
      font-size: 16px;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 4px;
      outline: none;
      margin-bottom: 10px;
    }
    .description-input{
      font-size: 16px;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 4px;
      outline: none;
    }
  }
  .modal-actions{
    margin-top: 20px;
    display: flex;
    justify-content: flex-end;
    gap: 10px;
    button{
      &:disabled{
        opacity: 0.5;
        cursor: not-allowed;
      }
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