<template>
  <BasicLayout>
    <template #wrapper>
      <el-card class="box-card">
        <el-form ref="queryForm" :model="queryParams" :inline="true" label-width="68px">
          <el-form-item label="手机号" label-width="100" prop="phone"><el-input v-model="queryParams.phone"
              placeholder="请输入手机号" clearable size="small" @keyup.enter.native="handleQuery" />
          </el-form-item>
          <el-form-item label="发包方名称" label-width="100" prop="fabaofangName"><el-input
              v-model="queryParams.fabaofangName" placeholder="请输入发包方名称" clearable size="small"
              @keyup.enter.native="handleQuery" />
          </el-form-item>
          <el-form-item label="发包方联系人" label-width="100" prop="fabaofangUser"><el-input
              v-model="queryParams.fabaofangUser" placeholder="请输入发包方联系人" clearable size="small"
              @keyup.enter.native="handleQuery" />
          </el-form-item>
          <el-form-item label="施工方名称" label-width="100" prop="shigongfangName"><el-input
              v-model="queryParams.shigongfangName" placeholder="请输入施工方名称" clearable size="small"
              @keyup.enter.native="handleQuery" />
          </el-form-item>
          <el-form-item label="施工方项目负责人" label-width="100" prop="shigongfangUser"><el-input
              v-model="queryParams.shigongfangUser" placeholder="请输入施工方项目负责人" clearable size="small"
              @keyup.enter.native="handleQuery" />
          </el-form-item>

          <el-form-item>
            <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
            <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
          </el-form-item>
        </el-form>

        <el-row :gutter="10" class="mb8">
          <!-- <el-col :span="1.5">
            <el-button v-permisaction="['admin:tbTable:add']" type="primary" icon="el-icon-plus" size="mini"
              @click="handleAdd">新增
            </el-button>
          </el-col>
          <el-col :span="1.5">
            <el-button v-permisaction="['admin:tbTable:edit']" type="success" icon="el-icon-edit" size="mini"
              :disabled="single" @click="handleUpdate">修改
            </el-button>
          </el-col> -->
          <!-- <el-col :span="1.5">
            <el-button v-permisaction="['admin:tbTable:remove']" type="danger" icon="el-icon-delete" size="mini"
              :disabled="multiple" @click="handleDelete">删除
            </el-button>
          </el-col> -->
        </el-row>

        <el-table v-loading="loading" :data="tbTableList" @selection-change="handleSelectionChange">
          <el-table-column type="selection" width="55" align="center" />
          <el-table-column label="编号" align="center" prop="id" :show-overflow-tooltip="true" />
          <el-table-column width="140" label="手机号" align="center" prop="phone" :show-overflow-tooltip="true" />
          <el-table-column label="作业面积" align="center" prop="zuoyemianji" :show-overflow-tooltip="true" />
          <!-- <el-table-column label="作业地址" align="center" prop="zuoyedizhi" :show-overflow-tooltip="true" /> -->
          <el-table-column label="所属社区" align="center" prop="suoshushequ" :show-overflow-tooltip="true" />
          <el-table-column label="发包方名称" align="center" prop="fabaofangName" :show-overflow-tooltip="true" />
          <!-- <el-table-column label="发包方联系人" align="center" prop="fabaofangUser" :show-overflow-tooltip="true" /> -->
          <!-- <el-table-column label="发包方联系方式" align="center" prop="fabaofangPhone"
            :show-overflow-tooltip="true" /> -->
          <el-table-column label="施工方名称" align="center" prop="shigongfangName" :show-overflow-tooltip="true" />
          <!-- <el-table-column label="施工方项目负责人" align="center" prop="shigongfangUser" :show-overflow-tooltip="true" /> -->
          <el-table-column label="施工日期" align="center" prop="workingDate" :show-overflow-tooltip="true" />
          <el-table-column label="施工状态" align="center" prop="workingStatus" :show-overflow-tooltip="true" />

          <!-- <el-table-column label="施工方联系方式" align="center" prop="shigongfangPhone"
            :show-overflow-tooltip="true" /> -->

          <!-- <el-table-column width="100" label="审核状态" align="center" prop="status" :show-overflow-tooltip="true">
            <template slot-scope="scope">
              <p v-if="scope.row.status == '审核通过'" style="color: #43964e;">{{ scope.row.status }}</p>
              <p v-else-if="scope.row.status == '审核未通过'" style="color: #ea3323;">{{ scope.row.status }}</p>
              <p v-else>待审核</p>
            </template>
          </el-table-column> -->

          <el-table-column label="备注" align="center" prop="remark" :show-overflow-tooltip="true">
            <template slot-scope="scope">
              <p v-if="scope.row.remark">{{ scope.row.remark }}</p>
              <p v-else>—</p>
            </template>
          </el-table-column>

          <el-table-column label="操作" align="center" class-name="small-padding fixed-width" width="160">
            <template slot-scope="scope">
              <el-button slot="reference" v-permisaction="['admin:tbTable:edit']" @click="handleUpdate(scope.row)"
              size="mini" type="text" icon="el-icon-edit">编辑</el-button>

              <el-button style="margin-left: 10px;" slot="reference" size="mini"  @click="handlerZhifa()"
              type="text" icon="el-icon-view">执法检查</el-button>
            </template>
          </el-table-column>
        </el-table>

        <pagination v-show="total > 0" :total="total" :page.sync="queryParams.pageIndex"
          :limit.sync="queryParams.pageSize" @pagination="getList" />

        <!-- 添加或修改对话框 -->
        <el-dialog :title="title" :visible.sync="open" width="70vw">

          <el-form ref="form" :model="form" :rules="rules" label-width="80px">
            <el-tabs v-model="activeName" @tab-click="handleClick">
              <el-tab-pane label="基本信息" name="first">
                <el-form-item label="手机号" prop="phone">
                  <el-input v-model="form.phone" placeholder="手机号" :disabled="true" />
                </el-form-item>
                <el-form-item label="作业面积" prop="zuoyemianji">
                  <el-input v-model="form.zuoyemianji" placeholder="作业面积" />
                </el-form-item>
                <el-form-item label="作业地址" prop="zuoyedizhi">
                  <el-input v-model="form.zuoyedizhi" placeholder="作业地址" />
                </el-form-item>
                <el-form-item label="所属社区" prop="suoshushequ">
                  <el-input v-model="form.suoshushequ" placeholder="所属社区" />
                </el-form-item>
              </el-tab-pane>

              <el-tab-pane label="发包方（甲方）和 施工方（乙方）" name="second">
                <el-form-item label="发包方名称" prop="fabaofangName" label-width="auto">
                  <el-input v-model="form.fabaofangName" placeholder="发包方名称" />
                </el-form-item>
                <el-form-item label="发包方联系人" prop="fabaofangUser" label-width="auto">
                  <el-input v-model="form.fabaofangUser" placeholder="发包方联系人" />
                </el-form-item>
                <el-form-item label="发包方联系方式" prop="fabaofangPhone" label-width="auto">
                  <el-input v-model="form.fabaofangPhone" placeholder="发包方联系方式" />
                </el-form-item>
                <el-form-item label="施工方名称" prop="shigongfangName" label-width="auto">
                  <el-input v-model="form.shigongfangName" placeholder="施工方名称" />
                </el-form-item>
                <el-form-item label="施工方项目负责人" prop="shigongfangUser" label-width="auto">
                  <el-input v-model="form.shigongfangUser" placeholder="施工方项目负责人" />
                </el-form-item>
                <el-form-item label="施工方联系方式" prop="shigongfangPhone" label-width="auto">
                  <el-input v-model="form.shigongfangPhone" placeholder="施工方联系方式" />
                </el-form-item>
              </el-tab-pane>

              <el-tab-pane label="资质上传" name="third">
                <el-row>
                  <el-col :span="12" style="padding: 20px 30px;">
                    <el-form-item label="营业执照" prop="yingyezhizhao" label-width="auto">
                      <el-input v-model="form.yingyezhizhao" placeholder="空" size="mini">
                        <template slot="prepend">地址</template>
                        <template slot="append">
                          <a :href="form.yingyezhizhao" target="_blank" style="display: block;color: #448ef7;">点击下载</a>
                        </template>
                      </el-input>

                      <el-image v-if="isImg(form.yingyezhizhao)" style="width: 100px; height: 100px"
                        :src="form.yingyezhizhao" :preview-src-list="[form.yingyezhizhao]"></el-image>
                    </el-form-item>

                    <el-form-item label="法人身份证" prop="farenid" label-width="auto">
                      <el-input v-model="form.farenid" placeholder="空" size="mini">
                        <template slot="prepend">地址</template>
                        <template slot="append">
                          <a :href="form.farenid" target="_blank" style="display: block;color: #448ef7;">点击下载</a>
                        </template>
                      </el-input>

                      <el-image v-if="isImg(form.farenid)" style="width: 100px; height: 100px" :src="form.farenid"
                        :preview-src-list="[form.farenid]"></el-image>
                    </el-form-item>
                    <el-form-item label="建筑企业资质安全生产许可证" prop="anquanxvkezheng" label-width="auto">
                      <el-input v-model="form.anquanxvkezheng" placeholder="空" size="mini">
                        <template slot="prepend">地址</template>
                        <template slot="append">
                          <a :href="form.anquanxvkezheng" target="_blank"
                            style="display: block;color: #448ef7;">点击下载</a>
                        </template>
                      </el-input>

                      <el-image v-if="isImg(form.anquanxvkezheng)" style="width: 100px; height: 100px"
                        :src="form.anquanxvkezheng" :preview-src-list="[form.anquanxvkezheng]"></el-image>
                    </el-form-item>

                    <el-form-item label="授权委托书" prop="shouquanweituozhu" label-width="auto">
                      <el-input v-model="form.shouquanweituozhu" placeholder="空">
                        <template slot="prepend">地址</template>
                        <template slot="append">
                          <a :href="form.shouquanweituozhu" target="_blank"
                            style="display: block;color: #448ef7;">点击下载</a>
                        </template>
                      </el-input>
                      <el-image v-if="isImg(form.shouquanweituozhu)" style="width: 100px; height: 100px"
                        :src="form.shouquanweituozhu" :preview-src-list="[form.shouquanweituozhu]"></el-image>
                    </el-form-item>
                  </el-col>

                  <el-col :span="12" style="padding: 20px 30px;">

                    <el-form-item label="项目负责人身份证" prop="fuzerenid" label-width="auto">
                      <el-input v-model="form.fuzerenid" placeholder="空">
                        <template slot="prepend">地址</template>
                        <template slot="append">
                          <a :href="form.fuzerenid" target="_blank" style="display: block;color: #448ef7;">点击下载</a>
                        </template>
                      </el-input>
                      <el-image v-if="isImg(form.fuzerenid)" style="width: 100px; height: 100px" :src="form.fuzerenid"
                        :preview-src-list="[form.fuzerenid]"></el-image>
                    </el-form-item>
                    <el-form-item label="甲乙双方施工合同" prop="jiayishuangfangshigonghetong" label-width="auto">
                      <el-input v-model="form.jiayishuangfangshigonghetong" placeholder="空">
                        <template slot="prepend">地址</template>
                        <template slot="append">
                          <a :href="form.jiayishuangfangshigonghetong" target="_blank"
                            style="display: block;color: #448ef7;">点击下载</a>
                        </template>
                      </el-input>
                      <el-image v-if="isImg(form.jiayishuangfangshigonghetong)" style="width: 100px; height: 100px"
                        :src="form.jiayishuangfangshigonghetong"
                        :preview-src-list="[form.jiayishuangfangshigonghetong]"></el-image>
                    </el-form-item>
                    <el-form-item label="安全生产责任保险" prop="anquanshengchanzerenbaoxian" label-width="auto">
                      <el-input v-model="form.anquanshengchanzerenbaoxian" placeholder="空">
                        <template slot="prepend">地址</template>
                        <template slot="append">
                          <a :href="form.anquanshengchanzerenbaoxian" target="_blank"
                            style="display: block;color: #448ef7;">点击下载</a>
                        </template>
                      </el-input>
                      <el-image v-if="isImg(form.anquanshengchanzerenbaoxian)" style="width: 100px; height: 100px"
                        :src="form.anquanshengchanzerenbaoxian"
                        :preview-src-list="[form.anquanshengchanzerenbaoxian]"></el-image>
                    </el-form-item>

                    <el-form-item label="特种作业证" prop="tezhongzuoyezheng" label-width="auto">
                      <el-input v-model="form.tezhongzuoyezheng" placeholder="空">
                        <template slot="prepend">地址</template>
                        <template slot="append">
                          <a :href="form.tezhongzuoyezheng" target="_blank"
                            style="display: block;color: #448ef7;">点击下载</a>
                        </template>
                      </el-input>
                      <el-image v-if="isImg(form.tezhongzuoyezheng)" style="width: 100px; height: 100px"
                        :src="form.tezhongzuoyezheng" :preview-src-list="[form.tezhongzuoyezheng]"></el-image>
                    </el-form-item>

                  </el-col>
                </el-row>

              </el-tab-pane>

              <el-tab-pane label="人工审核" name="fourth">
                <el-form-item label="审核状态" prop="status">
                  <el-select v-model="form.status" placeholder="请选择">
                    <el-option key="1" label="已提交（待审核）" value=""></el-option>
                    <el-option key="2" label="审核通过" value="审核通过">
                      <span style="float: left;color: #43964e;font-weight: 500;">审核通过</span>
                    </el-option>
                    <el-option key="3" label="审核未通过" value="审核未通过">
                      <span style="float: left;color: #ea3323;font-weight: 500;">审核未通过</span>
                    </el-option>
                  </el-select>
                </el-form-item>

                <el-form-item label="施工日期" prop="workingDate">
                  <el-input style="width: 50%" placeholder="未填写" v-model="form.workingDate">
                  </el-input>
                </el-form-item>

                <el-form-item label="施工状态" prop="workingStatus">
                  <!-- 在施/超期/已延期在施/已销账 -->
                  <el-select v-model="form.workingStatus" placeholder="请选择">
                    <el-option label="未选择" value=""></el-option>
                    <el-option label="在施" value="在施"></el-option>
                    <el-option label="超期" value="超期"></el-option>
                    <el-option label="已延期在施" value="已延期在施"></el-option>
                    <el-option label="已销账" value="已销账"></el-option>
                  </el-select>
                </el-form-item>

                <el-form-item label="备注" prop="remark">
                  <el-input type="textarea" :autosize="{ minRows: 2, maxRows: 4 }" style="width: 50%" placeholder="未填写"
                    v-model="form.remark">
                  </el-input>
                </el-form-item>

              </el-tab-pane>
            </el-tabs>

          </el-form>
          <div slot="footer" class="dialog-footer">
            <el-button type="primary" @click="submitForm">确 定</el-button>
            <el-button @click="cancel">取 消</el-button>
          </div>
        </el-dialog>
      </el-card>
    </template>
  </BasicLayout>
