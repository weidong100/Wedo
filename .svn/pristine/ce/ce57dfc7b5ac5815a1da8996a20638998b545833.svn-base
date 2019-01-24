<template>
  <Card shadow style="height: 650px;width: 100%;">
    <div class="department-outer">
      
      
      <div class="view-box">
        <org-view
          v-if="data"
          :horizontal="true"
          :data="data"
          @checked-data-change="handleChangeData"
        ></org-view>
      </div>
    </div>
  </Card>
</template>

<script>
import OrgView from './components/org-view.vue'
import getOrgData from '@/mock/data/org-data'
import './index.less'


export default {
  name: 'auth_tree',
  components: {
    OrgView
  },
  props:{
    data: Object
  },
  methods: {
    handleChangeData(data){
      this.$emit('tree-data-update', data);
    }
  },
  mounted () {
    
  }
}
</script>

<style>
</style>
