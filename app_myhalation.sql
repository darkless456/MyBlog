-- phpMyAdmin SQL Dump
-- version 3.3.8.1
-- http://www.phpmyadmin.net
--
-- 主机: w.rdc.sae.sina.com.cn:3307
-- 生成日期: 2016 年 03 月 25 日 11:17
-- 服务器版本: 5.6.23
-- PHP 版本: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `app_myhalation`
--

-- --------------------------------------------------------

--
-- 表的结构 `essaybook`
--

CREATE TABLE IF NOT EXISTS `essaybook` (
  `eid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL DEFAULT '',
  `essay` longtext NOT NULL,
  `dilivery_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `essaybook`
--

INSERT INTO `essaybook` (`eid`, `title`, `essay`, `dilivery_time`) VALUES
(4, 'Intro for this site', '&lt;p&gt;Hi, everyone who come to Snow Halation, I&amp;#39;m Kevin, was the Snow Halation&amp;#39;s owner, Welcome to you!&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;I&amp;rsquo;m a beginner of front web development, set up the blog in order to prove my abilities, about JavaScript, CSS, HTML5 and Python. &amp;nbsp;I will write down what I has learned from study, example some small skills, basic theory and so on. &amp;nbsp;Beyond that, I also record inspiration in daily life or some interesting things.&amp;nbsp; If want to contact me, sent e-mail to &lt;a href=&quot;mailto:narcissu456@gmail.com&quot;&gt;narcissu456@gmail.com&lt;/a&gt; is a good method, I glad to chat with you.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;The articles of Snow Halation are written by myself, if you like some of them, you can transmit them everywhere but business.&amp;nbsp; Also welcome to visite &lt;a href=&quot;https://github.com/darkless456/MyBlog&quot; target=&quot;_blank&quot;&gt;my git repo&lt;/a&gt; to communication or commit your issue.&lt;/p&gt;', 1452220465),
(2, 'My opinion of python', '&lt;p&gt;When I know Python, compact syntax and elegant writing style beyond what I think. Because the program languages what I know and use ,like C, C++, have strict and complex syntax, but are short of writing style, they have stronger functions, if you see the codes written by them after a long time, clearly see them may isn&amp;rsquo;t easy.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Python is good to read, because it has strict writing style, make reading it more easily, meanwhile, it looks more beautifully.&lt;/p&gt;', 1452219760),
(3, 'Charming javascript for program world', '&lt;p&gt;My JavaScript learning began in two months ago, erenow just know this program language often is used for website design, especially for dynamic effects in the web.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;JavaScript is amazing language, one of most popular in front web design. It already contain many of unique features, for example Closure, Prototype Channing, this pointer. Cooperate with HTML5, CSS3 these newest technology, making a magnificent web for people. Also JavaScript can use in other areas, like node.js, games developing, password checking and so on.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;I wish I can communicate with everyone who like JavaScript, even beginner. Making progresses together is very glad experience.&lt;/p&gt;', 1452219926);

-- --------------------------------------------------------

--
-- 表的结构 `jsbook`
--

CREATE TABLE IF NOT EXISTS `jsbook` (
  `jid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL DEFAULT '',
  `essay` longtext NOT NULL,
  `dilivery_time` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`jid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `jsbook`
--

INSERT INTO `jsbook` (`jid`, `title`, `essay`, `dilivery_time`) VALUES
(2, 'BOM操作', '&lt;p&gt;Previous&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;1. Javascript 返回上一页history.go(-1), 返回两个页面: history.go(-2);&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;2. history.back().&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;3. window.history.forward()返回下一页&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;4. window.history.go(返回第几页,也可以使用访问过的URL)&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;例:&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;lt;a href=&amp;quot;javascript:history.go(-1);&amp;quot;&amp;gt;向上一页&amp;lt;/a&amp;gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Page go to&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;onclick=&amp;quot;window.location.href=&amp;#39;list.aspx&amp;#39;&amp;quot;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Page refresh&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;1&amp;nbsp;&amp;nbsp;&amp;nbsp; history.go(0)&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;2&amp;nbsp;&amp;nbsp;&amp;nbsp; location.reload()&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;3&amp;nbsp;&amp;nbsp;&amp;nbsp; location=location&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;4&amp;nbsp;&amp;nbsp;&amp;nbsp; location.assign(location)&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;5&amp;nbsp;&amp;nbsp;&amp;nbsp; document.execCommand(&amp;#39;Refresh&amp;#39;)&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;6&amp;nbsp;&amp;nbsp;&amp;nbsp; window.navigate(location)&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;7&amp;nbsp;&amp;nbsp;&amp;nbsp; location.replace(location)&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;8&amp;nbsp;&amp;nbsp;&amp;nbsp; document.URL=location.href&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Page auto refresh&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;1.页面自动刷新：把如下代码加入&amp;lt;head&amp;gt;区域中&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;lt;meta http-equiv=&amp;quot;refresh&amp;quot; content=&amp;quot;20&amp;quot;&amp;gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;其中20指每隔20秒刷新一次页面.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Page auto go to&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;1.页面自动跳转：把如下代码加入&amp;lt;head&amp;gt;区域中&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;lt;meta http-equiv=&amp;quot;refresh&amp;quot; content=&amp;quot;20; url=http://www.xxxx.xxx&amp;quot;&amp;gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;其中20指隔20秒后跳转到http://www.xxxx.xxx页面&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;2.页面自动刷新js版&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;lt;script language=&amp;quot;JavaScript&amp;quot;&amp;gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;function myrefresh()&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;{&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; window.location.reload();&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;}&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;setTimeout(&amp;#39;myrefresh()&amp;#39;,1000); //指定1秒刷新一次&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;lt;/script&amp;gt;&lt;/p&gt;', 1453298415);

-- --------------------------------------------------------

--
-- 表的结构 `msgbook`
--

CREATE TABLE IF NOT EXISTS `msgbook` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` char(16) NOT NULL DEFAULT '',
  `email` varchar(40) DEFAULT NULL,
  `msg` text NOT NULL,
  `posttime` int(10) unsigned NOT NULL DEFAULT '0',
  `reply` text,
  `replytime` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `msgbook`
--

INSERT INTO `msgbook` (`id`, `nickname`, `email`, `msg`, `posttime`, `reply`, `replytime`) VALUES
(1, 'admin', 'narcissu456@gmail.com', 'test message page', 1452220511, 'test reply by admin', 1452221180);

-- --------------------------------------------------------

--
-- 表的结构 `pybook`
--

CREATE TABLE IF NOT EXISTS `pybook` (
  `pid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL DEFAULT '',
  `essay` longtext NOT NULL,
  `dilivery_time` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pybook`
--

INSERT INTO `pybook` (`pid`, `title`, `essay`, `dilivery_time`) VALUES
(1, 'the features of python', '&lt;p&gt;Python is a multi-paradigm programming language: object-oriented programming and structured programming are fully supported, and there are a number of language features which support functional programming and aspect-oriented programming (including by metaprogramming[34] and by magic methods). Many other paradigms are supported using extensions, including design by contract and logic programming.&lt;/p&gt;\r\n\r\n&lt;p&gt;Python uses dynamic typing and a combination of reference counting and a cycle-detecting garbage collector for memory management. An important feature of Python is dynamic name resolution (late binding), which binds method and variable names during program execution.&lt;/p&gt;\r\n\r\n&lt;p&gt;The design of Python offers some support for functional programming in the Lisp tradition. The language has map(), reduce() and filter() functions; comprehensions for lists, dictionaries, and sets; and generator expressions. The standard library has two modules (itertools and functools) that implement functional tools borrowed from Haskell and Standard ML.&lt;/p&gt;\r\n\r\n&lt;p&gt;The core philosophy of the language is summarized by the document &amp;quot;PEP 20 (The Zen of Python)&amp;quot;, which includes aphorisms such as:&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; Beautiful is better than ugly&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp; Explicit is better than implicit&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp; Simple is better than complex&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp; Complex is better than complicated&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp; Readability counts&lt;/p&gt;\r\n\r\n&lt;p&gt;Rather than requiring all desired functionality to be built into the language&amp;#39;s core, Python was designed to be highly extensible. Python can also be embedded in existing applications that need a programmable interface. This design of a small core language with a large standard library and an easily extensible interpreter was intended by Van Rossum from the very start because of his frustrations with ABC (which espoused the opposite mindset).&lt;/p&gt;\r\n\r\n&lt;p&gt;While offering choice in coding methodology, the Python philosophy rejects exuberant syntax, such as in Perl, in favor of a sparser, less-cluttered grammar. As Alex Martelli put it: &amp;quot;To describe something as clever is not considered a compliment in the Python culture.&amp;quot; Python&amp;#39;s philosophy rejects the Perl &amp;quot;there is more than one way to do it&amp;quot; approach to language design in favor of &amp;quot;there should be one&amp;mdash;and preferably only one&amp;mdash;obvious way to do it&amp;quot;.&lt;/p&gt;\r\n\r\n&lt;p&gt;Python&amp;#39;s developers strive to avoid premature optimization, and moreover, reject patches to non-critical parts of CPython which would offer a marginal increase in speed at the cost of clarity. When speed is important, Python programmers use PyPy, a just-in-time compiler, or move time-critical functions to extension modules written in languages such as C. Cython is also available which translates a Python script into C and makes direct C level API calls into the Python interpreter.&lt;/p&gt;\r\n\r\n&lt;p&gt;An important goal of the Python developers is making Python fun to use. This is reflected in the origin of the name which comes from Monty Python, and in an occasionally playful approach to tutorials and reference materials, such as using examples that refer to spam and eggs instead of the standard foo and bar.&lt;/p&gt;\r\n\r\n&lt;p&gt;A common neologism in the Python community is pythonic, which can have a wide range of meanings related to program style. To say that code is pythonic is to say that it uses Python idioms well, that it is natural or shows fluency in the language, that it conforms with Python&amp;#39;s minimalist philosophy and emphasis on readability. In contrast, code that is difficult to understand or reads like a rough transcription from another programming language is called unpythonic.&lt;/p&gt;\r\n\r\n&lt;p&gt;Users and admirers of Python&amp;mdash;especially those considered knowledgeable or experienced&amp;mdash;are often referred to as Pythonists, Pythonistas, and Pythoneers.&lt;/p&gt;', 1453298986);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`uid`, `username`, `password`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e');
