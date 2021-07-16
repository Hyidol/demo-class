# demo-class

### 项目简介

- 项目名：班级管理系统。
- 备注：用于学习mvc的前缀练习小项目。

### 功能列表

| 功能                               | 实现                                                         |
| :--------------------------------- | :----------------------------------------------------------- |
| 登录（带验证用户名6位，密码6-9位） | 未登录状态下，所有的链接皆跳转至登录界面。<br />已登录状态下，可以正常访问班级/学生管理，页面底部显示出登录的用户名。 |

| 功能      | 实现                                                         |
| :-------- | :----------------------------------------------------------- |
| 班级-列表 | 点击左侧导航“班级列表”，右侧框中出现班级列表。               |
| 班级-添加 | 点击右侧左上角添加班级，可增加期望名字的班级，班级编号由数据库顺延。 |
| 班级-修改 | 点击修改，跳转至修改班级页面，默认显示该班级的编号和现名字，但仅可修改班级的名字，编号只可读。 |
| 班级-删除 | 点击删除，如果该班级存在学生，则删除失败；如果该班级不存在学生，页面实时可刷新出新的学生列表。 |
| 班级-查询 | 点击查询，跳转至该班级的学生列表。                           |

| 功能      | 实现                                                         |
| :-------- | :----------------------------------------------------------- |
| 学生列表  | 点击左侧导航“学生列表”，右侧框中显示出学生列表。             |
| 学生-添加 | 点击右侧左上角添加学生，可增加指定姓名、班级的学生，学生编号由数据库顺延。 |
| 学生-修改 | 点击修改，可修改学生的姓名、班级，如果该班级不存在，则修改失败；提交之后返回更新的学生列表页面。 |
| 学生-删除 | 点击删除，可删除指定学生。                                   |

### 更新日志

#### v1.0.0

##### 2021.7.14-2021.7.16

- 着手开发，使用do完成基本功能。

- 上传GitHub1.0.0版本。

- 上传sql脚本。
