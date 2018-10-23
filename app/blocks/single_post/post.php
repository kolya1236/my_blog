<?php 
	$article = get_single_post($_GET['id']);
 ?>


	<section class="container posts">
		<div class="row">
			<?php 
				foreach ($article as $value): ?>
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
									echo $value['text'];
									break;
								?>
							</div>
						</div>
					</div> 
				<?php endforeach ?>


			<div class="col-md-12 justify-content-center row">
				<a href=".">
					<button>← Back</button>
				</a>
			</div>
		</div>
	</section>
	<!-- /posts  -->




