
<? if ($params["type"]=="article") { ?>
	<table width="100%" cellspacing=0 cellpadding=0>
		<tr>
			<td width="21"><div class="left_of_title">&nbsp;</div></td>
			<td><div class="right_of_title"><? echo $params["article"]["title"]; ?></div></td>
		</tr>
	</table>
<div>
<? echo $params["article"]["text"]; ?>
</div>

<? }
elseif ($params["type"]=="list") { ?>
	
	<table width="100%" cellspacing=0 cellpadding=0>
		<tr>
			<td width="21"><div class="left_of_title">&nbsp;</div></td>
			<td><div class="right_of_title"><? echo $params["theme"]["title"]; ?></div></td>
		</tr>
	</table>
	<br>
	<table>
	<? foreach ($params['list'] as $article) { ?>
		<tr>
		<td class="listitem">
			<?php $url = '/made/'.$params["theme"]["article_alias"].'.'.$article['id'].'.html'; ?>
			<?php if ($article['has_preview']) { ?>
				<a href="<?php echo $url; ?>"><img src="/files/article/preview/<?php echo $article['id']; ?>_2.jpeg" align=left style="margin-bottom: 10px; margin-right: 10px;"></a>
			<?php } ?>
			<a href="<?php echo $url; ?>" class="title"><? echo date('d.m.Y',$article["date"]); ?></a>
			<br>
			<a href="<?php echo $url; ?>" class="title2"><? echo $article["title"]; ?></a>
			<br>
			<a href="<?php echo $url; ?>" class="text"><? echo $article["pre_text"]; ?></a>
			<br>
			<a href="<?php echo $url; ?>" class="more">Подробнее &raquo;</a>
			<br><br>
		</td>
		</tr>
	<? } ?>
	</table>
	
<? } ?>

<?php
	if ($params['pages_count']>1) {
		echo 'Страницы&nbsp;';
		for ($i = 0; $i<$params['pages_count']; $i++) {
			$num = $i+1;
			if ($i==$params['page']) {
				echo $num.'&nbsp;';
			} else {
				echo '<a href="/made/page.'.$i.'.html">'.$num.'</a>&nbsp;';
			}
		}
	}
?>
