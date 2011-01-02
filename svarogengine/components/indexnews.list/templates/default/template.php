	<h1>А в нашем цеху</h1>
	<div style="height: 2px; border-top: 1px #dc0000 solid; border-bottom: 1px #dc0000 solid; margin: 15px 0px 15px 0px; font-size: 1px;"></div>
	<? foreach ($params["list"] as $text) { ?>
		<div class="date"><?=date('d.m.Y',$text["date"])?></div>
		<div class="text"><?=$text["text"]?></div>
	<? } ?>
