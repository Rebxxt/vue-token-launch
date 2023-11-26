<template>
  <div class="body">
    <header class="mb5">
      <h3 class="text-center mt0">Stay Ahead. Launch Your</h3>
      <h1 class="text-center mt0">Project With Tokenlaunch</h1>
    </header>

    <main class="flex-center jcsb max80 gap5em">
      <div class="left-side ph3 pb2 flex1 relative">
        <h5 class="absolute left-side__title">About Us</h5>
        <p class="pv1 fz6 left-side__description">AptosLaunch is the first decentrolized launchpad on the Aptos Network. With Aptos building the safest and most scalable Layer 1 blockchain for the next billion users. AptosLaunch is engineered from the ground up to empower Aptos project owners</p>
        <div class="buttons gap2em flex aic mt1">
          <button class="button-fill ph2 fz7">
            <img class="icon" draggable="false" src="@/assets/icons/launch.png" alt="launch icon">
            <h6 class="fz7">Launch App</h6>
          </button>

          <button class="button-outline ph2 fz7">
            <h6 class="fz7">Join Discord</h6>
          </button>

          <div class="wrap">
            <img class="no-select" draggable="false" src="@/assets/svg/aboutus-rectangles.svg" alt="">
          </div>
        </div>
      </div>
      
      <div class="right-side relative flex-center flex1">
        <img class="w100 no-select" draggable="false" src="@/assets/svg/aboutus_planet.svg" alt="">
      </div>
    </main>
  </div>
</template>

<script>
export default {
  name: "AboutUs"
}
</script>

<style scoped lang="scss">

.left-side {
  max-width: 650px;
  border: 2px dashed var(--color-dark-grey);

  &__title {
    transform: translateY(-115%);
  }
  &__description {
    color: var(--color-grey);
  }

}

.right-side {
  &::before {
    content: '';
    inset: -300px;
    position: absolute;
    filter: blur(100px);
    transform: translate3d(10px,8px,-1px);
    background: radial-gradient(ellipse 50% 50% at 50% 50%, rgba(73, 74, 192, 0.4) 0%, rgba(88, 89, 194, 0.4) 25%, transparent);
    z-index: -1;
  }

  img {
    transform-style: preserve-3d;
    min-width: 250px;
  }
}

.wrap {
  height: 1em;
  width:80%;
  min-width: 150px;
  margin-left: auto;

  img {
    right: 0;
    max-height: 150px;
    width: 90%;
    transform: translateY(-53%);
  }
}

</style>
