<template>
  <div class="index">
    <el-container>
      <el-main>
        <router-view></router-view>
      </el-main>
      <el-footer>
        <div class="footer-content">
          <div>
            <img src="../assets/images/logo-ui.svg" />
            <p class="text-second">© 2020-2021 ZeroDAO</p>
          </div>
          <div class="footer-right">
            <div class="icon-buttons">
              <a href="https://twitter.com/zerodaonet" target="_blank">
                <el-button class="iconfont" type="primary" circle
                  >&#xe652;</el-button
                >
              </a>
              <a href="https://zerodao.medium.com/" target="_blank">
                <el-button class="iconfont" type="primary" circle
                  >&#xe6c9;</el-button
                >
              </a>
              <a href="https://discord.gg/cFkK7vZxVq" target="_blank">
                <el-button class="iconfont" type="primary" circle
                  >&#xe604;</el-button
                >
              </a>
              <a href="https://github.com/ZeroDAO" target="_blank">
                <el-button class="iconfont" type="primary" circle
                  >&#xe657;</el-button
                >
              </a>
            </div>
          </div>
        </div>
      </el-footer>
    </el-container>
  </div>
</template>

<script>
import localstorage from "@/util/localstorage";

export default {
  name: "HomeIndex",
  data() {
    return {
      apps: [[]],
      chaTime: "",
      drawer: false,
    };
  },
  created() {
    this.menuSele = this.$route.path;
    let navLanguage = localstorage.fetch("language") || navigator.language;
    if (typeof this.$i18n.messages[navLanguage] == "undefined") {
      navLanguage = "en-US";
    }
    this.$i18n.locale = navLanguage;
  },
  methods: {
    changeLang(language) {
      this.$i18n.locale = language;
      localstorage.set("language", language, 0);
    },
  },
};
</script>
<style lang="less">
body {
  margin: 0;
}
.footer-content {
  display: flex;
  align-items: center;
  justify-content: space-between;
  img {
      width: 120px;
  }
}
</style>
