<template>
  <Select v-model="value" :placeholder="placeholder">
      <Option v-for="item in data" :value="item[valueKey]" :key="`my-sel-`+item[valueKey]">{{ item[nameKey] }}</Option>
  </Select>
</template>

<script>
import axios from '@/libs/api.request'
export default {
  name:'MySelect',
  prop:{
    value: [Number, String],
    data: {
      type: Array,
      default () {
        return []
      }
    },
    url: {
      type: String,
      default: ''
    },
    valueKey: {
      type: String,
      default: 'id'
    },
    nameKey: {
      type: String,
      default: 'title'
    },
    placeholder: String
  },
  methods: {
    getData: function(){
      let url = this.url
      axios.request({
          url,
          method: 'get'
      }).then(res=>{
          this.data = res.data.data
      })
    }
  },
  mounted() {
    if(this.url != ''){
      this.getData()
    }
  }
}
</script>

