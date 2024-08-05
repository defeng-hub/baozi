<template>
  <div class="dashboard-editor-container">
    <BasicLayout>
      <template #wrapper>
        <el-card class="box-card">
          <div class="main-page">
            <p><span class="strong">南磨房地区-限额以下小型施工备案-管理系统</span></p>
          </div>
        </el-card>
      </template>
    </BasicLayout>
    <div class="bottom-center" />
  </div>
</template>

<script>
import { mapGetters } from 'vuex'
import { getUserProfile } from '@/api/admin/sys-user'

export default {
  name: 'Dashboard',
  components: {
  },
  data() {
    return {
      currentRole: 'adminDashboard'
    }
  },
  computed: {
    ...mapGetters([
      'roles'
    ])
  },
  created() {
    // 向后端请求数据，判断ticket状态
    getUserProfile().then(response => {})
    // this.$router.push('/tb-risk/index')
    // if (!this.roles.includes('admin')) {
    //   this.currentRole = 'editorDashboard'
    // }
  },
  methods: {
  }
}
</script>
<style scoped>
.el-card{
  width: 90%;
  /* height: 60%; */
  /* background-image: url("/holle.jpg"); */
  /* background-position: center left; */
  /* background-repeat: no-repeat; */
  background-color: #f3f3f3;
  background-size: cover;
  /* overflow-y: auto; */
  margin: auto;
  margin-top: 10px;
}
.bottom-center{
  position: absolute;
  bottom: 0px;
  width: 100%;
  text-align: center;
  font-size: 14px;
  color: #333;
}

p{
  color: #333;
  line-height: 30px;
}
.strong{
  font-size: 21px;
  font-weight: bold;
  margin-right: 10px;
}
@media screen and (min-width:960px) {
  .main-page{
    padding: 10px 0;
    margin-left: 40%;
    margin-right: 5%;
    /* margin-top: 10%; */
    box-sizing: border-box;
  }
}

@media screen and (max-width: 960px) {
  .el-card{
    background-color: #fff;
    border: #fff 1px solid;
    background: none;
  }
  .el-card::after{
    content: "";
    background-image: url("/holle.jpg");
    background-size: cover;
    background-position: left bottom;
    opacity: 0.2;

    position: absolute;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
  }
  .main-page{
    padding: 5px 0;
    margin-left: 0;
    margin-right: 0;
    /* margin-top: 10%; */
    box-sizing: border-box;
  }
}

</style>
