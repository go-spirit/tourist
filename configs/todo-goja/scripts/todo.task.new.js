
go.Import("uuid")
go.Import("fmt")
go.Import("time", "encoding/base64")


log.Infoln("hello I am the logger by logrus")

id = uuid.New()
obj = fbp.Object()
cache.Set(id, {id: id, name: obj.name})
fbp.SetBody({id: id})