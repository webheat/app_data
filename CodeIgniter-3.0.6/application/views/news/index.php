<h2><?php echo $title; ?></h2>

<?php foreach ($news as $news_item): ?>

    <h3><?php echo $news_item['appname']; ?></h3>
    <div class="main">
        <?php echo $news_item['appdata']; ?>
    </div>

<?php endforeach; ?>
