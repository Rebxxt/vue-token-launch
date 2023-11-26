<template>
  <div class="body relative">
    <header>
      <h3 class="green-shadow text-center mt0 camel">get early access</h3>
      <h1 class="green-shadow text-center mt0 camel">to the new token ideas</h1>
      <p class="text-center mt2 camel fz6 text-grey">AptosLaunch brings top tier solutions to Aptos & out community everyday. Discover our products</p>
    </header>

    <main class="relative flex mt2">
      <div class="rocket">
        <img class="no-select" draggable="false" src="@/assets/svg/earlyaccess-rocket.svg" alt="">
      </div>
      <div class="cards absolute flex-center ais">
        <div
            class="card absolute pl2 pt2 pb1"
            :class="`card-${index + 1}`"
            v-for="(card, index) in cards"
            :key="card.title"
            :style="{
              transform: getTransform(card.offset)
            }"
        >
          <div class="card-icon br50p"><img class="icon w100 h100" :src="card.icon" alt="" draggable="false"></div>
          <h6>{{ card.title }}</h6>
          <p class="text-grey fz7">{{ card.description }}</p>
          <div
              class="absolute mt1 br50p"
              :class="{
                dot: card.offset.dotSize,
                'dot-small': card.offset.dotSize === 'small',
                'dot-big-left': card.offset.dotSize === 'big-left',
                'dot-big-right': card.offset.dotSize === 'big-right',
              }"
          ></div>
        </div>
      </div>
    </main>
  </div>
</template>

<script>
import {cards} from "@/components/variables/early-access";

export default {
  name: "EarlyAccess",
  methods: {
    getTransform(offset) {
      return `rotate(${offset.rotate}deg) translateX(${offset.x}px) rotate(-${offset.rotate}deg)`
    }
  },
  data() {
    return {
      cards: cards
    }
  },
}
</script>

<style scoped class="scss">

.body::before {
  content: '';
  position: absolute;
  width: 100%;
  height: 100%;
  translate: 0 15%;
  z-index: -1;

  opacity: 0.7;
  background: radial-gradient(75% 75% at 98% 15%, #52C14EFF 0%, #073AFF00 80%),
              radial-gradient(75% 75% at 14% 24%, #FF0000FF 0%, #073AFF00 70%),
              radial-gradient(75% 75% at 35% 63%, #19FF47FF 0%, #073AFF00 30%),
              radial-gradient(75% 75% at 82% 85%, #FF0000FF 0%, #FF070700 80%);
  mask-image: radial-gradient(ellipse 55% 45% at 50% 50%, rgba(73, 74, 192, 0.4) 0%, rgba(88, 89, 194, 0.5) 50%, transparent),
              repeating-linear-gradient(to right, transparent, transparent 4px, white 4px, white 6px),
              repeating-linear-gradient(transparent, transparent 3px, white 3px, white 5px);
  mask-composite: intersect;
}

.green-shadow {
  text-shadow: 0 0 8px #42b983;
}

.rocket {
  img {
    height: 470px;
  }

  &::before {
    content: '';
    inset: -400px;
    position: absolute;
    z-index: -1;
    background: radial-gradient(ellipse 30% 25% at 54% 40%, rgba(44,45,99,1) 12%, rgba(152,0,218,0) 100%);
  }
}

.cards {
  top: 0;
  width: 100%;

  .card {
    padding-right: 6px;
    background: var(--bg-ligth-brown);
    border: 1px solid var(--color-light-brown);
    border-radius: 16px;
    width: 270px;
    transform-origin: top right;
  }
}

.card-icon {
  width: 2em;
  height: 2em;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  background: var(--bg-ligth-brown);
  border: 2px solid var(--color-light-brown);
  padding: 6px;
}

.dot {
  transform: translate(50%, -50%);
  right: 50%;

  &::after {
    content: '';
    position: absolute;
    border-radius: 50%;
    border: 6px solid #f1f1f1;
    transform: translate(-50%, -50%);
  }
}
.dot-small::before {
  content: '';
  position: absolute;
  border-left: 2px dashed var(--color-grey);
  height: 100px;
  transform: translateX(-50%);
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;

  mask-image: linear-gradient(to top, transparent 15%, white 90%);
}
.dot-big-left::before,
.dot-big-right::before {
  content: '';
  position: absolute;
  border-bottom: 2px dashed var(--color-grey);
  width: 220px;
  height: 150px;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
.dot-big-left::before {
  border-left: 2px dashed var(--color-grey);
  mask-image: linear-gradient(to left, transparent 10%, white 140%);
}
.dot-big-right::before {
  border-right: 2px dashed var(--color-grey);
  mask-image: linear-gradient(to right, transparent 10%, white 140%);
  transform: translateX(-100%);
}

main {
  min-height: 780px;
}

p {
  line-height: 1.5;
}
</style>
