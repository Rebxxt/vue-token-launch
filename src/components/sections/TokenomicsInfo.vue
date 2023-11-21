<template>
  <div class="body">
    <h1 class="title">Tokenomics</h1>
    <h5 class="subtitle">Max Supply : 100,000,000</h5>

    <div class="content">
      <div class="content-side side-left">
        <div class="side-component side-left">
          <div class="side-component__info">
            <h6 class="side-component__title">Public Sale</h6>
            <h5 class="side-component__data">20%</h5>
          </div>
          <div class="circle circle-2"></div>
        </div>

        <div class="side-component side-left">
          <div class="side-component__info">
            <h6 class="side-component__title">Liquidity Management</h6>
            <h5 class="side-component__data">35%</h5>
          </div>
          <div class="circle circle-1"></div>
        </div>
      </div>

      <div class="graphic">
        <img draggable="false" class="ellipse ellipse-half" src="../../assets/svg/ellipse-half.svg">
        <img draggable="false" class="ellipse ellipse-1" @mouseenter="test($event, graphic['LIQUIDITY_MANAGEMENT'])" src="@/assets/svg/ellipse-small-part.svg">
        <img draggable="false" class="ellipse ellipse-2" @mouseenter="test($event, graphic['PUBLIC_SALE'])" src="@/assets/svg/ellipse-small-part.svg">
        <img draggable="false" class="ellipse ellipse-3" @mouseenter="test($event, graphic['PRIVATE_ROUND'])" src="@/assets/svg/ellipse-small-part.svg">
        <img draggable="false" class="ellipse ellipse-4" @mouseenter="test($event, graphic['SEED_ROUND'])" src="@/assets/svg/ellipse-small-part.svg">

        <img draggable="false" class="arrow-1 arrow-small" src="@/assets/svg/arrow-small.svg">
        <img draggable="false" class="arrow-2 arrow-big" src="@/assets/svg/arrow-big.svg">
        <img draggable="false" class="arrow-3 arrow-small" src="@/assets/svg/arrow-small.svg">
        <img draggable="false" class="arrow-4 arrow-big" src="@/assets/svg/arrow-big.svg">

        <div class="rocket-container">
          <img draggable="false" class="rocket" src="@/assets/images/rocket.png" alt="rocket">
        </div>
      </div>

      <div class="content-side side-right">
        <div class="side-component side-right">
          <div class="circle circle-4"></div>
          <div class="side-component__info">
            <h6 class="side-component__title">Seed Round</h6>
            <h5 class="side-component__data">25%</h5>
          </div>
        </div>

        <div class="side-component side-right">
          <div class="circle circle-3"></div>
          <div class="side-component__info">
            <h6 class="side-component__title">Private Round</h6>
            <h5 class="side-component__data">20%</h5>
          </div>
        </div>
      </div>
    </div>

    <div class="body-footer">
      <div class="input-block">
        <input type="text" v-model="token" maxlength="48">
        <img draggable="false" class="icon" src="@/assets/icons/clipboard.svg" alt="clipboard icon" @click="clipboard(token)">
      </div>
    </div>
  </div>
</template>

<script>

import {ref} from "vue";

export default {
  name: "TokenomicsInfo",
  data() {
    return {
      graphic: ref({
        LIQUIDITY_MANAGEMENT: 0,
        PUBLIC_SALE: 1,
        SEED_ROUND: 2,
        PRIVATE_ROUND: 3,
      }),
      token: ref('adsf')
    }
  },
  methods: {
    test: (event, graphicType) => {
      console.log(graphicType, 'drag', event)
    },
    clipboard: (value) => {
      navigator.clipboard.writeText(value);
      console.log('clipboard', value)
    }
  },
}
</script>

<style scoped lang="scss">

h5, h6 {
  margin: 16px;
}

.body {
  &-footer {
    z-index: 1;
    box-sizing: border-box;

    .input-block {
      width: calc(var(--graph-size) * 1px / 4 * 3);
    }
  }
}

