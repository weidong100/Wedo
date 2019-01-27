<template>
  <div>
    <p>{{ title }}</p>
    <div class="demo-upload-list" v-for="item in initList">
        <template v-if="item.status === 'finished'">
            <img :src="item.url">
            <div class="demo-upload-list-cover">
                <icon type="ios-eye-outline" @click.native="handleView(item)"></icon>
                <icon type="ios-trash-outline" @click.native="handleRemove(item)"></icon>
            </div>
        </template>
        <template v-else>
            <i-progress v-if="item.showProgress" :percent="item.percentage" hide-info></i-progress>
        </template>
    </div>
    <upload
        ref="upload"
        name="file"
        :headers="headers"
        :show-upload-list="false"
        :on-success="handleSuccess"
        :format="format"
        :max-size="maxSize"
        :on-format-error="handleFormatError"
        :on-exceeded-size="handleMaxSize"
        :on-progress="handleUploadProgress"
        type="drag"
        :data="params"
        :action="action"
        style="display: inline-block;width:58px;">
        <div style="width: 58px;height:58px;line-height: 58px;">
            <icon type="ios-camera" size="20"></icon>
        </div>
    </upload>
    <modal :title="modelTitle" v-model="visible">
        <img :src="imgPath" v-if="visible" style="width: 100%">
    </modal>
  </div>
</template>

<script>
import { getToken } from '@/libs/util'
export default {
  name: 'MultipleUpload',
  props: {
    title: {
      type: String,
      default: '上传'
    },
    uplist: {
      type: Array,
      default () {
        return []
      }
    },
    params: Object,
    format: {
      type: Array,
      default () {
        return [];
      }
    },
    maxSize: {
      type: Number,
      default: 2048
    },
    modelTitle: {
      type: String,
      default: '查看照片'
    },
    action: {
      type: String,
      default () {
        return this.$config.uploadPath
      }
    },
    field: {
      type: String,
      default: ''
    }
  },
  data() {
    return {
      initList: [],
      imgPath: '',
      visible: false,
      headers: {
        'Authorization':'bearer ' + getToken().access_token
      }
    }
  },
  methods: {
    handleView (file) {
        this.imgPath = file.url;
        this.visible = true;
    },
    handleRemove (file) {
        this.$emit('on-remove', this)
    },
    handleSuccess (res, file) {
        this.initList.pop()
        let sfile = {
          name: res.data.fileName,
          url: res.data.filePath,
          status: 'finished'
        }
        this.initList.push(sfile)
        this.$Message.info(res.msg)
        this.$emit('upload-success', res.data.fileName)
    },
    handleFormatError (file) {
        let formatInfo = this.format.join()
        this.$Notice.error({
            title: '上传格式错误',
            desc: file.name + ' 文件格式错误, 请上传' + formatInfo +'类型文件'
        });
    },
    handleMaxSize (file) {
        let max_size = this.maxSize 
        this.$Notice.error({
            title: '上传文件过大',
            desc: file.name + ' 大小已超过' + max_size + 'KB'
        });
    },
    handleUploadProgress (event, file, fileList) {
        this.initList.push(file)
    }
  },
  mounted() {
    this.initList = this.uplist
  }
}
</script>

<style>
.demo-upload-list{
  display: inline-block;
  width: 60px;
  height: 60px;
  text-align: center;
  line-height: 60px;
  border: 1px solid transparent;
  border-radius: 4px;
  overflow: hidden;
  background: #fff;
  position: relative;
  box-shadow: 0 1px 1px rgba(0,0,0,.2);
  margin-right: 4px;
}
.demo-upload-list img{
  width: 100%;
  height: 100%;
}
.demo-upload-list-cover{
  display: none;
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  background: rgba(0,0,0,.6);
}
.demo-upload-list:hover .demo-upload-list-cover{
  display: block;
}
.demo-upload-list-cover i{
  color: #fff;
  font-size: 20px;
  cursor: pointer;
  margin: 0 2px;
}
</style>
