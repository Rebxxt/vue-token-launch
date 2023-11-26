<template>
  <div class="body">
    <div class="noise"></div>

    <header class="flex-center jcsb">
      <div class="logo flex-center no-select cursor-pointer">
        <img draggable="false" src="@/assets/images/rocket.png" alt=""><h5>TokenLaunch</h5>
      </div>

      <nav class="flex gap1em">
        <ol class="m0 p0 flex gap2em">
          <li class="text-light-grey flex-center gap8px no-select" v-for="navigation in headerNavigation" :key="navigation.title">
            <b>{{navigation.title}}</b>
            <img class="icon" src="@/assets/icons/chevron-down-small.svg" alt="arrow to down" draggable="false">
          </li>
        </ol>
      </nav>

      <nav class="flex gap1em">
        <div class="community flex aistretch gap1em">
          <div class="icon-box flex-center br50p" v-for="community in communityNavigation" :key="community.value">
            <img class="icon" draggable="false" :src="community.src" :alt="community.value">
          </div>
        </div>

        <div class="flex-center">
          <button class="button-fill">
            <img class="icon" draggable="false" src="@/assets/icons/launch.png" alt="launch icon">
            <h6>Launch App</h6>
          </button>
        </div>
      </nav>
    </header>

    <main class="flex-center">
      <div class="rocket relative">
        <div class="wrapper absolute">
          <img class="no-select" draggable="false" src="@/assets/images/main-rocket3.png">
        </div>
      </div>

      <div class="preview content-translate flex flex-column gap2em">
        <div>
          <h2 class="m0 text-nowrap">Expanding Horizons</h2>
          <h1 class="m0 text-nowrap">Token Launchpads</h1>
        </div>

        <p class="text-grey line-height">{{description}}</p>

        <div class="buttons gap2em flex">
          <button class="button-fill">
            <img class="icon" draggable="false" src="@/assets/icons/launch.png" alt="launch icon">
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
import {
  headerCommunityNavigation,
  headerNavigation,
  previewDescription
} from "@/components/variables/preview-information";

export default {
  name: "PreviewInformation",
  data() {
    return {
      headerNavigation: headerNavigation,
      communityNavigation: headerCommunityNavigation,
      description: previewDescription,
    }
  }
}
</script>

<style scoped lang="scss">

.rocket {
  flex: 2;

  .wrapper {
    width: 1000px;
    height: 1100px;
    background-image: url('@/assets/svg/bg-decoration-1.svg');
    background-repeat: no-repeat;
    background-size: 100%;
    background-position: 0 100%;
    top: 0;
    right: 0;
    translate: 0 -25%;

    img {
      float: right;
      translate: 0 -10%;
      opacity: 0.9;
      filter: stretch(1);
    }

    &::before {
      content: '';
      inset: -100px;
      position: absolute;
      translate: 10px -100px;

      filter: blur(100px);
      background: radial-gradient(ellipse 40% 45%, rgba(245, 143, 243, 0.8) 0%, rgba(241, 124, 239, 0.25) 50%, transparent);
    }
  }
}
.preview {
  flex: 3;

  &::before {
    content: '';
    inset: -100px;
    position: absolute;
    translate: 10px -100px;
    z-index: -1;
    filter: blur(100px);
  }
}


.body {
  background-image: url('@/assets/svg/bg-decoration-2.svg');
  background-clip: content-box;
  background-repeat: no-repeat;
  background-position: 90% 16vh;
  box-sizing: border-box;
  border-bottom: 5vh solid transparent;
  position: relative;

  &::before {
    content: '';
    inset: -5px;
    position: absolute;
    filter: blur(100px);
    background: radial-gradient(ellipse 55% 60% at 130% 50%, rgba(245, 143, 243, 0.27) 0%, rgba(241, 124, 239, 0.38) 65%, transparent),
                radial-gradient(ellipse 45% 45% at 60% 35%, rgba(73, 74, 192, 0.4) 0%, rgba(88, 89, 194, 0.5) 30%, transparent);
  }
}

.noise {
  position: absolute;
  top: 0;
  left: 0;
  width: 100vw;
  height: 100vh;
  background: url('@/assets/images/noise2.png');
  mask-image: linear-gradient(to top, transparent 0, black 35%);
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
    padding: 16px;

    .icon-box {
      cursor: pointer;
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

ol li {
  cursor: pointer;
}
</style>
