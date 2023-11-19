<template>
  <div class="body">
    <h3>Hello Myself</h3>
    <button @click="ccb++">count {{ccb}}</button>
    <button @click="count++">count2 {{count}}</button>
  </div>
</template>

<script>
import {ref} from "vue";

export default {
  name: "MyselfTester",
  data() {
    return {
      count: ref(0)
    }
  }
}
</script>

<script setup>
  let ccb = ref(0);
</script>

<style scoped>

</style>
