<template>
  <BasicLayout>
    <template #wrapper>
      <el-card class="box-card">
        <el-form ref="queryForm" :model="queryParams" :inline="true" label-width="68px">
          <el-form-item label="手机号" label-width="100" prop="phone"><el-input v-model="queryParams.phone" placeholder="请输入手机号" clearable
              size="small" @keyup.enter.native="handleQuery" />
          </el-form-item>
          <el-form-item label="发包方名称" label-width="100" prop="fabaofangName"><el-input v-model="queryParams.fabaofangName"
              placeholder="请输入发包方名称" clearable size="small" @keyup.enter.native="handleQuery" />
          </el-form-item>
          <el-form-item label="发包方联系人" label-width="100" prop="fabaofangUser"><el-input v-model="queryParams.fabaofangUser"
              placeholder="请输入发包方联系人" clearable size="small" @keyup.enter.native="handleQuery" />
          </el-form-item>
          <el-form-item label="施工方名称" label-width="100" prop="shigongfangName"><el-input v-model="queryParams.shigongfangName"
              placeholder="请输入施工方名称" clearable size="small" @keyup.enter.native="handleQuery" />
          </el-form-item>
          <el-form-item label="施工方项目负责人" label-width="100" prop="shigongfangUser"><el-input v-model="queryParams.shigongfangUser"
              placeholder="请输入施工方项目负责人" clearable size="small" @keyup.enter.native="handleQuery" />
          </el-form-item>

          <el-form-item>
            <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
            <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
          </el-form-item>
        </el-form>

        <el-row :gutter="10" class="mb8">
          <el-col :span="1.5">
            <el-button v-permisaction="['admin:tbTable:add']" type="primary" icon="el-icon-plus" size="mini"
              @click="handleAdd">新增
            </el-button>
          </el-col>
          <el-col :span="1.5">
            <el-button v-permisaction="['admin:tbTable:edit']" type="success" icon="el-icon-edit" size="mini"
              :disabled="single" @click="handleUpdate">修改
            </el-button>
          </el-col>
          <el-col :span="1.5">
            <el-button v-permisaction="['admin:tbTable:remove']" type="danger" icon="el-icon-delete" size="mini"
              :disabled="multiple" @click="handleDelete">删除
            </el-button>
          </el-col>
        </el-row>

        <el-table v-loading="loading" :data="tbTableList" @selection-change="handleSelectionChange">
          <el-table-column type="selection" width="55" align="center" /><el-table-column label="手机号" align="center"
            prop="phone" :show-overflow-tooltip="true" /><el-table-column label="作业面积" align="center" prop="zuoyemianji"
            :show-overflow-tooltip="true" /><el-table-column label="作业地址" align="center" prop="zuoyedizhi"
            :show-overflow-tooltip="true" /><el-table-column label="所属社区" align="center" prop="suoshushequ"
            :show-overflow-tooltip="true" /><el-table-column label="发包方名称" align="center" prop="fabaofangName"
            :show-overflow-tooltip="true" /><el-table-column label="发包方联系人" align="center" prop="fabaofangUser"
            :show-overflow-tooltip="true" /><el-table-column label="发包方联系方式" align="center" prop="fabaofangPhone"
            :show-overflow-tooltip="true" /><el-table-column label="施工方名称" align="center" prop="shigongfangName"
            :show-overflow-tooltip="true" /><el-table-column label="施工方项目负责人" align="center" prop="shigongfangUser"
            :show-overflow-tooltip="true" /><el-table-column label="施工方联系方式" align="center" prop="shigongfangPhone"
            :show-overflow-tooltip="true" /><el-table-column label="审核状态" align="center" prop="status"
            :show-overflow-tooltip="true" /><el-table-column label="备注" align="center" prop="remark"
            :show-overflow-tooltip="true" />
          <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
            <template slot-scope="scope">
              <el-popconfirm class="delete-popconfirm" title="确认要修改吗?" confirm-button-text="修改"
                @confirm="handleUpdate(scope.row)">
                <el-button slot="reference" v-permisaction="['admin:tbTable:edit']" size="mini" type="text"
                  icon="el-icon-edit">修改
                </el-button>
              </el-popconfirm>
              <el-popconfirm class="delete-popconfirm" title="确认要删除吗?" confirm-button-text="删除"
                @confirm="handleDelete(scope.row)">
                <el-button slot="reference" v-permisaction="['admin:tbTable:remove']" size="mini" type="text"
                  icon="el-icon-delete">删除
                </el-button>
              </el-popconfirm>
            </template>
          </el-table-column>
        </el-table>

        <pagination v-show="total > 0" :total="total" :page.sync="queryParams.pageIndex"
          :limit.sync="queryParams.pageSize" @pagination="getList" />

        <!-- 添加或修改对话框 -->
        <el-dialog :title="title" :visible.sync="open" width="500px">
          <el-form ref="form" :model="form" :rules="rules" label-width="80px">

            <el-form-item label="手机号" prop="phone">
              <el-input v-model="form.phone" placeholder="手机号" />
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
            <el-form-item label="发包方名称" prop="fabaofangName">
              <el-input v-model="form.fabaofangName" placeholder="发包方名称" />
            </el-form-item>
            <el-form-item label="发包方联系人" prop="fabaofangUser">
              <el-input v-model="form.fabaofangUser" placeholder="发包方联系人" />
            </el-form-item>
            <el-form-item label="发包方联系方式" prop="fabaofangPhone">
              <el-input v-model="form.fabaofangPhone" placeholder="发包方联系方式" />
            </el-form-item>
            <el-form-item label="施工方名称" prop="shigongfangName">
              <el-input v-model="form.shigongfangName" placeholder="施工方名称" />
            </el-form-item>
            <el-form-item label="施工方项目负责人" prop="shigongfangUser">
              <el-input v-model="form.shigongfangUser" placeholder="施工方项目负责人" />
            </el-form-item>
            <el-form-item label="施工方联系方式" prop="shigongfangPhone">
              <el-input v-model="form.shigongfangPhone" placeholder="施工方联系方式" />
            </el-form-item>
            <el-form-item label="营业执照" prop="yingyezhizhao">
              <el-input v-model="form.yingyezhizhao" placeholder="营业执照" />
            </el-form-item>
            <el-form-item label="法人身份证号" prop="farenid">
              <el-input v-model="form.farenid" placeholder="法人身份证号" />
            </el-form-item>
            <el-form-item label="建筑企业资质安全生产许可证" prop="anquanxvkezheng">
              <el-input v-model="form.anquanxvkezheng" placeholder="建筑企业资质安全生产许可证" />
            </el-form-item>
            <el-form-item label="授权委托书" prop="shouquanweituozhu">
              <el-input v-model="form.shouquanweituozhu" placeholder="授权委托书" />
            </el-form-item>
            <el-form-item label="项目负责人身份证" prop="fuzerenid">
              <el-input v-model="form.fuzerenid" placeholder="项目负责人身份证" />
            </el-form-item>
            <el-form-item label="甲乙双方施工合同" prop="jiayishuangfangshigonghetong">
              <el-input v-model="form.jiayishuangfangshigonghetong" placeholder="甲乙双方施工合同" />
            </el-form-item>
            <el-form-item label="安全生产责任保险" prop="anquanshengchanzerenbaoxian">
              <el-input v-model="form.anquanshengchanzerenbaoxian" placeholder="安全生产责任保险" />
            </el-form-item>
            <el-form-item label="审核状态" prop="status">
              <el-input v-model="form.status" placeholder="审核状态" />
            </el-form-item>
            <el-form-item label="备注" prop="remark">
              <el-input v-model="form.remark" placeholder="备注" />
            </el-form-item>
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
      }
    }
  },
  created() {
    this.getList()
  },
  methods: {
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
        this.title = '修改TbTable'
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
