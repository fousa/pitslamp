$(function() {
	$("#sort").sortable({
		handle : ".handle",
  	update : function (event, ui) {
  		$.ajax({
  			type: "PUT",
  			url: "/admin/menu",
  			data: $(this).sortable("serialize"),
				success: function(data, textStatus, XMLHttpRequest) {
					location.reload();
				}
  		});
  	}
  });

	$("#thumbs").galleriffic({
  	imageContainerSel: "#slideshow",
  	controlsContainerSel: "#controls"
  });
});