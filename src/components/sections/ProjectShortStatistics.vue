<template>
  <div class="body flex-center flex-row gap3em">
    <div class="item flex-center flex-column">
      <div class="item-title ph2">
        <h4 class="uppercase font-normal text-center">total active users</h4>
      </div>
      <div class="item-value">
        <h4 class="uppercase">100,000+</h4>
      </div>
    </div>

    <div class="item flex-center flex-column">
      <div class="item-title ph2">
        <h4 class="font-normal text-center">VCs & FUNDS</h4>
      </div>
      <div class="item-value">
        <h4 class="uppercase">50+</h4>
      </div>
    </div>

    <div class="item flex-center flex-column">
      <div class="item-title ph2">
        <h4 class="uppercase font-normal text-center">crew3 project</h4>
      </div>
      <div class="item-value">
        <h4>Top 3</h4>
      </div>
    </div>

    <div class="item flex-center flex-column">
      <div class="item-title ph2">
        <h4 class="uppercase font-normal text-center">token holders</h4>
      </div>
      <div class="item-value">
        <h4 class="uppercase">30,000+</h4>
      </div>
    </div>
  </div>
</template>

<script setup>

</script>

<style scoped lang="scss">
.body {
}

.item {
  z-index: 4;

  &-title {
    background: var(--bg-black);
    color: var(--color-light-grey);
    border-radius: 8px;
    background: rgba(45, 43, 52, 0.86);
  }

  &-value {
    background: linear-gradient(120deg, #2c64b9, #85119f) !important;
    background-size: 100%;
    background-clip: text !important;
    -webkit-text-fill-color: transparent;
  }
}
</style>
