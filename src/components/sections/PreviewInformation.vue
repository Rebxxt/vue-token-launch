<template>
  <div class="body">
    <header class="flex-center jcsb">
      <div class="logo flex-center"><img src="@/assets/images/rocket.png" alt=""><h5>TokenLaunch</h5></div>

      <nav class="flex gap1em">
        <ol class="m0 p0 flex gap2em">
          <li class="text-light-grey flex-center gap8px" v-for="navigation in headerNavigation" :key="navigation.title">
            <b>{{navigation.title}}</b>
            <img class="icon" src="@/assets/icons/chevron-down-small.svg" alt="arrow to down">
          </li>
        </ol>
      </nav>

      <nav class="flex gap1em">
        <div class="community flex gap1em">
          <div class="icon-box flex-center br50p" v-for="community in communityNavigation" :key="community.value">
            <img class="icon" :src="community.src" :alt="community.value">
          </div>
        </div>

        <div class="flex-center">
          <button class="button-fill">
            <img class="icon" src="@/assets/icons/launch.png" alt="launch icon">
            <h6>Launch App</h6>
          </button>
        </div>
      </nav>
    </header>

    <main class="flex-center">
      <img src="@/assets/images/main-rocket3.png">

      <div class="content-translate flex flex-column gap2em">
        <div>
          <h2 class="m0 text-nowrap">Expanding Horizons</h2>
          <h1 class="m0 text-nowrap">Token Launchpads</h1>
        </div>

        <p class="text-grey line-height">{{description}}</p>

        <div class="buttons gap2em flex">
          <button class="button-fill">
            <img class="icon" src="@/assets/icons/launch.png" alt="launch icon">
            <h6>Launch App</h6>
          </button>

          <button class="button-outline">
            <h6>Stake ALT</h6>
          </button>
        </div>
      </div>


    </main>
  </div>
</template>

<script>
export default {
  name: "PreviewInformation",
  data() {
    return {
      headerNavigation: [
        {
          title: 'Product',
          children: [],
        },
        {
          title: 'Our Secret',
          children: [],
        },
        {
          title: 'DAO',
          children: [],
        },
      ],
      communityNavigation: [
        {
          src: require('@/assets/icons/x.png'),
          value: 'x'
        },
        {
          src: require('@/assets/icons/discord.png'),
          value: 'discord'
        },
        {
          src: require('@/assets/icons/telegram.png'),
          value: 'telegram'
        },
        {
          src: require('@/assets/icons/medium.png'),
          value: 'medium'
        },
      ],
      description: 'Empower your cryptocurrency project with community-driven liquidity through Aptos Web 3.0 Launchpad. Built on the safest and scalable Layer 1 blockchain, we provide a robust platform for launching and growing your digital venture.'
    }
  }
}
</script>

<style scoped lang="scss">

.body {
  background-image: url('@/assets/svg/bg-decoration-1.svg'), linear-gradient(rgb(1,1,1), rgb(100,100,100));
  background-clip: content-box;
  background-repeat: no-repeat;
  background-size: 70% 70%, 20%;
  background-position: -50% 80%, 30%;
}

.content-translate {
  translate: 0 25%;
}

header {
  position: absolute;
  top: 0;
  width: 90%;
  height: 10vh;

  .logo {
    font-size: var(--fz-5);
    img {
      max-height: 1.5em;
    }
    h5 {
      margin: 12px;
    }
  }

  .community {
    align-items: stretch;
    padding: 16px;

    .icon-box {
      font-size: var(--fz-7);
      padding: 8px;
      box-shadow: 0px -1px 0px 1px var(--color-shadow-light-grey);
      box-sizing: content-box;
      background-color: var(--bg-ligth-brown);
    }
  }
}

main {
  max-width: 80vw;

  .content .buttons {
    margin: 1em 0;
  }
}
</style>
