<template>
<!--  <img alt="Vue logo" src="./assets/logo.png">-->
<!--  <HelloWorld msg="Welcome to Your Vue.js App"/>-->
<!--  <MyselfTester/>-->
  <LandingPage></LandingPage>
</template>

<script>

import LandingPage from "@/components/LandingPage";

export default {
  name: 'App',
  components: {
    LandingPage
  }
}
</script>

<style>
@font-face {
  font-family: Rubik;
  src: url("@/assets/fonts/Rubik-Regular.ttf");
}
@font-face {
  font-family: Rubik;
  src: url("@/assets/fonts/Rubik-Bold.ttf");
  font-weight: bold;
}
@font-face {
  font-family: Rubik;
  src: url("@/assets/fonts/Rubik-BoldItalic.ttf");
  font-weight: bold;
  font-style: italic;
}
@font-face {
  font-family: Rubik;
  src: url("@/assets/fonts/Rubik-Italic.ttf");
  font-style: italic;
}
@font-face {
  font-family: Rubik;
  src: url("@/assets/fonts/Rubik-Light.ttf");
  font-weight: lighter;
}
@font-face {
  font-family: Rubik;
  src: url("@/assets/fonts/Rubik-LightItalic.ttf");
  font-style: italic;
  font-weight: lighter;
}
#app {
  background: var(--bg-black);
}
/*
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
*/
</style>
