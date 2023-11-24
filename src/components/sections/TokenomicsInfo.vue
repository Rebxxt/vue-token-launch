<template>
  <div class="body mv5">
    <h1>Tokenomics</h1>
    <h5 class="text-grey">Max Supply : 100,000,000</h5>

    <div class="pt4 pb5 mb1 flex">
      <div class="gap2em flex1 flex jce flex-column">
        <div class="flex aic jce text-right">
          <div class="shrink0 mr2">
            <h6 class="font-normal">Public Sale</h6>
            <h5>20%</h5>
          </div>
          <div class="circle br50p circle-2"></div>
        </div>

        <div class="flex aic jce text-right">
          <div class="shrink0 mr2">
            <h6 class="font-normal">Liquidity Management</h6>
            <h5>35%</h5>
          </div>
          <div class="circle br50p circle-1"></div>
        </div>
      </div>

      <div class="graphic flex-center aie">
        <img draggable="false" class="ellipse absolute ellipse-half" src="../../assets/svg/ellipse-half.svg">
        <img draggable="false" class="ellipse absolute transition-1 ellipse-1" @mouseenter="graphicClick($event, graphic['LIQUIDITY_MANAGEMENT'])" src="@/assets/svg/ellipse-small-part.svg">
        <img draggable="false" class="ellipse absolute transition-1 ellipse-2" @mouseenter="graphicClick($event, graphic['PUBLIC_SALE'])" src="@/assets/svg/ellipse-small-part.svg">
        <img draggable="false" class="ellipse absolute transition-1 ellipse-3" @mouseenter="graphicClick($event, graphic['PRIVATE_ROUND'])" src="@/assets/svg/ellipse-small-part.svg">
        <img draggable="false" class="ellipse absolute transition-1 ellipse-4" @mouseenter="graphicClick($event, graphic['SEED_ROUND'])" src="@/assets/svg/ellipse-small-part.svg">

        <img draggable="false" class="arrow-1 absolute arrow-small" src="@/assets/svg/arrow-small.svg">
        <img draggable="false" class="arrow-2 absolute arrow-big" src="@/assets/svg/arrow-big.svg">
        <img draggable="false" class="arrow-3 absolute arrow-small" src="@/assets/svg/arrow-small.svg">
        <img draggable="false" class="arrow-4 absolute arrow-big" src="@/assets/svg/arrow-big.svg">

        <div class="rocket-container flex-center br50p">
          <img draggable="false" class="rocket" src="@/assets/images/rocket.png" alt="rocket">
        </div>
      </div>

      <div class="gap2em flex1 flex jce flex-column">
        <div class="flex aic text-left">
          <div class="circle br50p circle-4"></div>
          <div class="shrink0 ml2">
            <h6 class="font-normal">Seed Round</h6>
            <h5>25%</h5>
          </div>
        </div>

        <div class="flex aic text-left">
          <div class="circle br50p circle-3"></div>
          <div class="shrink0 ml2">
            <h6 class="font-normal">Private Round</h6>
            <h5>20%</h5>
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
    graphicClick: (event, graphicType) => {
      console.log(graphicType, 'drag', event)
    },
    clipboard: (value) => {
      navigator.clipboard.writeText(value);
      // TODO notification about clipboard
      console.log('clipboard', value)
    }
  },
}
</script>

<style scoped lang="scss">
.body {
  &-footer {
    z-index: 1;

    .input-block {
      width: calc(var(--graph-size) * 1px / 4 * 3);
    }
  }
}

.circle {
  flex-shrink: 0;
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

  @mixin ellipseStyles($rotate, $filter) {
    --graphic-radius: -187px;
    --graphic-hover-scale: 1.2;
    transform: rotate(calc($rotate * 1deg)) translateY(var(--graphic-radius));
    filter: $filter;

    &:hover {
      z-index: 10;
      transform: rotate(calc($rotate * 1deg)) translateY(calc(var(--graphic-radius) + 2px)) scale(var(--graphic-hover-scale));
    }
  }

  .ellipse-1 {
    @include ellipseStyles(282, var(--color-filter-dark-blue));
  }
  .ellipse-2 {
    @include ellipseStyles(307, var(--color-filter-purple));
  }
  .ellipse-3 {
    @include ellipseStyles(78, var(--color-filter-blue));
  }
  .ellipse-4 {
    @include ellipseStyles(53, var(--color-filter-purple));
  }

  .rocket {
    width: 120px;

    &-container {
      transform: translateY(45%);
      background-image: linear-gradient(to top, transparent, transparent, transparent, rgb(6, 6, 6), rgb(26, 26, 26)),
                        linear-gradient(to top, transparent, transparent, transparent, rgba(22,23,27,0.3), rgba(22,23,27,0.7), rgba(67,63,72,1));
      border: double 2px transparent;
      background-origin: border-box;
      background-clip: content-box, border-box;
      width: 15em;
      height: 15em;
      z-index: 0;
    }
  }
}

.arrow-big, .arrow-small {
  transform-origin: right bottom;
}

.ellipse {
  transform-origin: center bottom;
}


</style>
