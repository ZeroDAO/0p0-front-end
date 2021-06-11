<template>
  <div class="home">
    <div class="pioneer">
      <p class="primary fault-text t1 ColorTube" :data-text="$t('page.hello')">
        {{ $t("page.hello") }}
      </p>
      <p class="t3 regular-text">{{ $t("page.Welcome") }}</p>
      <a :href="$t('page.light_white_paper_href')" target="_blank" class="primary-a">
        <el-button type="primary" round
          ><i class="iconfont">&#xe6a0; </i
          >{{ $t("page.light_white_paper") }}</el-button>
      </a>

      <div class="expand">
        <el-button class="iconfont" type="primary" plain circle
          >&#xe8d7;</el-button
        >
        <el-button class="iconfont" type="primary" plain circle
          >&#xe62e;</el-button
        >
        <el-button class="iconfont" type="primary" plain circle
          >&#xe60d;</el-button
        >
        <el-button class="iconfont" type="primary" plain circle
          >&#xe64a;</el-button
        >
      </div>
    </div>

    <div class="ide">
      <el-row class="actual">
        <div class="masked-image ColorTube">
          Blockchain + Zero°DAO <br />= ACTUAL
        </div>
        <div class="lable">
          <span class="bg-adorn"
            ><i class="iconfont">&#xe601; </i>{{ $t("page.reputation") }}</span
          >
          <span class="bg-adorn"
            ><i class="iconfont">&#xe68b; </i>{{ $t("page.networking") }}</span
          >
        </div>
      </el-row>

      <div class="title">
        <p class="t1 primary ColorTube">Zero°DAO + App <br />= NEXT</p>
        <p class="t3">{{ $t("page.apps_title") }}</p>
      </div>

      <el-row class="ide-bg">
        <el-col
          :md="8"
          :sm="12"
          :xs="24"
          v-for="(app, index) in lists.apps"
          :key="index"
        >
          <el-card shadow="hover">
            <p :class="'iconfont primary ' + app.icon"></p>
            <p class="primary">{{ app.title }}</p>
            <p>{{ app.content }}<br />{{ app.description }}</p>
          </el-card>
        </el-col>
      </el-row>
    </div>

    <div class="timeline">
      <div class="title">
        <p class="t2">{{ $t("page.not_slow") }}</p>
      </div>
      <el-timeline>
        <el-timeline-item
          v-for="(activity, index) in lists.timeline"
          :key="index"
          :timestamp="activity.timestamp"
          placement="top"
        >
          <el-card>
            <h3>{{ activity.title }}</h3>
            <p>
              {{ activity.text }}
            </p>
          </el-card>
        </el-timeline-item>
      </el-timeline>
    </div>
  </div>
</template>

<script>
let isLoadList = true;
const limit = 10;

export default {
  data() {
    return {};
  },
  computed: {
    lists() {
      return {
        timeline: this.$t("page.timeline"),
        apps: this.$t("page.apps"),
      };
    },
  },
  created() {
    console.log(this.timeline);
  },
};
</script>
<style lang="less">
.home {
  button {
    margin-top: 50px;
  }
  .actual {
    background: url(../assets/images/bg.png) rgba(4, 19, 105, 0.7) no-repeat
      center center;
    background-attachment: fixed;
    background-blend-mode: multiply;
    background-size: cover;
    .masked-image {
      width: 100%;
      font-size: 3em;
      font-weight: bold;
      padding-top: 150px;
      line-height: 1.2;
      position: relative;
      display: inline-block;
      text-align: center;
      color: #fff;
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-image: inherit;
      background-position: center;
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: cover;
    }
    .lable {
      padding-bottom: 150px;
      padding-top: 80px;
      span {
        margin: 20px;
        padding: 20px;
        display: inline-block;
      }
    }
  }
  .timeline {
    width: 100%;
    max-width: 800px;
    margin: auto;
    .title {
      width: 100%;
    }
  }
}
</style>
