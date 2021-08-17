/**
 * reply module
 */
console.log("reply module...");
var replyService = (function() {
	return {
		add: function(reply, callback, error) {
			console.log("reply.add().........");
			
			$.ajax({
				type : "post",
				url : reply.cp+"/replies/new",
				data : JSON.stringify(reply),
				contentType : "application/json; charset=utf-8",
				success : function(result, status, xhr) {
					if(callback) {
						callback(result);
					}
				},
				error : function(xhr, status, er) {
					if(error) {
						error(er);
					}
				}
			});

		},
		getList: function(param, callback, error) {
			var bno = param.bno;
			var page = param.page || 1;
			var url = param.cp+"/replies/pages/" + page + "/" + bno;
			
			$.getJSON(url, function(result) {
				if(callback) {
					callback(result);
				}
			}).fail(function(xhr, status, er) {
				if(error) {
					error(er);
				}
			});
		},
		remove: function(rno, callback, error) {
			var url = rno.cp+"/replies/" + rno.rno
			$.ajax({
				type: "delete",
				url: url,
				success: function(result) {
					if(callback) {
						callback(result);
					}
				},
				error : function(xhr, status, er) {
					if(error) {
						error(er);
					}
				}
			})
		},
		update: function(reply, callback, error) {
			var url = reply.cp+"/replies/" + reply.rno
			$.ajax({
				type : "put",
				url : url,
				data : JSON.stringify(reply),
				contentType : "application/json; charset=utf-8",
				success : function(result, status, xhr) {
					if(callback) {
						callback(result);
					}
				},
				error : function(xhr, status, er) {
					if(error) {
						error(er);
					}
				}
			});
		},
		get: function(reply, callback, error) {
			var rno = reply.rno;
			var url = reply.cp+"/replies/" + rno
			$.getJSON(url, function(result) {
				if(callback) {
					callback(result);
				}
			}).fail(function(xhr, status, er) {
				if(error) {
					error(er);
				}
			});
		},
		displayTime: function(timeValue) {
			return moment(timeValue).fromNow();
		}
	};
})();

