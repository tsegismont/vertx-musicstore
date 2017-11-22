/*
 * Copyright 2017 Red Hat, Inc.
 *
 * Red Hat licenses this file to you under the Apache License, version 2.0
 * (the "License"); you may not use this file except in compliance with the
 * License.  You may obtain a copy of the License at:
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
 * License for the specific language governing permissions and limitations
 * under the License.
 */

function setupAddAlbumComment() {
  $("#add-album-comment").on("click", function () {
    var comment = $("#new-album-comment").val();
    if (!comment) {
      alert("Please enter some text!");
      return;
    }
    $("#new-album-comment").val(""); //reset

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
  eb.enableReconnect(true);
  eb.onopen = function () {
    eb.registerHandler("album." + $("#album-id").val() + ".comments.new", function (error, message) {
      var body = message.body;
      $.notify(body.username + " : " + body.comment, "info");
      loadComments();
    });
  };
}

$(function () {
  setupAddAlbumComment();
  loadComments();
  setupCommentListener();
});
