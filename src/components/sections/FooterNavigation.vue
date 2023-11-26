<template>
  <div class="body relative mt5">
    <div class="content p2 gap2em flex jcsb">
      <div class="flex1"><p class="m0 fz6">
        {{infoText}}
      </p></div>
      <nav class="gap1em flex1 flex jcc flex-column" v-for="nav in navigation" :key="nav.title">
        <span>{{nav.title}}</span>
        <ol class="gap1em p0 flex flex-column">
          <li class="no-select" v-for="link in nav.content" :key="link.route">
            <a :href="link.route">{{link.title}}</a>
          </li>
        </ol>
      </nav>
    </div>

    <div class="content-footer flex">
      <div class="logo flex-center gap1em no-select cursor-pointer">
        <img src="@/assets/images/rocket.png" alt="" draggable="false">
        <h4 class="m0">TokenLaunch</h4>
      </div>
      <div class="side flex1 flex aie jcsb">
        <p class="fz8">(c) 2022 AptosLaunch. All rights reserved</p>
        <nav class="flex-center">
          <div class="icon-wrapper flex-center" v-for="icon in iconNavigation" :key="icon.value" @click="link(icon.value)">
            <img class="no-select" draggable="false" :src="icon.src" :alt="icon.value">
          </div>
        </nav>
      </div>
    </div>

  </div>
</template>

<script>
import {footerCommunityNavigation, footerInfoText, footerNavigation} from "@/components/variables/footer-navigation";

export default {
  name: "FooterNavigation",
  methods: {
    link: (value) => {
      console.log('click on', value)
    }
  },
  data() {
    return {
      infoText: footerInfoText,
      navigation: footerNavigation,
      iconNavigation: footerCommunityNavigation
    }
  }
}
</script>

<style scoped lang="scss">
.body {
  width: 80vw !important;
  align-items: stretch !important;
  margin: auto;
  padding-bottom: 3em;

  &::before {
    content: '';
    inset: -300px;
    position: absolute;
    filter: blur(100px);
    background-image:
        radial-gradient(ellipse 35% 35% at 25% 40%, rgba(245, 143, 243, 0.27) 0%, rgba(241, 124, 239, 0.38) 16%, transparent),
        radial-gradient(ellipse 35% 35% at 75% 25%, rgba(1, 163, 255, 0.38) 0%, rgba(1, 163, 255, 0.29) 25%, transparent);
    z-index: -1;
  }
}
.logo {
  min-width: 15vw;
  box-sizing: content-box;
  padding: 0 2em 1em;
  border: 1px solid var(--color-light-brown);
  border-top: none;
  background: var(--bg-ligth-brown);
  border-radius: 0 0 16px 16px;

  img {
    height:  3em;
  }
}
.content {
  border: 1px solid var(--color-light-brown);
  border-bottom: none;
  background: var(--bg-ligth-brown);
  border-radius: 16px 16px 16px 0;

  nav {
    &:last-child {
      flex: none;
    }
    ol li {
      list-style: none;
    }
    a {
      color: #8f8f8f;
      text-decoration: none;
      &:active {
        color: #8f8f8f;
      }
    }
  }

  &-footer {
    .side {
      border-top: 1px solid var(--color-light-brown);
      margin-right: 16px;

      p {
        margin: 8px;
      }

      nav {
        gap: 0.5em;
        .icon-wrapper {
          cursor: pointer;
          padding: 0.5em;
          -webkit-border-radius: 8px;
          -moz-border-radius: 8px;
          border-radius: 8px;
          border: 1px solid var(--color-light-brown);
          background: var(--bg-ligth-brown);
          height: 1.2em;
          width: 1.2em;
        }

        img {
          max-width: 1.2em;
          max-height: 1.2em;
          width: auto;
          height: auto;
        }
      }
    }
  }
}
</style>
