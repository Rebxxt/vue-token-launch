<template>
  <div class="sections">
    <div class="blur-wrap">
      <PreviewInformation class="full-page"></PreviewInformation>
      <ProjectShortStatistics></ProjectShortStatistics>
      <AboutUs class="page-3on4"></AboutUs>
      <EarlyAccess class="mv5 page-3on4"></EarlyAccess>
      <LeaderBoard class="mv5"></LeaderBoard>
      <ProjectPlan class="mv5 full-page"></ProjectPlan>
      <TokenomicsInfo></TokenomicsInfo>
      <FooterNavigation></FooterNavigation>
    </div>
  </div>
</template>

<script>
import AboutUs from "@/components/sections/AboutUs";
import EarlyAccess from "@/components/sections/EarlyAccess";
import FooterNavigation from "@/components/sections/FooterNavigation";
import LeaderBoard from "@/components/sections/LeaderBoard";
import PreviewInformation from "@/components/sections/PreviewInformation";
import ProjectPlan from "@/components/sections/ProjectPlan";
import TokenomicsInfo from "@/components/sections/TokenomicsInfo";
import ProjectShortStatistics from "@/components/sections/ProjectShortStatistics.vue";
Number.prototype.pad = function(n) {
  const length = n - this.toString().split('').length;
  return new Array(length > 0 ? length : 0).fill(0).join('') + this;
}
export default {
  name: "LandingPage",
  components: {
    ProjectShortStatistics,
    FooterNavigation, TokenomicsInfo, ProjectPlan, LeaderBoard, EarlyAccess, AboutUs, PreviewInformation}
}
</script>

<style scoped>

.blur-wrap {
  overflow: hidden;
  backdrop-filter: blur(100px);
}

  .sections {
    color: var(--color-white);
  }
  .body {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;

    font-family: Rubik, sans-serif;
  }
  .full-page {
    height: 100vh;
    min-height: 800px;
  }
  .page-3on4 {
    height: 75vh;
    min-height: 600px;
  }
  h1 {
    font-size: 10px;
  }
</style>

<style lang="scss">

.input-block {
  border: 2px solid var(--color-light-brown);
  background: var(--bg-ligth-brown);
  color: #c7c7c7;
  font-weight: bold;
  border-radius: 12px;
  padding: 14px 14px;
  display: flex;
}

.input-block input {
  flex: 1;
  font-size: var(--fz-7);
  background: transparent;
  color: #c7c7c7;
  outline: none;
  border: none;
}

.input-block .icon {
  cursor: pointer;
  filter: var(--color-filter-dark-blue);
  transition: 0.2s;
}

.input-block .icon:hover {
  filter: var(--color-filter-blue);
}
.input-block input:focus {
  outline: none;
  border: none;
}

.font-normal {
  font-weight: normal !important;
}
.font-bold {
  font-weight: bold !important;
}

.icon {
  user-select: none;
  filter: brightness(0) invert(1);
  max-width: 1.5em;
  max-height: 1.5em;
}

.text-light-grey {
  color: var(--color-light-grey)
}

.text-light-grey img {
  filter: var(--color-filter-light-grey)
}

.text-grey {
  color: var(--color-grey);
}

.text-grey img {
  filter: var(--color-filter-grey)
}

.line-height {
  line-height: 1.8;
}

.flex-center {
  display: flex;
  justify-content: center;
  align-items: center;
}

:root {
  --fz-1: 64px;
  --fz-2: 48px;
  --fz-3: 40px;
  --fz-4: 30px;
  --fz-5: 24px;
  --fz-6: 18px;
  --fz-7: 16px;
  --fz-8: 12px;

  --bg-black: black;
  --bg-ligth-brown: rgba(31, 28, 38, 0.45);

  --color-light-brown: rgba(45, 43, 52, 0.86);
  --color-shadow-light-grey: rgba(136, 137, 141, 0.4);
  --color-light-grey: #bababd;
  --color-grey: #88898D;
  --color-dark-grey: #181E21;
  --color-black: #0E0F13;
  --color-blue: #01A3FF;
  --color-dark-blue: #0D40F3;
  --color-purple: #5916AA;
  --color-white: #FFF;
  /* filter compute link: https://codepen.io/sosuke/pen/Pjoqqp */
  --color-filter-light-grey: invert(85%) sepia(4%) saturate(121%) hue-rotate(201deg) brightness(87%) contrast(95%);
  --color-filter-grey: invert(61%) sepia(7%) saturate(153%) hue-rotate(190deg) brightness(87%) contrast(90%);
  --color-filter-dark-grey: invert(9%) sepia(8%) saturate(1298%) hue-rotate(155deg) brightness(96%) contrast(93%);
  --color-filter-black: invert(4%) sepia(4%) saturate(3385%) hue-rotate(191deg) brightness(98%) contrast(96%);
  --color-filter-blue: invert(50%) sepia(31%) saturate(5582%) hue-rotate(177deg) brightness(101%) contrast(110%);
  --color-filter-dark-blue: invert(29%) sepia(85%) saturate(7487%) hue-rotate(231deg) brightness(93%) contrast(106%);
  --color-filter-purple: invert(12%) sepia(69%) saturate(7160%) hue-rotate(269deg) brightness(71%) contrast(97%);
  --color-filter-white: invert(100%) sepia(0%) saturate(7425%) hue-rotate(245deg) brightness(111%) contrast(110%);

  --graph-size: 530;
}

