<template>
  <div>
    <h1>This is an about page</h1>
    <button type="button" class="btn btn-primary">Primary</button>
    <button type="button" class="btn btn-secondary">Secondary</button>
    <button type="button" class="btn btn-success">Success</button>
    <button type="button" class="btn btn-danger">Danger</button>
    <button type="button" class="btn btn-warning">Warning</button>
    <button type="button" class="btn btn-info">Info</button>
    <button type="button" class="btn btn-light">Light</button>
    <button type="button" class="btn btn-dark">Dark</button>
  </div>
</template>

<script>
export default {
  data() {
    return {
      data: {}
    }
  },

  mounted() {
    console.log(123)
    console.log(import.meta.env.VITE_PATH)
    console.log(import.meta.env.VITE_TEXT)
    console.log(import.meta.env.VITE_PRODUCTION)
    const url = import.meta.env.VITE_PATH
    this.$http.get(url).then((res) => {
      this.data = res.data.results
    })
  }
}
</script>

<style>
@media (min-width: 1024px) {
  .about {
    min-height: 100vh;
    display: flex;
    align-items: center;
  }
}
</style>
