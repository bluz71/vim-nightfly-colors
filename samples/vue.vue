<template>
  <title>Vue Example</title>
  <h1>Heading 1</h1>
  <h2>Heading 2</h2>
  <h3>Heading 3</h3>
  <h4>Heading 4</h4>
  <h5>Heading 5</h5>
  <h6>Heading 6</h6>
  <div>
    <button @click="getNewIntent" :class="{ disabled: uiState === 'listening' }"></button>
  </div>
</template>

<script>
export default {
  props: {
    aborted: {
      type: Boolean,
      default: false,
      required: true
    }
  },
  computed: {
    uiState() {
      return this.$store.state.uiState
    }
  },
  methods: {
    getNewIntent() {
      this.$store.dispatch('getSpeech')
      this.$emit('isaborted', false)
    }
  }
}
</script>

<style scoped>
button {
  border-radius: 1000px;
  background: teal;
  margin-top: 10px;
  transition: 0.3s all ease-out;
}

button.disabled {
  background: #ccc;
  cursor: none;
}
</style>
