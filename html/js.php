<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>SNOW HALATION -- Javascript</title>
    <?php include('../php/unify_header.php'); ?>
</head>
<body>
    <div id="container" class="container">
        <header id="header" class="header">
            <h1>snow halation</h1>
            <p id="intro"><span>javascript</span>, create amazing and artistic web effects</p>
        </header><!-- /header -->
        <?php
        include('../php/unify_navigation.php');
        ?>
        <div id="img_scroll" class="img_scroll_div">
            <ul class="img_scroll_ul"></ul>
        </div>
        <div id="content" class="box_border">
            <section class="content_sec">
                <h2>how to make pictures rolling</h2>
                <article class="content_arti pics_roll">
                    <pre class="content_txt"></pre>
                    <button type="button" class="dis_btn btn btn_primary">Code</button>
                    <textarea class="content_code box_border h-height display_none"></textarea>
                </article>
            </section>
            <section class="content_sec">
                <h2>the key word this of usage</h2>
                <article class="content_arti this_usage">
                    <pre class="content_txt"></pre>
                </article>
            </section>
        </div>
        <?php
        include('../php/unify_footer.php');
        ?>
    </div>
    </body>
    <script src="../js/base-move-frames.js" type="text/javascript" charset="utf-8"></script>
    <script src="../js/child-page.js" type="text/javascript" charset="utf-8"></script>
</html>