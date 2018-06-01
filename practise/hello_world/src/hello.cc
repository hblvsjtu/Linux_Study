#include <nan.h>

// 实现预定义的方法
void Method(const Nan::FunctionCallbackInfo<v8::Value>& info) {
  info.GetReturnValue().Set(Nan::New("Hello world!").ToLocalChecked());
}

// 给传入的目标对象添加hello方法
void Init(v8::Local<v8::Object> exports) {
  exports->Set(Nan::New("hello").ToLocalChecked(),
               Nan::New<v8::FunctionTemplate>(Method)->GetFunction());
}

// 调用NODE_MODULE将注册方法定义到内存中。
NODE_MODULE(hello, Init)
