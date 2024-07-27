
<template>
    <BasicLayout>
        <template #wrapper>
            <el-card class="box-card">
                <el-form ref="queryForm" :model="queryParams" :inline="true" label-width="68px">
                    <el-form-item label="名称" prop="uid"><el-input v-model="queryParams.uid" placeholder="请输入名称" clearable
                                              size="small" @keyup.enter.native="handleQuery"/>
                            </el-form-item>
                        <el-form-item label="审批状态" prop="status"><el-input v-model="queryParams.status" placeholder="请输入审批状态" clearable
                                              size="small" @keyup.enter.native="handleQuery"/>
                            </el-form-item>
                        <el-form-item label="审批备注原因" prop="statusText"><el-input v-model="queryParams.statusText" placeholder="请输入审批备注原因" clearable
                                              size="small" @keyup.enter.native="handleQuery"/>
                            </el-form-item>
                        
                    <el-form-item>
                        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
                        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
                    </el-form-item>
                </el-form>

                <el-row :gutter="10" class="mb8">
                    <el-col :span="1.5">
                        <el-button
                                v-permisaction="['admin:tbDemoCopy:add']"
                                type="primary"
                                icon="el-icon-plus"
                                size="mini"
                                @click="handleAdd"
                        >新增
                        </el-button>
                    </el-col>
                    <el-col :span="1.5">
                        <el-button
                                v-permisaction="['admin:tbDemoCopy:edit']"
                                type="success"
                                icon="el-icon-edit"
                                size="mini"
                                :disabled="single"
                                @click="handleUpdate"
                        >修改
                        </el-button>
                    </el-col>
                    <el-col :span="1.5">
                        <el-button
                                v-permisaction="['admin:tbDemoCopy:remove']"
                                type="danger"
                                icon="el-icon-delete"
                                size="mini"
                                :disabled="multiple"
                                @click="handleDelete"
                        >删除
                        </el-button>
                    </el-col>
                </el-row>

                <el-table v-loading="loading" :data="tbDemoCopyList" @selection-change="handleSelectionChange">
                    <el-table-column type="selection" width="55" align="center"/><el-table-column label="名称" align="center" prop="uid"
                                                 :show-overflow-tooltip="true"/><el-table-column label="data1" align="center" prop="data1"
                                                 :show-overflow-tooltip="true"/><el-table-column label="data2" align="center" prop="data2"
                                                 :show-overflow-tooltip="true"/><el-table-column label="data3" align="center" prop="data3"
                                                 :show-overflow-tooltip="true"/><el-table-column label="data4" align="center" prop="data4"
                                                 :show-overflow-tooltip="true"/><el-table-column label="审批状态" align="center" prop="status"
                                                 :show-overflow-tooltip="true"/><el-table-column label="审批备注原因" align="center" prop="statusText"
                                                 :show-overflow-tooltip="true"/>
                    <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
                        <template slot-scope="scope">
                         <el-popconfirm
                           class="delete-popconfirm"
                           title="确认要修改吗?"
                           confirm-button-text="修改"
                           @confirm="handleUpdate(scope.row)"
                         >
                           <el-button
                             slot="reference"
                             v-permisaction="['admin:tbDemoCopy:edit']"
                             size="mini"
                             type="text"
                             icon="el-icon-edit"
                           >修改
                           </el-button>
                         </el-popconfirm>
                         <el-popconfirm
                            class="delete-popconfirm"
                            title="确认要删除吗?"
                            confirm-button-text="删除"
                            @confirm="handleDelete(scope.row)"
                         >
                            <el-button
                              slot="reference"
                              v-permisaction="['admin:tbDemoCopy:remove']"
                              size="mini"
                              type="text"
                              icon="el-icon-delete"
                            >删除
                            </el-button>
                         </el-popconfirm>
                        </template>
                    </el-table-column>
                </el-table>

                <pagination
                        v-show="total>0"
                        :total="total"
                        :page.sync="queryParams.pageIndex"
                        :limit.sync="queryParams.pageSize"
                        @pagination="getList"
                />

                <!-- 添加或修改对话框 -->
                <el-dialog :title="title" :visible.sync="open" width="500px">
                    <el-form ref="form" :model="form" :rules="rules" label-width="80px">
                        
                                    <el-form-item label="名称" prop="uid">
                                        <el-input v-model="form.uid" placeholder="名称"
                                                      />
                                    </el-form-item>
                                    <el-form-item label="data1" prop="data1">
                                        <el-input v-model="form.data1" placeholder="data1"
                                                      />
                                    </el-form-item>
                                    <el-form-item label="data2" prop="data2">
                                        <el-input v-model="form.data2" placeholder="data2"
                                                      />
                                    </el-form-item>
                                    <el-form-item label="data3" prop="data3">
                                        <el-input v-model="form.data3" placeholder="data3"
                                                      />
                                    </el-form-item>
                                    <el-form-item label="data4" prop="data4">
                                        <el-input v-model="form.data4" placeholder="data4"
                                                      />
                                    </el-form-item>
                                    <el-form-item label="审批状态" prop="status">
                                        <el-input v-model="form.status" placeholder="审批状态"
                                                      />
                                    </el-form-item>
                                    <el-form-item label="审批备注原因" prop="statusText">
                                        <el-input v-model="form.statusText" placeholder="审批备注原因"
                                                      />
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
    import {addTbDemoCopy, delTbDemoCopy, getTbDemoCopy, listTbDemoCopy, updateTbDemoCopy} from '@/api/admin/tb-demo-copy'
    
    export default {
        name: 'TbDemoCopy',
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
                tbDemoCopyList: [],
                
                // 关系表类型
                
                // 查询参数
                queryParams: {
                    pageIndex: 1,
                    pageSize: 10,
                    uid:undefined,
                    status:undefined,
                    statusText:undefined,
                    
                },
                // 表单参数
                form: {
                },
                // 表单校验
                rules: {uid:  [ {required: true, message: '名称不能为空', trigger: 'blur'} ],
                status:  [ {required: true, message: '审批状态不能为空', trigger: 'blur'} ],
                statusText:  [ {required: true, message: '审批备注原因不能为空', trigger: 'blur'} ],
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
                listTbDemoCopy(this.addDateRange(this.queryParams, this.dateRange)).then(response => {
                        this.tbDemoCopyList = response.data.list
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
                uid: undefined,
                data1: undefined,
                data2: undefined,
                data3: undefined,
                data4: undefined,
                status: undefined,
                statusText: undefined,
            }
                this.resetForm('form')
            },
            getImgList: function() {
              this.form[this.fileIndex] = this.$refs['fileChoose'].resultList[0].fullUrl
            },
            fileClose: function() {
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
                this.title = '添加TbDemoCopy'
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
                getTbDemoCopy(id).then(response => {
                    this.form = response.data
                    this.open = true
                    this.title = '修改TbDemoCopy'
                    this.isEdit = true
                })
            },
            /** 提交按钮 */
            submitForm: function () {
                this.$refs['form'].validate(valid => {
                    if (valid) {
                        if (this.form.id !== undefined) {
                            updateTbDemoCopy(this.form).then(response => {
                                if (response.code === 200) {
                                    this.msgSuccess(response.msg)
                                    this.open = false
                                    this.getList()
                                } else {
                                    this.msgError(response.msg)
                                }
                            })
                        } else {
                            addTbDemoCopy(this.form).then(response => {
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
                      return delTbDemoCopy( { 'ids': Ids })
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
