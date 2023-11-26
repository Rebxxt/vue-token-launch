<template>
  <div class="body relative">
    <header>
      <h3 class="green-shadow text-center mt0 camel">our token</h3>
      <h1 class="green-shadow text-center mt0 camel">launchpad projected plan</h1>
    </header>

    <main class="flex mt3 relative">

      <div class="absolute w100">
        <div class="background-light-2"></div>
        <div class="background-light-3"></div>
      </div>

      <div class="left-side relative">
        <div class="divider absolute"></div>
        <div class="left-side__title relative background-light-1">
          <h3>Roadmap</h3>
          <h3>{{yearPlans}}</h3>
        </div>
      </div>

      <div class="right-side">
        <div class="quarter flex flex-column" v-for="quarter in plan" :key="quarter.quarter">
          <h4 class="font-normal">{{quarter.quarter}}</h4>
          <ul class="tasks p0" v-for="task in quarter.tasks" :key="task">
            <li>{{task}}</li>
          </ul>
        </div>
      </div>
    </main>
  </div>
</template>

<script>
import {plan} from "@/components/variables/project-plan";

export default {
  name: "ProjectPlan",
  data() {
    return {
      yearPlans: '2023',
      plan: plan
    }
  }
}
</script>

<style scoped lang="scss">

main {
  width: 80vw;
}
.left-side {
  flex: 1;
  &__title {
    top: 30%;
  }
}
.right-side {
  flex: 2;
}

.quarter {
  li {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    list-style: url("@/assets/icons/star.svg") inside circle;
  }
}

.divider {
  width: 100vw;
  height: 115%;
  background: url("@/assets/svg/plan-divider.svg") no-repeat center / contain;
  translate: -30%;
  top: 0;
}

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

.background-light-1 {
  &::before {
    content: '';
    inset: -300px;
    position: absolute;
    z-index: -1;
    background: radial-gradient(ellipse 35% 50% at 30% 50%, rgba(44,45,99,0.2) 20%, rgba(152,0,218,0) 100%);
  }
}

.background-light-2 {
  &::before {
    content: '';
    inset: -550px;
    position: absolute;
    z-index: -1;
    translate: 5% 20%;
    background: radial-gradient(ellipse 20% 40% at 50% 50%, rgba(47, 49, 108, 0.5) 25%, rgba(152,0,218,0) 100%);
  }
}

.background-light-3 {
  &::before {
    content: '';
    inset: -600px;
    position: absolute;
    z-index: -1;
    translate: -5% 50%;
    background: radial-gradient(ellipse 20% 40% at 50% 50%, rgba(105, 52, 104, 0.2) 50%, transparent);
  }
}

</style>
