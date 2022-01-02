<template>
  <div class="home">
    <div class="brand">
      <div class="flex-box">
        <img class="logo" src="../assets/images/logo.svg" />
        <span class="bg-primary">Kindness</span>
        <span>Efficient</span>
      </div>
      <el-row :gutter="20" class="features">
        <el-col :xs="12" :sm="6"
          ><i class="iconfont icon-shandian primary"></i
          ><a>Easy Startup</a></el-col
        >
        <el-col :xs="12" :sm="6"
          ><i class="iconfont icon-keshihua primary"></i
          ><a>Modular Design</a></el-col
        >
        <el-col :xs="12" :sm="6"
          ><i class="iconfont icon-huojian_mian primary"></i
          ><a>Zero Friction</a></el-col
        >
        <el-col :xs="12" :sm="6"
          ><i class="iconfont icon-wuxian primary"></i
          ><a>Infinitely Scalable</a></el-col
        >
      </el-row>
      <p class="text-second description">
        The modular design ensures that the system is flexible and adaptable to
        different scenarios, and the plug-in mechanism ensures a better user
        experience. At the same time we give users a quantifiable
        three-dimensional identity through an infinitely scalable DAO model,
        enabling trustless collaboration. Our ultimate goal is to achieve a
        large, complex, multi-disciplinary collaborative DAO that can be built
        in days, where traditional companies would take years or even decades to
        build such a team.
      </p>
    </div>
    <el-row class="projects" :gutter="20">
      <p class="projects-title primary">Projects</p>
      <el-col
        :xs="24"
        :sm="12"
        :md="8"
        v-for="(project, i) in projects"
        :key="i"
      >
        <el-card :body-style="{ padding: '0px' }">
          <div class="cover">
            <img :src="project.cover" class="image" />
          </div>
          <div class="content">
            <span class="primary name">{{ project.name }}</span>
            <div class="bottom clearfix">
              <p class="text-second description">{{ project.description }}</p>
              <div class="info">
                <span
                  :class="'status ' + (project.status == 'Done' ? 'done' : '')"
                  ><i
                    :class="
                      'iconfont icon-' +
                      (project.status == 'Done' ? 'done' : 'wait')
                    "
                  ></i
                  >{{ project.status }}</span
                >
                <div class="clues">
                  <a
                    target="_blank"
                    v-for="(c, k) in project.contacts"
                    :key="k"
                    :href="c"
                  >
                    <el-button class="iconfont" type="primary" circle
                      ><i :class="'iconfont icon-' + k"></i
                    ></el-button>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </el-card>
      </el-col>
    </el-row>
  </div>
</template>

<script>
export default {
  data() {
    return {
      projects: [
        {
          name: "Ourspace",
          cover: require("../assets/images/projects/ourspace-index.png"),
          description:
            "OurSpace is an ecological chain that generates rich Dapps through ZeroDAO. It precipitates social relationships, and generates a safe and high-quality reputation system through the TIR algorithm, which provides ecological support for the entire blockchain.",
          contacts: {
            website: "http://www.ourspace.network/",
            github: "https://github.com/ZeroDAO/ZeroDAO-node",
            medium: "https://zerodao.medium.com/",
            twitter: "https://twitter.com/zerodaonet",
            discord: "https://discord.gg/sw5MHASzNe",
          },
          status: "Done",
        },
        {
          name: "Atomicity Interoperability Token",
          cover: require("../assets/images/projects/ait.png"),
          description:
            "AIT is an NFT standard that abstracts the NFT into minimal elements and interactions, making the NFT atomistic and interoperable.",
          contacts: {
            website: "https://ait.zerodao.net/",
          },
          status: "Draft",
        },
        {
          name: "Decentralised Simple Syndication",
          cover: require("../assets/images/projects/DSS.png"),
          description:
            "A highly abstracted web3 era content form, applicable to all applications by extension and spread by information flow and social relations.",
          contacts: {},
          status: "Draft",
        },
        {
          name: "Ourstore",
          cover: require("../assets/images/projects/ourstore.png"),
          description:
            "Free and permanent decentralised storage based on IPFS and Substrate.",
          contacts: {},
          status: "Draft",
        },
        {
          name: "SoCircles",
          cover: require("../assets/images/projects/SoCircles.png"),
          description:
            "Validation of TIR's MVP, based on Circles' social connections.",
          contacts: {
            website: "https://socircles.info/",
          },
          status: "Done",
        },
        {
          name: "PolkaPie",
          cover: require("../assets/images/projects/polkapie.png"),
          description:
            "Substrate's Chinese documentation and developer community.",
          contacts: {},
          status: "Done",
        },
      ],
    };
  },
};
</script>
<style lang="scss">
@import "../theme/colors.scss";

$--primary-pixel: linear-gradient(0deg, $--color-primary 100%, #fff 0);
$--white-pixel: linear-gradient(0deg, #fff 100%, #fff 0);
$--grey-pixel: linear-gradient(0deg, #f8f6f7 100%, #f8f6f7 0);

.home {
  .brand {
    width: 100%;
    .flex-box {
      display: flex;
      width: 300px;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      margin: auto;
      margin-top: 180px;
      img {
          margin-bottom: 1px;
      }
      img,
      span {
        width: 300px;
        text-align: center;
      }
      span {
        color: #fff;
        font-size: 38px;
        line-height: 70px;
        font-weight: bold;
      }
      span:nth-child(3) {
        background-color: #ff7f0b;
      }
    }
    .features {
      text-align: center;
      font-size: 18px;
      max-width: 800px;
      margin: 30px auto !important;
      margin-top: 20px;
      i {
        font-size: 26px;
        margin-right: 10px;
      }
      .el-col {
        display: flex;
        align-items: center;
        justify-content: center;
      }
    }
    .description {
      max-width: 800px;
      margin: 0 auto;
    }
  }
  .projects {
    max-width: 1500px;
    margin: 260px auto 20px auto !important;
    .el-col {
      margin-bottom: 20px;
    }
    .projects-title {
      width: 100%;
      font-size: 30px;
      font-weight: bold;
      text-align: center;
    }
    .info {
      display: flex;
      justify-content: space-between;
      align-items: center;
      height: 50px;
      .status {
        font-size: 13px;
        color: #999;
        i {
          margin-right: 5px;
        }
      }
      .done {
        color: #64bb05;
      }
    }

    .cover {
      height: 180px;
      overflow: hidden;
    }

    .bottom {
      margin-top: 13px;
      line-height: 12px;
    }

    .image {
      width: 100%;
      height: 180px;
      object-fit: cover;
    }

    .clearfix:before,
    .clearfix:after {
      display: table;
      content: "";
    }

    .content {
      padding: 14px;
      p {
        line-height: 20px;
        height: 80px;
        overflow: hidden;
      }
      .name {
        font-size: 18px;
        font-weight: bold;
      }
    }

    .clearfix:after {
      clear: both;
    }
    .clues {
      font-size: 16px;
      padding: 0;
      float: right;
      a {
        margin-left: 5px;
      }
    }
  }
}
</style>