h1, h2, h3, h4, h5, h6 {
  margin: 16px 0;
}

h1 {
  font-size: var(--fz-1);
}
h2 {
  font-size: var(--fz-2);
}
h3 {
  font-size: var(--fz-3);
}
h4 {
  font-size: var(--fz-4);
}
h5 {
  font-size: var(--fz-5);
}
h6 {
  font-size: var(--fz-6);
}
p {
  font-size: var(--fz-7);
}

$fzSizes: (
    "1": --fz-1,
    "2": --fz-2,
    "3": --fz-3,
    "4": --fz-4,
    "5": --fz-5,
    "6": --fz-6,
    "7": --fz-7,
    "8": --fz-8,
);

@each $index, $size in $fzSizes {
  .fz#{$index} {
    font-size: var($size);
  }
}


li {
  list-style: none;
}

.max80 {
  max-width: 80vw;
}

.max80p {
  max-width: 80%;
}

button {
  cursor: pointer;
  white-space: nowrap;
}

.button-fill,
.button-outline {
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 1em;
  position: relative;
  padding: 0 2em;

  -webkit-border-radius: 50px;
  -moz-border-radius: 50px;
  border-radius: 50px;

  -webkit-transition: 1s ease-out;
  -moz-transition: 1s ease-out;
  -o-transition: 1s ease-out;
  transition: 1s ease-out;
  background-position-x: 0;

  &:hover {
    background-position-x: 100%;
  }
}

.button-fill {
  border: none;
  background: linear-gradient(117deg, rgb(33, 38, 173) 5%, rgba(89,0,218,1) 36%, rgba(125,34,150,1) 60%, rgba(218,137,0,1)  100%);
  background-size: 200%;
  color: var(--color-white);
}

.button-outline {
  border: 2px solid rgba(136, 137, 141, 0.3);
  background: linear-gradient(117deg, rgba(0,6,144,0.2) 5%, rgba(89,0,218,0.2) 36%, rgba(125,34,150,0.2) 60%, rgba(218,137,0,0.2)  100%);
  background-size: 200%;
  background-clip: border-box;
  color: var(--color-white);
}

.flex {
  display: flex;
}
.jcc {
  justify-content: center;
}
.aic {
  align-items: center;
}
.aie {
  align-items: end;
}
.ais {
  align-items: start;
}
.aistretch {
  align-items: start;
}
.jcsb {
  justify-content: space-between;
}
.jcsa {
  justify-content: space-around;
}
.jce {
  justify-content: end;
}
.flex-column {
  flex-direction: column !important;
}
.flex-row {
  flex-direction: row !important;
}

.flex1 {
  flex: 1;
}
.shrink0 {
  flex-shrink: 0;
}

.w100 {
  width: 100%;
}

.h100 {
  height: 100%;
}

.br50p {
  border-radius: 50%;
}

.text-nowrap {
  white-space: nowrap;
}

.relative {
  position: relative;
}

.absolute {
  position: absolute;
}


$emSizes: ("1": 1em, "2": 2em, "3": 3em, "4": 4em, "5": 5em);

@each $index, $size in $emSizes {
  .gap#{$index}em {
    gap: $size;
  }
  .p#{$index} {
    padding: $size;
  }
  .ph#{$index} {
    padding-left: $size;
    padding-right: $size;
  }
  .pv#{$index} {
    padding-top: $size;
    padding-bottom: $size;
  }
  .pt#{$index} {
    padding-top: $size;
  }
  .pb#{$index} {
    padding-bottom: $size;
  }
  .pl#{$index} {
    padding-left: $size;
  }
  .pr#{$index} {
    padding-right: $size;
  }
  .m#{$index} {
    margin: $size;
  }
  .mh#{$index} {
    margin-left: $size;
    margin-right: $size;
  }
  .mv#{$index} {
    margin-top: $size;
    margin-bottom: $size;
  }
  .mt#{$index} {
    margin-top: $size;
  }
  .mb#{$index} {
    margin-bottom: $size;
  }
  .mr#{$index} {
    margin-right: $size;
  }
  .ml#{$index} {
    margin-left: $size;
  }
}

.gap8px {
  gap: 8px;
}
.gap16px {
  gap: 16px;
}

.m0 {
  margin: 0;
}

.mt0 {
  margin-top: 0;
  margin-bottom: 0;
}

.mh0 {
  margin-left: 0;
  margin-right: 0;
}

.p0 {
  padding: 0;
}

.m0 {
  margin: 0;
}

.uppercase {
  text-transform: uppercase;
}

.camel {
  text-transform: capitalize;
}

.text-center {
  text-align: center;
}

.text-right {
  text-align: end;
}

.text-left {
  text-align: start;
}

.transition-1 {
  transition: 0.2s;
}

.no-select {
  user-select: none;
}

.cursor-pointer {
  cursor: pointer;
}

</style>
