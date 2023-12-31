<template>
  <div class="body">
    <header class="mb3">
      <h1 class="text-center mt0">Our Leaderboard</h1>
      <p class="text-center mt2 camel fz6 text-grey">Empower your Crypto Project with Community-Powered Liquidity. Aptos Web 3.0 Launchpad on the Safest and Scalable Layer 1 Blockchain</p>
    </header>

    <main class="flex-center flex-column gap2em">
      <div class="board flex flex-column gap3em">
        <div class="card flex flex-column w100 gap2em relative" v-for="(token, index) in tokens" :key="token.address">
          <div class="absolute w100" v-if="index % 4 === 0">
            <div class="background-light-1"></div>
            <div class="background-light-2"></div>
            <div class="background-light-3"></div>
          </div>
          <div class="title space-logo fz5">
            {{token.title}}
          </div>
          <div class="logo ml2 p1 absolute"><img class="no-select" :src="token.icon" draggable="false"></div>
          <div class="table pv1 pr3 space-logo pl1 flex jcsb relative">
            <div class="column flex flex-column" v-for="column in columns" :key="column.key">
              <div class="column-title font-normal">{{column.title}}</div>
              <div class="column-content font-bold">{{token[column.key]}}</div>
            </div>
          </div>
        </div>
      </div>

      <button class="fz7 font-bold pv1 button-outline " @click="showMore()" v-if="tokensMock.length < total">Learn More</button>
    </main>
  </div>
</template>

<script>
import {leaderBoardColumns, leaderBoardMock} from "@/components/variables/leader-board";

export default {
  name: "LeaderBoard",
  data() {
    return {
      total: 20,
      showMoreVisible: true,
      columns: leaderBoardColumns,
      typeDictionary: {
        'public': 'Public',
        'private': 'Private',
      },
      tokensMock: [...leaderBoardMock]
    }
  },
  computed: {
    tokens() {
      return this.tokensMock.map((token) => ({
        ...token,
        title: `${token.title} (${this.typeDictionary[token.type] ?? 'No Type'})`,
        rank: token.rank.pad(2),
        address: token.address.replace(/^(0x.{9})(.*)(.{6})$/g, '$1.....$3'),
        athRoi: token.athRoi + 'x',
        currentPrice: new Intl.NumberFormat('en-EU', {
          style: 'currency',
          currency: 'USD',
          maximumFractionDigits: 8
        }).format(token.currentPrice)
      })) ?? [];
    }
  },
  methods: {
    showMore() {
      let lastRank = this.tokensMock.slice(-1)[0].rank;
      console.log('Find more after rank', lastRank);
      console.log('Find more then current total', this.localTotal);
      this.tokensMock.push(...leaderBoardMock.map(token => ({
        ...token,
        rank: ++lastRank,
      })))
    //   TODO when backend will end
    //   update this.localTotal
    //   this.total = response.total;  if (this.total <= this.token.length) { this.showMoreVisible = false; }
    }
  }
}
</script>

<style scoped lang="scss">

.background-light-1 {
  &::before {
    content: '';
    inset: -300px;
    position: absolute;
    z-index: -1;
    translate: -15% -25%;
    background: radial-gradient(ellipse 15% 50% at 30% 50%, rgba(44,45,99,0.5) 12%, rgba(152,0,218,0) 100%);
  }
}

.background-light-2 {
  &::before {
    content: '';
    inset: -350px;
    position: absolute;
    z-index: -1;
    translate: 35% -25%;
    background: radial-gradient(ellipse 18% 50%, rgba(105, 52, 104, 0.15) 0%, rgba(105, 52, 104, 0.1) 50%, transparent);
  }
}

.background-light-3 {
  &::before {
    content: '';
    inset: -400px;
    position: absolute;
    z-index: -1;
    translate: 0 50%;
    background: radial-gradient(ellipse 20% 40% at 50% 50%, rgba(30, 31, 68, 0.5) 25%, rgba(152,0,218,0) 100%);
  }
}

.logo {
  z-index: 2;
  background-color: #1F2431;
  -webkit-border-radius: 16px;
  -moz-border-radius: 16px;
  border-radius: 16px;
  translate: 0 -8%;

  img {
    width: 80px;
    height: 80px;
  }
}

.space-logo {
  padding-left: 160px;
}

.table {
  background: var(--bg-ligth-brown);
  border: 1px solid var(--color-light-brown);
  border-radius: 16px;
  min-width: 840px;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

.column {
  gap: 8px;
}

.board {
  max-width: 1300px;
  width: 80vw;
}

.content:nth-child(1) {
  flex: 1;
}

header p {
  max-width: 760px;
}

</style>
