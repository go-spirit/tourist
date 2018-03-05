
obj = fbp.Object()

cache = caches.Require("todo")

if (obj) {
	ret = cache[0].Get(obj.id)
	if (ret[1]) {
		fbp.SetBody(JSON.parse(ret[0]))
	} else {
		fbp.SetError("SPIRIT-GOJA",404,"task not exist")
	}
} else {
	fbp.SetError("SPIRIT-GOJA",404,"bad request")
}