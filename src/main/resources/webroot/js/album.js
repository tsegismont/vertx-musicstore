$(function () {
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
    }).done(function (result) {
      alert("Saved")
    }).fail(function (result) {
      if (result.status == 401) {
        window.location.href = "/login?return_url=" + encodeURI("/albums/" + $("#album-id").val());
        return;
      }
      alert("Something went wrong...");
      console.log(result);
    });
  });
});
