
obj = fbp.Object()

if (obj) {
	ret = cache.Get(obj.id)
	if (ret[1]) {
		fbp.SetBody(ret[0])
	} else {
		fbp.SetError("SPIRIT-GOJA",404,"task not exist")
	}
} else {
	fbp.SetError("SPIRIT-GOJA",404,"bad request")
}