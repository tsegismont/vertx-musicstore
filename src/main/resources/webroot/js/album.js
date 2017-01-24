function setupAddAlbumComment() {
  $("#add-album-comment").on("click", function () {
    var comment = $("#new-album-comment").val();
    if (!comment) {
      alert("Please enter some text!");
      return;
    }

    $.ajax({
      type: "POST",
      url: "/api/albums/" + $("#album-id").val() + "/comments",
      data: comment,
      contentType: "text/plain"
    }).fail(function (result) {
      if (result.status == 401) {
        window.location.href = "/login?return_url=" + encodeURI("/albums/" + $("#album-id").val());
        return;
      }
      alert("Something went wrong...");
      console.log(result);
    });
  });
}

function loadComments() {
  $("#album-comments").load("/ajax/albums/" + $("#album-id").val() + "/comments");
}

function setupCommentListener() {
  var eb = new EventBus(window.location.protocol + "//" + window.location.host + "/eventbus");
  eb.onopen = function () {
    eb.registerHandler("album." + $("#album-id").val() + ".comments.new", function (error, message) {
      loadComments();
    });
  }
}

$(function () {
  setupAddAlbumComment();
  loadComments();
  setupCommentListener();
});
