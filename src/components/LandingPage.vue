<template>
  <div class="sections">
    <div class="blur-wrap">
      <PreviewInformation class="full-page"></PreviewInformation>
      <AboutUs class="full-page"></AboutUs>
      <EarlyAccess class="full-page"></EarlyAccess>
      <LeaderBoard class="full-page"></LeaderBoard>
      <ProjectPlan></ProjectPlan>
      <TokenomicsInfo class="full-page"></TokenomicsInfo>
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
export default {
  name: "LandingPage",
  components: {FooterNavigation, TokenomicsInfo, ProjectPlan, LeaderBoard, EarlyAccess, AboutUs, PreviewInformation}
}
</script>

<style scoped>

.blur-wrap {
  backdrop-filter: blur(100px);
}

  .sections {
    background-image:
        radial-gradient(ellipse 50% 10% at 15% 10%, rgba(245, 143, 243, 0.27) 0%, rgba(241, 124, 239, 0.38), 46%, transparent),
        radial-gradient(ellipse 115% 19% at 60% 5%, rgba(73, 74, 192, 0.4) 0%, rgba(88, 89, 194, 0.5), 30%, transparent),
        radial-gradient(ellipse 20% 10% at 102% 10%, rgba(245, 143, 243, 0.27) 0%, rgba(241, 124, 239, 0.38), 45%, transparent),
        radial-gradient(ellipse 12% 10% at 102% 5%, rgba(1, 163, 255, 0.38) 0%, rgba(1, 163, 255, 0.29), 45%, transparent),
        radial-gradient(ellipse 115% 19% at 25% 96%, rgba(245, 143, 243, 0.27) 0%, rgba(241, 124, 239, 0.38), 16%, transparent),
        radial-gradient(ellipse 155% 15% at 75% 97%, rgba(1, 163, 255, 0.38) 0%, rgba(1, 163, 255, 0.29), 25%, transparent);
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
  }
  h1 {
    font-size: 10px;
  }
</style>

<style>

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

.subtitle {
  color: var(--color-grey)
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

li {
  list-style: none;
}

.m0 {
  margin: 0;
}

.p0 {
  padding: 0;
}

button {
  cursor: pointer;
  white-space: nowrap;
}

.button-fill {
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 1em;
  position: relative;
  background: linear-gradient(117deg, rgb(33, 38, 173) 5%, rgba(89,0,218,1) 36%, rgba(125,34,150,1) 60%, rgba(218,137,0,1)  100%);
  background-position-x: 0;
  background-size: 200%;
  color: var(--color-white);
  padding: 0 2em;
  border: none;
  -webkit-border-radius: 50px;
  -moz-border-radius: 50px;
  border-radius: 50px;
  -webkit-transition: 1s ease-out;
  -moz-transition: 1s ease-out;
  -o-transition: 1s ease-out;
  transition: 1s ease-out;

  &:hover {
    background-position-x: 100%;
  }
}

.button-outline {
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 1em;
  position: relative;
  background: linear-gradient(117deg, rgba(0,6,144,0.2) 5%, rgba(89,0,218,0.2) 36%, rgba(125,34,150,0.2) 60%, rgba(218,137,0,0.2)  100%);
  border: 2px solid rgba(136, 137, 141, 0.3);
  background-position-x: 0;
  background-size: 200%;
  background-clip: border-box;
  color: var(--color-white);
  padding: 0 2em;
  -webkit-border-radius: 50px;
  -moz-border-radius: 50px;
  border-radius: 50px;
  -webkit-transition: 1s ease-out;
  -moz-transition: 1s ease-out;
  -o-transition: 1s ease-out;
  transition: 1s ease-out;

  &:hover {
    background-position-x: 100%;
  }
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
.jcsb {
  justify-content: space-between;
}
.jcsa {
  justify-content: space-around;
}
.flex-column {
  flex-direction: column;
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

.gap1em {
  gap: 1em;
}
.gap2em {
  gap: 2em;
}
.gap3em {
  gap: 3em;
}
.gap4em {
  gap: 4em;
}
.gap5em {
  gap: 5em;
}
.gap8px {
  gap: 8px;
}
.gap16px {
  gap: 16px;
}
</style>
