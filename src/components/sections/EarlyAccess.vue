<template>
  <div class="body relative">
    <header>
      <h3 class="green-shadow text-center mt0 camel">get early access</h3>
      <h1 class="green-shadow text-center mt0 camel">to the new token ideas</h1>
      <p class="text-center mt2 camel fz6 text-grey">AptosLaunch brings top tier solutions to Aptos & out community everyday. Discover our products</p>
    </header>

    <main class="relative flex mt2">
      <div class="rocket">
        <img src="@/assets/svg/earlyaccess-rocket.svg" alt="">
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
          <div class="card-icon br50p"><img class="icon" :src="card.icon" alt=""></div>
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
export default {
  name: "EarlyAccess",
  methods: {
    getTransform(offset) {
      return `rotate(${offset.rotate}deg) translateX(${offset.x}px) rotate(-${offset.rotate}deg)`
    }
  },
  data() {
    return {
      cards: [
        {
          title: 'Aptos Launchpad',
          description: 'Access top tier token and NFT projects before they hit the market',
          icon: require('@/assets/icons/x.png'),
          offset: {rotate: 178, x: 420, dotSize: 'small'},
        },
        {
          title: 'Staking & Vesting',
          description: 'Attractive Staking rewards with flexible duration that rewards long',
          icon: require('@/assets/icons/telegram.png'),
          offset: {rotate: 140, x: 480, dotSize: 'big-left'},
        },
        {
          title: 'Spaceport',
          description: 'Industry leading incubation for early stage projects, providing tech',
          icon: require('@/assets/icons/telegram.png'),
          offset: {rotate: 90, x: 550},
        },
        {
          title: 'Vesting Swap',
          description: 'Innovative passive income mechanism that maximizes yield',
          icon: require('@/assets/icons/telegram.png'),
          offset: {rotate: 40, x: 480, dotSize: 'big-right'},
        },
        {
          title: 'Insurance coverage',
          description: 'Principal protected insurance coverage for IDO participants',
          icon: require('@/assets/icons/telegram.png'),
          offset: {rotate: 2, x: 420, dotSize: 'small'},
        },
      ]
    }
  },
}
</script>

<style scoped class="scss">

.body::after {
  content: '';
  position: absolute;
  width: 100%;
  height: 100%;
  background: linear-gradient(to right, rgba(0, 0, 0, 0.1) 1px, transparent 1px),
              linear-gradient(to bottom, rgba(0, 0, 0, 0.1) 1px, transparent 1px);
  mask-image: radial-gradient(ellipse 50% 45% at 50% 50%, rgba(73, 74, 192, 0.4) 0%, rgba(88, 89, 194, 0.2) 50%, transparent);
  filter: invert(1); /* Инверсия цветов */background-size: 20px 20px; /* Размер пикселей сетки */
}

.green-shadow {
  text-shadow: 0 0 8px #42b983;
}

.rocket {
  position: relative;

  img {
    transform-style: preserve-3d;
    height: 470px;
  }

  &::before {
    content: '';
    inset: -350px;
    position: absolute;
    filter: blur(100px);
    transform: translate3d(10px,8px,-1px);
    background: radial-gradient(ellipse 15% 20% at 30% 30%, rgba(245, 143, 243, 0.27) 0%, rgba(241, 124, 239, 0.28) 50%, transparent),
                radial-gradient(ellipse 30% 25% at 50% 35%, rgba(73, 74, 192, 0.4) 0%, rgba(88, 89, 194, 0.2) 80%, transparent);
  }
}

.cards {
  top: 0;
  width: 100%;

  .card {
    //box-sizing: border-box;
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

  img {
    width: 100%;
    height: 100%;
  }
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
  min-height: 640px;
}

p {
  line-height: 1.5;
}
</style>
