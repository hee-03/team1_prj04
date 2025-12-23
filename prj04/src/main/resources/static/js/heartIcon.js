	
document.addEventListener("DOMContentLoaded",() => {
	const hearts = document.querySelectorAll(".heartIcon");
	
	hearts.forEach(heart => {
		heart.addEventListener("click", (e) =>{
			e.stopPropagation();
			
			heart.classList.toggle("off");
		});
	});
});
