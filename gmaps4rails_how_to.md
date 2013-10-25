how to install gmaps4rails if you're not a developer
===

##controller

	@hash = Gmaps4rails.build_markers(@posts) do |post, marker|
        marker.lat post.latitude.to_f
        marker.lng post.longitude.to_f
        marker.picture({
                  :url => post.image.url(:thumb),
                  :width   => 50,
                  :height  => 50
          }) 





##view
	<div style='width: 800px; border:1px solid #000;'>
  		<div id="map" style='width: 800px; height: 400px;'>
  		</div>			
  	</div>

	<script>
  		handler = Gmaps.build('Google');
	  	handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
	  	markers = handler.addMarkers(<%=raw @hash.to_json %>);
	  	handler.bounds.extendWith(markers);
	  	handler.fitMapToBounds();
  		});
	</script>