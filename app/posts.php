<?php 
	$current = (empty($_GET['page'])? 1 : (int)($_GET['page']));
	$articles = get_group_posts($current);
?>


	<section class="container posts">
		<div class="row">
			<?php 
				foreach ($articles as $value): ?>
					<div class="col-md-12 row">
						<div class="col-md-6">
							<img src=
							<?php echo $value['img'] ?> 
							alt="post img 1"
							>
						</div>
						<div class="col-md-6">
							<div class="title">
								<?php 
								echo $value['title'] 
								?>
							</div>
							<div class="text">
								<?php 
								limit_echo($value['text'])
								?>
							</div>
							<a href=<?php 
								echo "full_post.php?id=".$value['id'] ;
							?>>
								<button>Continue →</button>
							</a>
						</div>
					</div> 
				<?php endforeach ?>


			<div class="col-md-12 row">


				<?php 
					if ($_GET['page']>1):
				 ?>
					<a class="offset-md-1 col-md-auto" href=<?php
						echo"?page=".move_left(); ?>>
						<button>← Previous</button>
					</a>
				<?php endif ?>
				<!-- end checking previous button -->



				<?php
					$articles = get_group_posts($current+1);
					if (!empty($articles->fetch())):
				 ?>

					<a class="col-md-auto 
						<?php
							// needed for good tabs
							if($_GET['page']>1){
								echo 'offset-md-7';
							} else {
								echo 'offset-md-9';
							};
						?>"

					href=<?php
						echo"?page=".move_right(); ?>>
						<button>Next →</button>
					</a>
				<?php endif ?>
				<!-- end checking next button -->




			</div>
		</div>
	</section>
	<!-- /posts  -->
