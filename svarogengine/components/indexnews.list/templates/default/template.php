<div style="border: 1px red solid; padding: 10px; margin: 10px;">
	<h4>Список новостей</h4>
	<? if (count($params["list"])) { ?>
		<? foreach ($params["list"] as $text) { ?>
			<div><?=date('d.m.Y',$text["date"])?> <?=$text["text"]?></div>
		<? } ?>
	<? } ?>
</div>
