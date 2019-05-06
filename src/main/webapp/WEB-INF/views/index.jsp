<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>系统导引</title>
    <jsp:include page="/common/backend_common.jsp"/>
    <jsp:include page="/common/page.jsp"/>
</head>
<body class="no-skin" youdao="bind" style="background: white">
<input id="gritter-light" checked="" type="checkbox" class="ace ace-switch ace-switch-5"/>

<%--<div class="page-header">
    <h1>
        仿真管理
        <small>
            <i class="ace-icon fa fa-angle-double-right"></i>
            仿真实例创建
        </small>
    </h1>
</div>
<div class="main-content-inner">
    <div class="col-sm-3 light-green">
        <div class="table-header">
            部门列表&nbsp;&nbsp;
            <a class="green" href="#">
                <i class="ace-icon fa fa-plus-circle orange bigger-130 dept-add"></i>
            </a>
        </div>
        <div id="deptList">
        </div>
    </div>
    <div class="col-sm-9">
        <div class="col-xs-12">
            <div class="table-header">
                用户列表&nbsp;&nbsp;
                <a class="green" href="#">
                    <i class="ace-icon fa fa-plus-circle orange bigger-130 user-add"></i>
                </a>
            </div>
            <div>
                <div id="dynamic-table_wrapper" class="dataTables_wrapper form-inline no-footer">
                    <div class="row">
                        <div class="col-xs-6">
                            <div class="dataTables_length" id="dynamic-table_length"><label>
                                展示
                                <select id="pageSize" name="dynamic-table_length" aria-controls="dynamic-table" class="form-control input-sm">
                                    <option value="10">10</option>
                                    <option value="25">25</option>
                                    <option value="50">50</option>
                                    <option value="100">100</option>
                                </select> 条记录 </label>
                            </div>
                        </div>
                    </div>
                    <table id="dynamic-table" class="table table-striped table-bordered table-hover dataTable no-footer" role="grid"
                           aria-describedby="dynamic-table_info" style="font-size:14px">
                        <thead>
                        <tr role="row">
                            <th tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1">
                                姓名
                            </th>
                            <th tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1">
                                所属部门
                            </th>
                            <th tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1">
                                邮箱
                            </th>
                            <th tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1">
                                电话
                            </th>
                            <th tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1">
                                状态
                            </th>
                            <th class="sorting_disabled" rowspan="1" colspan="1" aria-label=""></th>
                        </tr>
                        </thead>
                        <tbody id="userList"></tbody>
                    </table>
                    <div class="row" id="userPage">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>--%>

<div class="page-header">
    <h1>
        仿真结果模块
        <small>
            <i class="ace-icon fa fa-angle-double-right"></i>
            结果展示
        </small>
    </h1>
</div><!-- /.page-header -->

<div class="row">
    <div class="col-xs-12">
        <div class="widget-box">
            <div class="widget-header widget-header-blue widget-header-flat">
                <h4 class="widget-title lighter">出清电价迭代曲线显示</h4>
            </div>
            <div class="step-content pos-rel">
                <div class="step-pane active" data-step="1">
                    <h3 class="lighter block green"></h3>
                    <form class="form-horizontal" id="sample-form">
                        <div class="form-group has-info">
                            <label for="inputSuccess" class="col-xs-12 col-sm-3 col-md-3 control-label no-padding-right">仿真名称</label>

                            <div class="col-xs-12 col-sm-5">
																	<span class="block input-icon input-icon-right">
																		<input type="text" id="inputInfo" class="width-100" />

																		<i class="ace-icon fa fa-info-circle"></i>
																	</span>

                            </div>
                            <div class="help-block col-xs-12 col-sm-reset inline"></div>

                        </div>
                        <div class="form-group has-info">
                            <label for="inputSuccess" class="col-xs-12 col-sm-3 col-md-3 control-label no-padding-right">仿真目标</label>

                            <div class="col-xs-12 col-sm-5">
																	<span class="block input-icon input-icon-right">
																		<input type="text" id="inputInfo" class="width-100" />

																		<i class="ace-icon fa fa-info-circle"></i>
																	</span>

                            </div>
                            <div class="help-block col-xs-12 col-sm-reset inline"></div>

                        </div>
                        <div class="form-group has-info">
                            <label for="inputSuccess" class="col-xs-12 col-sm-3 col-md-3 control-label no-padding-right">仿真描述</label>

                            <div class="col-xs-12 col-sm-5">

                                <textarea class="form-control" id="form-field-8" placeholder="仿真描述"></textarea>




                            </div>
                            <div class="help-block col-xs-12 col-sm-reset inline"></div>

                        </div>
                        <div class="form-group has-info">
                            <label for="inputSuccess" class="col-xs-12 col-sm-3 col-md-3 control-label no-padding-right">仿真描述</label>

                            <div class="col-xs-12 col-sm-5">

                                <textarea class="form-control" id="form-field-8" placeholder="仿真描述"></textarea>




                            </div>
                            <div class="help-block col-xs-12 col-sm-reset inline"></div>

                        </div>
                        <div class="form-group has-info">
                            <label for="inputSuccess" class="col-xs-12 col-sm-3 col-md-3 control-label no-padding-right">仿真描述</label>

                            <div class="col-xs-12 col-sm-5">

                                <textarea class="form-control" id="form-field-8" placeholder="仿真描述"></textarea>




                            </div>
                            <div class="help-block col-xs-12 col-sm-reset inline"></div>

                        </div>
                    </form>
                    <div class="form-group has-info">
                        <button class="btn btn-info" id="bootbox-confirm" style="margin-left:700px;width:160px;">查看具体成交结果</button>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- PAGE CONTENT BEGINS -->





    <script type="text/javascript">
        var $path_assets = "../assets";//this will be used in loading jQuery UI if needed!
    </script>

    <!-- PAGE CONTENT ENDS -->
</div><!-- /.col -->
</div><!-- /.row -->


<%--下面是javascript部分--%>
<script type="application/javascript">
    $(function() {

    })
</script>
</body>
</html>
