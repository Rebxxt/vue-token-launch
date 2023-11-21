<template>
  <div class="sections">
    <div class="blue-wrap">
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

.blue-wrap {
  backdrop-filter: blur(100px);
}

  .sections {
    background-image: radial-gradient(ellipse 115% 19% at 25% 96%, rgba(245, 143, 243, 0.27) 0%, rgba(241, 124, 239, 0.38), 16%, transparent),
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
  border: 2px solid var(--color-ligth-brown);
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

  --color-ligth-brown: rgba(45, 43, 52, 0.86);
  --color-grey: #88898D;
  --color-dark-grey: #181E21;
  --color-black: #0E0F13;
  --color-blue: #01A3FF;
  --color-dark-blue: #0D40F3;
  --color-purple: #5916AA;
  --color-white: #FFF;
  /* filter compute link: https://codepen.io/sosuke/pen/Pjoqqp */
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
  margin: 16px;
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
</style>