</template>

<script>
import { addTbTable, delTbTable, getTbTable, listTbTable, updateTbTable } from '@/api/admin/tb-table'

export default {
  name: 'TbTable',
  components: {
  },
  data() {
    return {
      activeName: 'first',
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 总条数
      total: 0,
      // 弹出层标题
      title: '',
      // 是否显示弹出层
      open: false,
      isEdit: false,
      // 类型数据字典
      typeOptions: [],
      tbTableList: [],

      // 关系表类型

      // 查询参数
      queryParams: {
        pageIndex: 1,
        pageSize: 10,
        phone: undefined,
        fabaofangName: undefined,
        fabaofangUser: undefined,
        shigongfangName: undefined,
        shigongfangUser: undefined,
        shigongfangPhone: undefined,
        status: "审核通过",
      },
      // 表单参数
      form: {
      },
      // 表单校验
      rules: {
        phone: [{ required: true, message: '手机号不能为空', trigger: 'blur' }],
        fabaofangName: [{ required: true, message: '发包方名称不能为空', trigger: 'blur' }],
        fabaofangUser: [{ required: true, message: '发包方联系人不能为空', trigger: 'blur' }],
        shigongfangName: [{ required: true, message: '施工方名称不能为空', trigger: 'blur' }],
        shigongfangUser: [{ required: true, message: '施工方项目负责人不能为空', trigger: 'blur' }],

        zuoyemianji: [{ required: true, message: '作业面积不能为空', trigger: 'blur' }],
        zuoyedizhi: [{ required: true, message: '作业地址不能为空', trigger: 'blur' }],
        suoshushequ: [{ required: true, message: '所属社区不能为空', trigger: 'blur' }],
        fabaofangPhone: [{ required: true, message: '发包方联系人手机号不能为空', trigger: 'blur' }],
        shigongfangPhone: [{ required: true, message: '施工方联系人手机号不能为空', trigger: 'blur' }],
      }
    }
  },
  created() {
    this.getList()
  },
  methods: {
    isImg(str) {
      return /\.(png|jpg|jpeg)$/i.test(str);
    },
    handlerZhifa() {
      this.$router.push({ path: '/tb-config/tb-zhifajiancha', query: { pid: 1 } })
    },
    handleClick(tab, event) {
      console.log(tab, event);
    },
    /** 查询参数列表 */
    getList() {
      this.loading = true
      listTbTable(this.addDateRange(this.queryParams, this.dateRange)).then(response => {
        this.tbTableList = response.data.list
        this.total = response.data.count
        this.loading = false
      }
      )
    },
    // 取消按钮
    cancel() {
      this.open = false
      this.reset()
    },
    // 表单重置
    reset() {
      this.form = {

        id: undefined,
        phone: undefined,
        zuoyemianji: undefined,
        zuoyedizhi: undefined,
        suoshushequ: undefined,
        fabaofangName: undefined,
        fabaofangUser: undefined,
        fabaofangPhone: undefined,
        shigongfangName: undefined,
        shigongfangUser: undefined,
        shigongfangPhone: undefined,
        yingyezhizhao: undefined,
        farenid: undefined,
        anquanxvkezheng: undefined,
        shouquanweituozhu: undefined,
        fuzerenid: undefined,
        jiayishuangfangshigonghetong: undefined,
        anquanshengchanzerenbaoxian: undefined,
        status: undefined,
        remark: undefined,
      }
      this.resetForm('form')
    },

    getImgList: function () {
      this.form[this.fileIndex] = this.$refs['fileChoose'].resultList[0].fullUrl
    },
    fileClose: function () {
      this.fileOpen = false
    },
    // 关系
    // 文件
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageIndex = 1
      this.getList()
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.dateRange = []
      this.queryParams.status = "审核通过"
      this.resetForm('queryForm')
      this.handleQuery()
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset()
      this.open = true
      this.title = '添加TbTable'
      this.isEdit = false
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length !== 1
      this.multiple = !selection.length
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset()
      const id =
        row.id || this.ids
      getTbTable(id).then(response => {
        this.form = response.data
        this.open = true
        this.title = '人工编辑'
        this.isEdit = true
      })
    },
    /** 提交按钮 */
    submitForm: function () {
      this.$refs['form'].validate(valid => {
        if (valid) {
          if (this.form.id !== undefined) {
            updateTbTable(this.form).then(response => {
              if (response.code === 200) {
                this.msgSuccess(response.msg)
                this.open = false
                this.getList()
              } else {
                this.msgError(response.msg)
              }
            })
          } else {
            addTbTable(this.form).then(response => {
              if (response.code === 200) {
                this.msgSuccess(response.msg)
                this.open = false
                this.getList()
              } else {
                this.msgError(response.msg)
              }
            })
          }
        }
      })
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      var Ids = (row.id && [row.id]) || this.ids

      this.$confirm('是否确认删除编号为"' + Ids + '"的数据项?', '警告', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(function () {
        return delTbTable({ 'ids': Ids })
      }).then((response) => {
        if (response.code === 200) {
          this.msgSuccess(response.msg)
          this.open = false
          this.getList()
        } else {
          this.msgError(response.msg)
        }
      }).catch(function () {
      })
    }
  }
}
</script>
