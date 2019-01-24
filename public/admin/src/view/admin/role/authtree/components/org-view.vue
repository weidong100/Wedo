<template>
  <div
    ref="dragWrapper"
    class="org-tree-drag-wrapper"
    @mousedown="mousedownView"
    @contextmenu="handleDocumentContextmenu"
  >
    <div class="org-tree-wrapper" >
      <v-org-tree
        v-if="data"
        :data="data"
        :props="field"
        ref="vtree"
        :horizontal="horizontal"
        :node-render="nodeRender"
        :expand-all="true"
        @on-node-click="handleNodeClick"
        collapsable
      ></v-org-tree>
    </div>
  </div>
</template>

<script>
import { on, off } from '@/libs/tools'
const menuList = [
  {
    key: 'edit',
    label: '编辑部门'
  },
  {
    key: 'detail',
    label: '查看部门'
  },
  {
    key: 'new',
    label: '新增子部门'
  },
  {
    key: 'delete',
    label: '删除部门'
  }
]
const init_field = {
  id: 'menu_id', 
  label: 'title', 
  children: 'children', 
  isCheck: 'isCheck',
  parent_id: 'parent_id'
}
const checkSelected = (arr) =>{
  var bool  = true
  for(let i = 0 ; i < arr.length ; i++){
    if(arr[i][init_field.isCheck]){
      return false
    }else{
      if(arr[i][init_field.children] && arr[i][init_field.children].length){
        bool = checkSelected(arr[i][init_field.children])
      }
    }
  }
  return bool
}
const setParentNodeFalse = (data, id, root) => {
  if(data[init_field.id] == id){
    if(checkSelected(data[init_field.children])){
      data.isCheck = false
      if(data[init_field.parent_id] !== -1){
        setParentNodeFalse(root, data[init_field.parent_id], root)
      }
    }
  }else{
    if(data[init_field.children] && data[init_field.children].length){
      data[init_field.children].forEach(item => {
        setParentNodeFalse(item, id, root)
      })
    }
  }
}
const setParentNodeTrue = (node, id, root) => {
  if(node[init_field.id] == id){
    node[init_field.isCheck] = true 
    if(node[init_field.parent_id] !== -1){
      setParentNodeTrue(root, node[init_field.parent_id], root)
    }
  }else{
    if(node[init_field.children] && node[init_field.children].length){
      node[init_field.children].forEach(item => {
        setParentNodeTrue(item, id, root)
      })
    }
  }
  
}

const setCheck = (node, bool) => {
  node[init_field.isCheck] = bool
  if(node[init_field.children] && node[init_field.children].length){
    node[init_field.children].forEach(item => {
      setCheck(item, bool)
    })
  }
}
export default {
  name: 'OrgView',
  props: {
    zoomHandled: {
      type: Number,
      default: 1
    },
    data: Object,
    horizontal: Boolean
  },
  data () {
    return {
      currentContextMenuId: '',
      orgTreeOffsetLeft: 0,
      orgTreeOffsetTop: 0,
      initPageX: 0,
      initPageY: 0,
      oldMarginLeft: 0,
      oldMarginTop: 0,
      canMove: false,
      field: init_field
    }
  },
  computed: {
    orgTreeStyle () {
      return {
        transform: `translate(-50%, -50%) scale(${this.zoomHandled}, ${
          this.zoomHandled
        })`,
        marginLeft: `${this.orgTreeOffsetLeft}px`,
        marginTop: `${this.orgTreeOffsetTop}px`
      }
    }
  },
  methods: {
    handleNodeClick (e, data, expand) {
      let isC = data[init_field.isCheck]
      isC ? setCheck(data, false) : setCheck(data, true)
      if(isC && data[init_field.parent_id] !== -1 && data.type == 0){
        setParentNodeFalse(this.$refs.vtree.dataCloned, data[init_field.parent_id], this.$refs.vtree.dataCloned)
      }
      if(!isC && data[init_field.parent_id] !== -1){
        setParentNodeTrue(this.$refs.vtree.dataCloned, data[init_field.parent_id], this.$refs.vtree.dataCloned)
      }
      this.$emit('checked-data-change', this.$refs.vtree.dataCloned)
    },
    closeMenu () {
      this.currentContextMenuId = ''
    },
    getBgColor (data) {
      return this.currentContextMenuId === data[init_field.id]
        ? data.isRoot
          ? '#0d7fe8'
          : '#5d6c7b'
        : ''
    },
    nodeRender (h, data) {
      return (
        <div
          class={[
            data[init_field.isCheck] ? 'custom-org-node' : 'custom-org-node-none-selected',
            data[init_field.children] && data[init_field.children].length ? 'has-children-label' : ''
          ]}
          on-mousedown={event => event.stopPropagation()}
          on-contextmenu={this.contextmenu.bind(this, data)}
        >
          <Icon type={data.type == 1 ? 'md-radio-button-on' : 'md-list-box'} style="margin:0 3px 1px 0;"></Icon>
          {data[init_field.label]}
           <dropdown 
            trigger="custom"
            class="context-menu"
            visible={false}
            nativeOn-click={this.handleDropdownClick}
            on-on-click={this.handleContextMenuClick.bind(this, data)}
            // style={{
            //   transform: `scale(${1 / this.zoomHandled}, ${1 /
            //     this.zoomHandled})`
            // }}
            v-click-outside={this.closeMenu}
          >
            <dropdown-menu slot="list">
              {menuList.map(item => {
                return (
                  <dropdown-item name={item.key}>{item.label}</dropdown-item>
                )
              })}
            </dropdown-menu>
          </dropdown>
        </div>
      )
    },
    contextmenu (data, $event) {
      let event = $event || window.event
      event.preventDefault
        ? event.preventDefault()
        : (event.returnValue = false)
      data[init_field.expand] = !data[init_field.expand]
      this.currentContextMenuId = data[init_field.id]
    },
    setDepartmentData (data) {
      data.isRoot = true
      this.departmentData = data
    },
    mousedownView (event) {
      this.canMove = true
      this.initPageX = event.pageX
      this.initPageY = event.pageY
      this.oldMarginLeft = this.orgTreeOffsetLeft
      this.oldMarginTop = this.orgTreeOffsetTop
      on(document, 'mousemove', this.mousemoveView)
      on(document, 'mouseup', this.mouseupView)
    },
    mousemoveView (event) {
      if (!this.canMove) return
      const { pageX, pageY } = event
      this.orgTreeOffsetLeft = this.oldMarginLeft + pageX - this.initPageX
      this.orgTreeOffsetTop = this.oldMarginTop + pageY - this.initPageY
    },
    mouseupView () {
      this.canMove = false
      off(document, 'mousemove', this.mousemoveView)
      off(document, 'mouseup', this.mouseupView)
    },
    handleDropdownClick (event) {
      event.stopPropagation()
    },
    handleDocumentContextmenu () {
      this.canMove = false
    },
    handleContextMenuClick (data, key) {
      this.$emit('on-menu-click', { data, key })
    }
  },
  mounted () {
    
    on(document, 'mousedown', this.mousedownView)
    on(document, 'contextmenu', this.handleDocumentContextmenu)
  },
  beforeDestroy () {
    off(document, 'mousedown', this.mousedownView)
    off(document, 'contextmenu', this.handleDocumentContextmenu)
  }
}
</script>

<style scope>
.horizontal .org-tree-node.collapsed, .horizontal .org-tree-node.is-leaf {
    padding-top: 5px;
    padding-bottom: 5px;
}
</style>
