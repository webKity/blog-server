/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-07-05 18:05:55
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `blog`
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `create_time` varchar(30) NOT NULL,
  `updata_time` varchar(30) NOT NULL,
  `author` varchar(50) NOT NULL,
  `see` int(10) unsigned NOT NULL DEFAULT '0',
  `like` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('29', '我的测试数据', '我的测试数据', '1', '1492582386947', '1492582386947', '52', '0', '0');
INSERT INTO `blog` VALUES ('30', '我的测试数据', '我的测试数据', '0', '1492582403432', '1492582403432', '52', '0', '0');
INSERT INTO `blog` VALUES ('31', '我的测试数据', '我的测试数据', '0', '1492582423284', '1492582423284', '52', '0', '0');
INSERT INTO `blog` VALUES ('32', '我的测试数据', '我的测试数据', '0', '1492582456211', '1492582456211', '52', '0', '0');
INSERT INTO `blog` VALUES ('33', '我的测试数据', '我的测试数据', '0', '1492582472654', '1492582472654', '52', '0', '0');
INSERT INTO `blog` VALUES ('34', '我的测试数据', '我的测试数据', '0', '1492582491501', '1492582491501', '52', '0', '0');
INSERT INTO `blog` VALUES ('35', '我的测试数据', '我的测试数据', '0', '1492582507967', '1492582507967', '52', '0', '0');
INSERT INTO `blog` VALUES ('36', 'console.log(user)', '<p>console.log(user)</p><p><br></p>', '0', '1493086657307', '1493086657307', '52', '0', '0');
INSERT INTO `blog` VALUES ('37', '得最惨的', '<p>得最惨的</p><p><br></p>', '0', '1493089110029', '1493089110029', '52', '0', '0');
INSERT INTO `blog` VALUES ('38', '按时打算的撒', '<p>按时打算的撒</p><p><br></p>', '0', '1493089123165', '1493089123165', '52', '0', '0');
INSERT INTO `blog` VALUES ('39', '按时打算的撒', '<p>按时打算的撒</p><p><br></p>', '0', '1493089126749', '1493089126749', '52', '0', '0');
INSERT INTO `blog` VALUES ('40', '按时打算的撒', '<p>按时打算的撒</p><p><br></p>', '2', '1493089128885', '1493089128885', '52', '0', '0');
INSERT INTO `blog` VALUES ('41', '按时打算的撒', '<p>按时打算的撒</p><p><br></p>', '0', '1493089135209', '1493089135209', '52', '0', '0');
INSERT INTO `blog` VALUES ('42', 'params', '<p>params</p><p><br></p>', '0', '1493089271229', '1493089271229', '52', '0', '0');
INSERT INTO `blog` VALUES ('43', 'asdasda', '<p>asdadada</p>', '0', '1493089320103', '1493089320103', '52', '0', '0');
INSERT INTO `blog` VALUES ('44', '问答', '<p>问答</p><p><br></p>', '1', '1493090210069', '1493090210069', '52', '0', '0');
INSERT INTO `blog` VALUES ('45', '问答asd', '<p>问答</p><p>&nbsp;阿斯顿</p>', '1', '1493090217515', '1493090217515', '52', '0', '0');
INSERT INTO `blog` VALUES ('46', 'MySQL', '<p>在 Web 应用方面 MySQL 是最常见，最好的关系型数据库之一。非常多网站都选择 MySQL 作为网站数据库。本篇文档介绍了如何使用 Egg 框架及其插件来访问数据库。</p><h2><b><font size=\"6\">egg-mysql</font></b></h2><p>我们提供了&nbsp;<a href=\"https://github.com/eggjs/egg-mysql\" target=\"_blank\">egg-mysql</a>&nbsp;插件来访问 MySQL 数据库。这个插件既可以访问普通的 MySQL 数据库，也可以访问基于 MySQL 协议的在线数据库服务。</p><h3><b><font size=\"5\">安装与配置</font></b></h3><p>安装对应的插件&nbsp;<a href=\"https://github.com/eggjs/egg-mysql\" target=\"_blank\">egg-mysql</a>&nbsp;：</p><pre style=\"max-width:100%;overflow-x:auto;\"><code class=\"javascript hljs\" codemark=\"1\">$ npm i --save egg-mysql</code></pre><p>开启插件：</p><pre style=\"max-width:100%;overflow-x:auto;\"><code class=\"javascript hljs\" codemark=\"1\"><span class=\"hljs-comment\">// config/plugin.js</span>\nexports.mysql = {\n  enable: <span class=\"hljs-literal\">true</span>,\n  package: <span class=\"hljs-string\">\'egg-mysql\'</span>,\n};</code></pre><p>在&nbsp;<code>config/config.${env}.js</code>&nbsp;配置各个环境的数据库连接信息。</p><h4><b><font size=\"4\">单数据源</font></b></h4><p>如果我们的应用只需要访问一个 MySQL 数据库实例，可以如下配置：</p><pre style=\"max-width:100%;overflow-x:auto;\"><code class=\"javascript hljs\" codemark=\"1\"><span class=\"hljs-comment\">// config/config.${env}.js</span>\nexports.mysql = {\n  <span class=\"hljs-comment\">// 单数据库信息配置</span>\n  client: {\n    <span class=\"hljs-comment\">// host</span>\n    host: <span class=\"hljs-string\">\'mysql.com\'</span>,\n    <span class=\"hljs-comment\">// 端口号</span>\n    port: <span class=\"hljs-string\">\'3306\'</span>,\n    <span class=\"hljs-comment\">// 用户名</span>\n    user: <span class=\"hljs-string\">\'test_user\'</span>,\n    <span class=\"hljs-comment\">// 密码</span>\n    password: <span class=\"hljs-string\">\'test_password\'</span>,\n    <span class=\"hljs-comment\">// 数据库名</span>\n    database: <span class=\"hljs-string\">\'test\'</span>,\n  },\n  <span class=\"hljs-comment\">// 是否加载到 app 上，默认开启</span>\n  app: <span class=\"hljs-literal\">true</span>,\n  <span class=\"hljs-comment\">// 是否加载到 agent 上，默认关闭</span>\n  agent: <span class=\"hljs-literal\">false</span>,\n};</code></pre><p>使用方式：</p><pre style=\"max-width:100%;overflow-x:auto;\"><code class=\"javascript hljs\" codemark=\"1\"><span class=\"hljs-keyword\">yield</span> app.mysql.query(sql, values); <span class=\"hljs-comment\">// 单实例可以直接通过 app.mysql 访问</span></code></pre><p><br></p>', '0', '1493103270742', '1493103270742', '52', '0', '0');
INSERT INTO `blog` VALUES ('47', 'egg-mysql', '<p></p><h2>egg-mysql</h2><p><br></p>', '1', '1493103349159', '1493103349159', '52', '0', '0');
INSERT INTO `blog` VALUES ('48', '好用不', '<table class=\"\"><tbody><tr><td>&nbsp;序号</td><td>&nbsp;表格</td><td>&nbsp;好用不</td><td>&nbsp;好用不</td><td>&nbsp;好用不</td><td>&nbsp;好用不</td><td>&nbsp;好用不</td><td>&nbsp;好用不</td><td>&nbsp;好用不</td><td>&nbsp;好用不</td><td>&nbsp;好用不</td><td>&nbsp;好用不好用不好用不好用不好用不好用不好用不好用不好用不好用不</td></tr><tr><td>&nbsp;1</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;2</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;3</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;4</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table><p><br></p>', '2', '1493103461852', '1493103461852', '52', '0', '0');
INSERT INTO `blog` VALUES ('49', 'markdown', '```javascript\n$(document).ready(function () {\n    alert(\'hello world\');\n});\n```', '0', '1493104822753', '1493104822753', '52', '0', '0');
INSERT INTO `blog` VALUES ('50', 'markdown', '```javascript\n$(document).ready(function () {\n    alert(\'hello world\');\n});\n```', '0', '1493104854738', '1493104854738', '52', '0', '0');
INSERT INTO `blog` VALUES ('51', 'asasasas', '```javascript\n$(document).ready(function () {\n    alert(\'hello world\');\n});\n```', '0', '1493104917450', '1493104917450', '52', '0', '0');
INSERT INTO `blog` VALUES ('52', 'markdown', '<pre class=\"hljs\"><code class=\"javascript\">$(<span class=\"hljs-built_in\">document</span>).ready(<span class=\"hljs-function\"><span class=\"hljs-keyword\">function</span> (<span class=\"hljs-params\"></span>) </span>{\n    alert(<span class=\"hljs-string\">\'hello world\'</span>);\n});\n</code></pre>\n', '0', '1493105611682', '1493105611682', '52', '0', '0');
INSERT INTO `blog` VALUES ('53', '我的markdown', '<pre class=\"hljs\"><code class=\"javascript\">$(<span class=\"hljs-built_in\">document</span>).ready(<span class=\"hljs-function\"><span class=\"hljs-keyword\">function</span> (<span class=\"hljs-params\"></span>) </span>{\n    alert(<span class=\"hljs-string\">\'hello world\'</span>);\n});\n</code></pre>\n', '0', '1493105802590', '1493105802590', '52', '0', '0');
INSERT INTO `blog` VALUES ('54', '什么玩意', '<pre class=\"hljs\"><code class=\"javascript\">$(<span class=\"hljs-built_in\">document</span>).ready(<span class=\"hljs-function\"><span class=\"hljs-keyword\">function</span> (<span class=\"hljs-params\"></span>) </span>{\n    alert(<span class=\"hljs-string\">\'hello world\'</span>);\n});\n</code></pre>\n', '0', '1493105825009', '1493105825009', '52', '0', '0');
INSERT INTO `blog` VALUES ('55', '```javascript $(document).ready(function () {', '<pre class=\"hljs\"><code class=\"javascript\">$(<span class=\"hljs-built_in\">document</span>).ready(<span class=\"hljs-function\"><span class=\"hljs-keyword\">function</span> (<span class=\"hljs-params\"></span>) </span>{\n    alert(<span class=\"hljs-string\">\'hello world\'</span>);\n});\n</code></pre>\n', '0', '1493105840129', '1493105840129', '52', '0', '0');
INSERT INTO `blog` VALUES ('56', '         this.$tip(\'发布成功！\')', '<pre><code>    this.$tip(\'发布成功！\')</code></pre>\n', '0', '1493105849482', '1493105849482', '52', '0', '0');
INSERT INTO `blog` VALUES ('57', 'markdown语法解析', '<p><strong>粗体</strong><br />\n<strong>粗体</strong></p>\n<p><em>斜体</em><br />\n<em>斜体</em></p>\n<h1>一级标题</h1>\n<h2>二级标题</h2>\n<h3>三级标题</h3>\n<h4>四级标题</h4>\n<h5>五级标题</h5>\n<h6>六级标题</h6>\n<hr />\n<hr />\n<p>===<br />\n上下角标</p>\n<p>上角标 x<sup>2</sup><br />\n下角标 H<sub>2</sub>0<br />\n下划线 中划线</p>\n<p><ins>下划线</ins><br />\n<s>中划线</s><br />\n标记</p>\n<p><mark>标记</mark><br />\n段落引用</p>\n<blockquote>\n<p>一级</p>\n<blockquote>\n<p>二级</p>\n<blockquote>\n<p>三级<br />\n…<br />\n列表</p>\n</blockquote>\n</blockquote>\n</blockquote>\n<h2>有序列表<br />\n1.<br />\n2.<br />\n3.<br />\n…<br />\n无序列表</h2>\n<ul>\n<li></li>\n</ul>\n<p>…<br />\n链接</p>\n<p><a href=\"www.baidu.com\">链接</a>![](<br />\n代码段落</p>\n<pre class=\"hljs\"><code>代码段落\n``)`\n` 代码块 `\n表格(table)\n\n| 标题1 | 标题2 | 标题3 |\n| :--  | :--: | ----: |\n| 左对齐 | 居中 | 右对齐 |\n| ---------------------- | ------------- | ----------------- |\n标题1	标题2	标题3\n左对齐	居中	右对齐\n----------------------	-------------	-----------------\n脚注(footnote)\n\nhello[^hello]\n表情(emoji)\n\n参考网站https://www.webpagefx.com/tools/emoji-cheat-sheet/\n:laughing:\n:blush:\n:smiley:\n:)\n:(\n...</code></pre>\n', '0', '1493106487207', '1493106487207', '52', '0', '0');
INSERT INTO `blog` VALUES ('58', '测试图片', '<p><img src=\"http://tse3.mm.bing.net/th?id=OIP.zTj2bKQO2bjx2-tCajmBZwDZEs&amp;w=123&amp;h=170&amp;c=7&amp;qlt=90&amp;o=4&amp;pid=1.7\" alt=\"\" /></p>\n', '0', '1493106581193', '1493106581193', '52', '0', '0');
INSERT INTO `blog` VALUES ('59', 'ceshi', '<p>console.log(‘cyq’)</p>\n', '0', '1493109085125', '1493109085125', '52', '0', '0');
INSERT INTO `blog` VALUES ('60', '时间测试', '<p>时间测试</p>\n', '0', '1493114753059', '1493114753059', '52', '0', '0');
INSERT INTO `blog` VALUES ('61', '手机文章', '<p>我的手机大不了不玩了，好好学习天天向上</p>\n', '0', '1493179510382', '1493179510382', '52', '0', '0');
INSERT INTO `blog` VALUES ('62', 'markdown语法（正式）', '<h4>粗体</h4>\n<pre class=\"hljs\"><code>**粗体**\n__粗体__\n</code></pre>\n<h4>斜体</h4>\n<pre class=\"hljs\"><code>*斜体*\n_斜体_\n</code></pre>\n<h4>标题</h4>\n<pre class=\"hljs\"><code># 一级标题 #\n## 二级标题 ##\n### 三级标题 ###\n#### 四级标题 ####\n##### 五级标题 #####\n###### 六级标题 ######\n</code></pre>\n<h4>分割线</h4>\n<pre class=\"hljs\"><code>***\n---\n===\n</code></pre>\n<h4>上下角标</h4>\n<pre class=\"hljs\"><code>上角标 x^2^\n下角标 H~2~0\n</code></pre>\n<h4>下划线 中划线</h4>\n<pre class=\"hljs\"><code>++下划线++\n~~中划线~~\n</code></pre>\n<h4>标记</h4>\n<pre class=\"hljs\"><code>==标记==\n</code></pre>\n<h4>段落引用</h4>\n<pre class=\"hljs\"><code>&gt; 一级\n&gt;&gt; 二级\n&gt;&gt;&gt; 三级\n...\n</code></pre>\n<h4>列表</h4>\n<pre class=\"hljs\"><code>有序列表\n1.\n2.\n3.\n...\n无序列表\n-\n-\n...\n</code></pre>\n<h4>链接</h4>\n<pre class=\"hljs\"><code>[链接](www.baidu.com)\n![图片描述](www.image.com)\n</code></pre>\n<h4>表格(table)</h4>\n<pre class=\"hljs\"><code>| 标题1 | 标题2 | 标题3 |\n| :--  | :--: | ----: |\n| 左对齐 | 居中 | 右对齐 |\n| ---------------------- | ------------- | ----------------- |\n</code></pre>\n<h4>脚注(footnote)</h4>\n<pre class=\"hljs\"><code>hello[^hello]\n</code></pre>\n<h4>表情(emoji)</h4>\n<pre class=\"hljs\"><code>:laughing:\n:blush:\n:smiley:\n:)\n:(\n...\n</code></pre>\n', '0', '1493186988117', '1493186988117', '52', '0', '0');
INSERT INTO `blog` VALUES ('63', '我的', '<p>** 手机粗体 **</p>\n', '0', '1493187285190', '1493187285190', '52', '0', '0');
INSERT INTO `blog` VALUES ('64', '手机粗体', '<p><strong>粗体</strong></p>\n', '0', '1493187312073', '1493187312073', '52', '0', '0');
INSERT INTO `blog` VALUES ('65', '我的测试tip', '<p><em>我的测试tip</em></p>\n', '0', '1493187728502', '1493187728502', '52', '0', '0');
INSERT INTO `blog` VALUES ('66', 'asdadsa', '<blockquote>\n<p>asdasdsad</p>\n</blockquote>\n', '0', '1493187879812', '1493187879812', '52', '0', '0');
INSERT INTO `blog` VALUES ('67', '标题党', '<p>我的手机发布文章不是很好用啊</p>\n', '0', '1493188149171', '1493188149171', '52', '0', '0');
INSERT INTO `blog` VALUES ('68', '测试标题长度测试标题长度测试标题长度测试标题长度测试标题长度测试标题长度测试标题长度测试标', '<p>测试标题长度测试标题长度测试标题长度测试标题长度</p>\n', '0', '1493188707611', '1493188707611', '52', '0', '0');

-- ----------------------------
-- Table structure for `collection`
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `blog_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collection
-- ----------------------------

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_id` int(10) NOT NULL,
  `to_id` int(10) NOT NULL,
  `blog_id` int(10) NOT NULL,
  `comment` text NOT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for `like`
-- ----------------------------
DROP TABLE IF EXISTS `like`;
CREATE TABLE `like` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `blog_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of like
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `headUrl` varchar(100) DEFAULT '',
  `name` varchar(30) NOT NULL,
  `account` varchar(30) CHARACTER SET latin1 NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 NOT NULL,
  `create_time` varchar(30) NOT NULL,
  `update_time` varchar(30) NOT NULL,
  `point` int(10) DEFAULT '0',
  `sign` varchar(50) DEFAULT '',
  `address` varchar(50) DEFAULT '',
  `website` varchar(100) DEFAULT '',
  `token` varchar(256) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('52', '', 'chenyq', 'chenyongqin1@qq.com', '123456', '1493006543783', '1493006543783', '0', '', '', '', '');
