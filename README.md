# Tourist
Tourist for spirit and spirit-builder

### Install spirit-builder

```bash
> go get github.com/go-spirit/spirit-builder
```

### Build all

```bash
> make pull && make all
```

### Tourist 1 - todo-goja

combine component `post-api` and `goja`

#### Run

```bash
> ./todo-goja run --config configs/todo-goja/todo.conf
```

#### Test

#### Add task

```bash
> curl -X POST \
  http://127.0.0.1:8080/ \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/json' \
  -H 'x-api: todo.task.new' \
  -H 'x-api-timeout: 1s' \
  -d '{
	"name":"hello spirit"
}'
```

*output*

```json
{
    "code": 0,
    "result": {
        "id": "f44941d8-5c6f-4c44-a65a-2237bbf023fe"
    }
}
```

#### Get task

```bash
curl -X POST \
  http://127.0.0.1:8080/ \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/json' \
  -H 'x-api: todo.task.get' \
  -H 'x-api-timeout: 30s' \
  -d '{
        "id": "f44941d8-5c6f-4c44-a65a-2237bbf023fe"
    }'
```

*output*

```json
{
    "code": 0,
    "result": {
        "id": "f44941d8-5c6f-4c44-a65a-2237bbf023fe",
        "name":"hello spirit"
    }
}
```

### Tourist 2 - todo-combined

combine component `post-api` and `todo`

#### Run

```bash
> ./todo-combined run --config configs/todo-combined/todo.conf
```

#### Test

> Use Tourist 1's test-case to test this tourist

###  Tourist 3 - todo-split

combine component `post-api` and `todo`

#### Run

Before you run this part, please make sure you were updated the `configs/todo-split/secret.conf` to your own aliyun account, and you create `mns queues` of `todo-task-listen` and `api-call-back`

```bash
> ./todo-split run --config configs/todo-split/todo.conf
> ./postapi-split run --config configs/todo-split/postapi.conf
```

#### Test

> Use Tourist 1's test-case to test this tourist