<template>
  <div class="index">
    <el-container>
      <el-header>
        <el-row class="appbar" type="flex" justify="space-between">
          <el-col span="8">
            <router-link to="/">
              <img class="logo" src="../assets/images/logo.svg" />
            </router-link>
          </el-col>
          <el-col span="16" class="content">
            <el-dropdown @command="changeLang">
              <span class="el-dropdown-link">
                <i class="iconfont icon-yuyan"></i>
                {{ $t("page.language") }}
              </span>
              <el-dropdown-menu slot="dropdown">
                <el-dropdown-item command="zh-CN">中文</el-dropdown-item>
                <el-dropdown-item command="en-US">English</el-dropdown-item>
              </el-dropdown-menu>
            </el-dropdown>
          </el-col>
        </el-row>
      </el-header>

      <el-main>
        <router-view></router-view>
      </el-main>
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
    };
  },
  created() {
    this.menuSele = this.$route.path;
    let navLanguage = localstorage.fetch("language") || navigator.language;
    console.log('localstorage.fetch("language"): ', localstorage.fetch("language"));
    console.log('navigator.language ', navigator.language);
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
.t1 {
  font-size: 3em;
  font-weight: bold;
}

.regular-text {
  color: #606266;
}

.t2 {
  font-size: 2em;
  font-weight: bold;
  text-align: center;
}

.t3 {
  font-size: 1.5em;
}

.el-button--text {
  span {
    color: #303133;
  }
}
.index {
  width: 100%;
  .appbar {
    width: 100%;
    height: 5em;
    padding: 2em 0;
    .content {
      text-align: right;
      span {
        margin: auto 1em;
      }
    }
  }
  .pioneer {
    width: 100%;
    text-align: center;
    overflow: hidden;
    p:nth-child(1) {
      margin-top: 2em;
    }
    p:nth-child(2) {
      margin-top: -1.5em;
    }
    p:nth-child(3) {
      margin-top: 5em;
      margin-bottom: 0;
    }
    p:nth-child(4) {
      font-size: 8em;
      margin: 0;
      font-family: Daff;
      line-height: 1em;
    }
    p:nth-child(5) {
      margin-top: 0;
    }

    .expand {
      margin: 9em auto;
    }
  }

  .ide {
    width: 100%;
    text-align: center;
    .title {
      p:nth-child(1) {
        margin-top: 3em;
        text-shadow: 5px 3px 1px #fb6c84;
      }
      p:nth-child(2) {
        margin-top: -1em;
      }
    }
    .ide-bg {
      margin: auto;
      .el-card {
        margin: 0.2em;
      }
      p {
        white-space: nowrap;
      }
    }
    .el-card__body {
      p:nth-child(1) {
        font-size: 2em;
        line-height: 1em;
        margin: 0;
      }
    }
  }
}
</style>
<style lang="scss">
@font-face {
  font-family: "iconfont"; /* Project id 1537408 */
  src: url("//at.alicdn.com/t/font_1537408_ygw7g19s6ks.woff2?t=1623327981937")
      format("woff2"),
    url("//at.alicdn.com/t/font_1537408_ygw7g19s6ks.woff?t=1623327981937")
      format("woff"),
    url("//at.alicdn.com/t/font_1537408_ygw7g19s6ks.ttf?t=1623327981937")
      format("truetype");
}

@font-face {
  font-family: "ColorTube";
  src: url(../assets/css/ColorTube-2.otf);
}

.ColorTube {
  font-family: "ColorTube";
}

.iconfont {
  font-family: "iconfont" !important;
  font-size: 16px;
  font-style: normal;
  -webkit-font-smoothing: antialiased;
  -webkit-text-stroke-width: 0.2px;
  -moz-osx-font-smoothing: grayscale;
}

.title {
  p:nth-child(1) {
    margin-top: 3em;
  }
  p:nth-child(2) {
    margin-top: -1em;
  }
}

.primary {
  color: #002fda;
}

.logo {
  height: 60px;
  width: auto;
}
.fault-text {
  position: relative;
  color: #0322db;
  &::after,
  &::before {
    width: 100%;
    overflow: hidden;
    position: absolute;
    top: 0;
    background-color: #fff;
    clip: rect(0, 900px, 0, 0);
    color: #0322db;
    content: attr(data-text);
    animation: shake 3s linear infinite alternate-reverse;
  }
  &::before {
    left: -1px;
    text-shadow: 2px 0 #f85305;
  }
  &::after {
    left: 1px;
    text-shadow: -2px 0 #f66;
    animation-duration: 2s;
  }
}
@keyframes shake {
  $steps: 20;
  @for $i from 0 through $steps {
    #{percentage($i * (1 / $steps))} {
      clip: rect(random(100) + px, 9999px, random(100) + px, 0);
    }
  }
}

.el-main {
  margin: 0;
  padding: 0;
}
</style>
