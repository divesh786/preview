<?php if($status == "success"){ ?> 
<img src="<?php echo $metaData->image; ?>" id="imgdata" style="width:300px;" class="card-img-top" alt="...">
        <div class="card-body">
				<h5 class="card-title" id="title"><?php echo $metaData->title; ?></h5>
				<p class="card-text" id="description" ><?php echo $metaData->description; ?></p>
				<p class="card-text" style="display:none;" id="PreviewUrl" ><?php echo $metaData->url; ?></p>
		</div>
<?php }else{
	echo "<h5>".$metaData."</5>";
}?>