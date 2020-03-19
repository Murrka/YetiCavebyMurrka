<nav class="nav">
        <ul class="nav__list container">
            <!--заполните этот список из массива категорий-->
			<?php foreach($Cattegory as $v): ?>
					<li class="nav__item">
						<a href="pages/all-lots.html"> <?= $v ?> </a>
					</li>
			<?php endforeach;?>		
        </ul>
    </nav>