.content {
  display: flex;
  padding: 4em 0 6em;

  &-side {
    flex: 1;
    display: flex;
    justify-content: end;
    flex-direction: column;
    gap: 2em;
  }
}

.side {
  &-left {
    text-align: right;
    justify-content: end;
  }

  &-right {
    text-align: left;
  }

  &-component {
    display: flex;
    align-items: center;

    &__title {
      font-weight: lighter;
    }

    &__info {
      flex-shrink: 0;
    }
  }
}

.circle {
  flex-shrink: 0;
  border-radius: 50%;
  width: 4em;
  height: 4em;

  &-1 {
    background-color: var(--color-dark-blue);
  }
  &-2 {
    background-color: var(--color-purple)
  }
  &-3 {
    background-color: var(--color-blue)
  }
  &-4 {
    background-color: var(--color-purple)
  }
}

.graphic {
  user-select: none;
  height: calc(var(--graph-size) * 1px / 2);
  width: calc(var(--graph-size) * 1px * 1.35);

  display: flex;
  justify-content: center;
  align-items: end;
  position: relative;

  .arrow-1 {
    transform: translate(-50%) rotate(2deg) translateX(-260px) rotate(-2deg) scale(1.5);
    filter: var(--color-filter-dark-blue);
  }
  .arrow-2 {
    transform: translate(-50%) rotate(32deg) translateX(-246px) rotate(-32deg) scale(1.5);
    filter: var(--color-filter-purple);
  }
  .arrow-3 {
    transform: scaleX(-1) translate(50%) rotate(2deg) translateX(-260px) rotate(-2deg) scale(1.5);
    filter: var(--color-filter-blue);
  }
  .arrow-4 {
    transform: scaleX(-1) translate(50%) rotate(32deg) translateX(-246px) rotate(-32deg) scale(1.5);
    filter: var(--color-filter-purple);
  }

  .ellipse-half {
    filter: var(--color-filter-dark-grey);
  }
  .ellipse-1 {
    transform: rotate(282deg) translateY(-187px);
    filter: var(--color-filter-dark-blue);

    &:hover {
      z-index: 100;
      transform: rotate(282deg) translateY(-185px) scale(1.2);
    }
  }
  .ellipse-2 {
    transform: rotate(307deg) translateY(-187px);
    filter: var(--color-filter-purple);

    &:hover {
      z-index: 100;
      transform: rotate(307deg) translateY(-185px) scale(1.2);
    }
  }
  .ellipse-3 {
    transform: rotate(78deg) translateY(-187px);
    filter: var(--color-filter-blue);

    &:hover {
      z-index: 100;
      transform: rotate(78deg) translateY(-185px) scale(1.2);
    }
  }
  .ellipse-4 {
    transform: rotate(53deg) translateY(-187px);
    filter: var(--color-filter-purple);

    &:hover {
      z-index: 100;
      transform: rotate(53deg) translateY(-185px) scale(1.2);
    }
  }

  .rocket {
    width: 120px;

    &-container {
      display: flex;
      justify-content: center;
      align-items: center;

      transform: translateY(45%);
      background-image: linear-gradient(to top, transparent, transparent, transparent, rgb(6, 6, 6), rgb(26, 26, 26)),
                        linear-gradient(to top, transparent, transparent, transparent, rgba(22,23,27,0.3), rgba(22,23,27,0.7), rgba(67,63,72,1));
      border: double 2px transparent;
      background-origin: border-box;
      background-clip: content-box, border-box;
      border-radius: 50%;
      width: 15em;
      height: 15em;
      z-index: 0;
    }
  }
}

.arrow-big, .arrow-small {
  transform-origin: right bottom;
  position: absolute;
}

.element {
  position: absolute;
  height: calc(var(--graph-size) * 1px / 2);
  width: calc(var(--graph-size) * 1px);
}

.ellipse {
  transform-origin: center bottom;
  position: absolute;
  transition: 0.2s;
}


</style>
