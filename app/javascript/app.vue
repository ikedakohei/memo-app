<template>
  <div id="app">
    <ul>
      <li v-for="memo in memos" :key="memo.id">
        {{ memo.title }}: {{ memo.description }}
      </li>
    </ul>
    <div>
      <input v-model="title" placeholder="title">
      <input v-model="description" placeholder="description">
      <button @click="addMemo">メモを追加</button>
    </div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data: function () {
    return {
      memos: "memos",
      title: "",
      description: "",
    }
  },
  mounted () {
    this.setMemo();
  },
  methods: {
    setMemo: function () {
      axios.get('/api/v1/memos')
      .then(response => (
        this.memos = response.data
      ))
    },
    addMemo: function () {
      axios.post('/api/v1/memos', {
        title: this.title,
        description: this.description
      })
      .then(response => (
        this.setMemo()
      ))
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
