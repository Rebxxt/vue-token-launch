<template>
  <div class="sections">
    <TokenomicsInfo class="full-page"></TokenomicsInfo> <!-- TODO after ProjectPlan -->
    <PreviewInformation class="full-page"></PreviewInformation>
    <AboutUs class="full-page"></AboutUs>
    <EarlyAccess class="full-page"></EarlyAccess>
    <LeaderBoard class="full-page"></LeaderBoard>
    <ProjectPlan></ProjectPlan>
    <FooterNavigation></FooterNavigation>
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
  }
  h1 {
    font-size: 10px;
  }
</style>

<style>

:root {
  --color-grey: #88898D;
  --color-black: #0E0F13;
  --color-blue: #01A3FF;
  --color-dark-blue: #0D40F3;
  --color-purple: #5916AA;
  --color-white: #FFF;
}

h1, h2, h3, h4, h5, h6 {
  margin: 0.3em;
}

h1 {
  font-size: 64px;
}
h2 {
  font-size: 48px;
}
h3 {
  font-size: 40px;
}
h4 {
  font-size: 30px;
}
h5 {
  font-size: 24px;
}
h6 {
  font-size: 18px;
}
p {
  font-size: 16px;
}
</style>
