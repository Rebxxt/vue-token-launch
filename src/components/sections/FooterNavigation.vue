<template>
  <div class="body">
    <div class="content">
      <div class="info"><p>
        {{infoText}}
      </p></div>
      <nav v-for="nav in navigation" :key="nav.title">
        <span>{{nav.title}}</span>
        <ol>
          <li v-for="link in nav.content" :key="link.route"><a :href="link.route">{{link.title}}</a></li>
        </ol>
      </nav>
    </div>

    <div class="content-footer">
      <div class="logo"><img src="@/assets/images/rocket.png" alt=""><h4>TokenLaunch</h4></div>
      <div class="side">
        <p>(c) 2022 AptosLaunch. All rights reserved</p>
        <nav>
          <div class="icon-wrapper" v-for="icon in iconNavigation" :key="icon.value" @click="link(icon.value)">
            <img :src="icon.src" :alt="icon.value">
          </div>
        </nav>
      </div>
    </div>

  </div>
</template>

<script>
export default {
  name: "FooterNavigation",
  methods: {
    link: (value) => {
      console.log('click on', value)
    }
  },
  data() {
    return {
      infoText: 'You should not treat any of the website\'s content as such. You alone assume the sole responsibility of evaluating the merits and risks associated with using any information or other content on this website before making.',
      navigation: [
        {
          title: 'Product',
          content: [
            {
              title: 'Aptos Launchpad',
              route: '',
            },
            {
              title: 'Staking',
              route: '',
            },
            {
              title: 'Roulette',
              route: '',
            },
            {
              title: 'Spaceport',
              route: '',
            },
          ]
        },
        {
          title: 'Our Secret',
          content: [
            {
              title: 'Passive Income',
              route: '',
            },
            {
              title: 'Documentation',
              route: '',
            },
            {
              title: 'About Us',
              route: '',
            },
            {
              title: 'CoinMarketCap',
              route: '',
            },
          ]
        },
        {
          title: 'DAO',
          content: [
            {
              title: 'Crew3',
              route: '',
            },
            {
              title: 'Buy on Kucoin',
              route: '',
            },
            {
              title: 'Tokenomics',
              route: '',
            },
          ]
        },
        {
          title: 'Social Media',
          content: [
            {
              title: 'Discord',
              route: '',
            },
            {
              title: 'Twitter',
              route: '',
            },
            {
              title: 'Linktree',
              route: '',
            },
          ]
        },
      ],
      iconNavigation: [
        {
          src: require('@/assets/icons/discord.png'),
          value: 'discord',
        },
        {
          src: require('@/assets/icons/x.png'),
          value: 'x',
        },
        {
          src: require('@/assets/icons/higicc.png'),
          value: 'higicc',
        },
      ]
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
}
.logo {
  display: flex;
  justify-content: center;
  align-items: center;
  min-width: 15vw;
  box-sizing: content-box;
  gap: 1em;
  padding: 0 2em 1em;
  border: 1px solid var(--color-light-brown);
  border-top: none;
  background: var(--bg-ligth-brown);
  border-radius: 0 0 16px 16px;
  position: relative;

  img {
    height:  3em;
  }
  h4 {
    margin: 0;
  }
}
.content {
  display: flex;
  justify-content: space-between;
  flex-direction: row !important;
  align-items: stretch !important;
  gap: 2em;
  padding: 2em;
  border: 1px solid var(--color-light-brown);
  border-bottom: none;
  background: var(--bg-ligth-brown);
  border-radius: 16px 16px 16px 0;

  nav {
    flex: 1;
    display: flex;
    justify-content: center;
    &:last-child {
      flex: none;
    }
  }
  .info {
    flex: 1;
    p {
      font-size: var(--fz-6);
      margin: 0;
    }
  }

  nav {
    display: flex;
    flex-direction: column;
    gap: 1em;
    ol li {
      list-style: none;
    }
    ol {
      padding: 0;
      display: flex;
      flex-direction: column;
      gap: 1em;
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
    display: flex;

    .side {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      border-top: 1px solid var(--color-light-brown);
      flex: 1;
      margin-right: 16px;

      p {
        margin: 8px;
        font-size: var(--fz-8);
      }

      nav {
        display: flex;
        justify-content: center;
        align-items: center;

        gap: 0.5em;
        .icon-wrapper {
          cursor: pointer;
          display: flex;
          justify-content: center;
          align-items: center;
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
