
<? if ($params["type"]=="article") { ?>

	<h1><? echo $params["article"]["title"]; ?></h1>
	
	<table class="tablecontent">
		<tr>
			<td id="td1"></td>
			<td id="td2"></td>
			<td id="td3"></td>
		</tr>
		<tr>
			<td id="td4"></td>
			<td id="td5"><? echo $params["article"]["text"]; ?></td>
			<td id="td6"></td>
		</tr>
		<tr>
			<td id="td7"></td>
			<td id="td8"> </td>
			<td id="td9"></td>
		</tr>
	</table>


<? }
elseif ($params["type"]=="list") { ?>
	
	<h1><? echo $params["theme"]["title"]; ?></h1>
	
	<table class="tablecontent">
		<tr>
			<td id="td1"></td>
			<td id="td2"></td>
			<td id="td3"></td>
		</tr>
		<tr>
			<td id="td4"></td>
			<td id="td5">
				
				<table>
				<? foreach ($params['list'] as $article) { ?>
					<tr>
					<td class="listitem">
						<?php $url = '/typical/'.$params["theme"]["article_alias"].'.'.$article['id'].'.html'; ?>
						<?php if ($article['has_preview']) { ?>
							<a href="<?php echo $url; ?>"><img src="/files/article/preview/<?php echo $article['id']; ?>_1.jpeg" align=left style="margin-bottom: 10px; margin-right: 10px;"></a>
						<?php } ?>
						<a href="<?php echo $url; ?>" class="title"><? echo $article["title"]; ?></a>
						<br>
						<a href="<?php echo $url; ?>" class="text"><? echo $article["pre_text"]; ?></a>
						<br>
						<a href="<?php echo $url; ?>" class="more">Подробнее &raquo;</a>
						<br><br>
					</td>
					</tr>
				<? } ?>
				</table>
				
				<?php
					if ($params['pages_count']>1) {
						echo 'Страницы&nbsp;';
						for ($i = 0; $i<$params['pages_count']; $i++) {
							$num = $i+1;
							if ($i==$params['page']) {
								echo $num.'&nbsp;';
							} else {
								echo '<a href="/typical/page.'.$i.'.html">'.$num.'</a>&nbsp;';
							}
						}
					}
				?>
				
			</td>
			<td id="td6"></td>
		</tr>
		<tr>
			<td id="td7"></td>
			<td id="td8"> </td>
			<td id="td9"></td>
		</tr>
	</table>
	
	
<?php } ?>

