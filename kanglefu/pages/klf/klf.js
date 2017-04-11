// pages/klf/klf.js
//var httpUrl = 'http://localhost/xiucar/public/index.php'
Page({
  data:{
      wx:1,
      yl:2,
      xj1:"xj1",
      xj2:"xj2",
      focus: false,
      inputValue: '',
      shuju:'请选择',
      fuwu:'请选择',
      selectPerson:true,
      firstPerson:'请选择',
      selectArea:false,
      selectPerson_one:true,
      firstPerson_one:'请选择',
      selectArea_one:false,
      shuju2:''
  },
  onLoad:function(options){
    // 页面初始化 options为页面跳转所带来的参数
  },
  onReady:function(){
    // 页面渲染完成
  },
  onShow:function(){
    var that =this
     wx.request({
      url: 'http://127.0.0.1/ceshi/www.php',
      data: {

      },
      method: 'GET', // OPTIONS, GET, HEAD, POST, PUT, DELETE, TRACE, CONNECT
      // header: {}, // 设置请求的 header
      success: function(res){
       
        var shuju = res.data
        that.setData({
            
            shuju:shuju

        })
        for(var i=0;i<shuju.length;i++){

              //console.log(shuju[i])
            }
      },
      fail: function(res) {
        // fail
      },
      complete: function(res) {
        // complete
      }
    })

    var firstPerson = this.data.firstPerson
    var shuju2 = this.data.shuju2
    console.log(shuju2)
    
    var firstPerson_one = this.data.firstPerson_one
  },
  onHide:function(){
    // 页面隐藏
  },
  onUnload:function(){
    // 页面关闭
  },
  succ:function(res){
      //console.log(res)
  },
  //点击选择类型
 clickPerson:function(){
  var selectPerson = this.data.selectPerson;
  if(selectPerson == true){
   this.setData({
   selectArea:true,
   selectPerson:false,
 })
  }else{
   this.setData({
   selectArea:false,
   selectPerson:true,
 })
  }
 } ,
 //点击切换
 mySelect:function(e){
  this.setData({
   firstPerson:e.target.dataset.me,
   selectPerson:true,
   selectArea:false,
  })
  //console.log(e.target.dataset.me)
    var that = this
    var shuju2 = e.target.dataset.me
    that.setData({

      shuju2:shuju2
    })
    
 },
  //点击选择类型
 clickPerson_one:function(){
  var that = this
  var selectPerson_one = this.data.selectPerson;
  if(selectPerson_one == true){
      this.setData({
      selectArea_one:true,
      selectPerson_one:false,
    })
  
   var shuju2 = this.data.shuju2
  console.log(shuju2)
  wx.request({
      url: 'http://127.0.0.1/ceshi/fuwu.php',
      data: {      },
      method: 'GET', // OPTIONS, GET, HEAD, POST, PUT, DELETE, TRACE, CONNECT
      // header: {}, // 设置请求的 header
      success: function(res){
        console.log(res)
        var fuwu = res.data
        that.setData({
            fuwu:fuwu
        })
        for(var i=0;i<fuwu.length;i++){
            }
      },
      fail: function(res) {
        // fail
      //  console.log(2)
      },
      complete: function(res) {
        // complete
        //  console.log(3)
      }
    })  

  }else{
   this.setData({
   selectArea:false,
   selectPerson_one:true,
 })
  }

 } ,
 //点击切换
 mySelect_one:function(e){
 //  console.log(e)
  this.setData({
   firstPerson_one:e.target.dataset.me,
   selectPerson_one:true,
   selectArea:false,
  })
 // console.log(e.target.dataset.me)
  
 },
  //点击切换 支付方式
  wx:function(){
      this.setData({
      wx:1,
      yl:2,
      xj1:"xj1",
      xj2:"xj2"
    })

  },
  yl:function(){
    this.setData({
        yl:1,
        wx:2,
        xj1:"xj2",
        xj2:"xj1"
      })

  },
   bindButtonTap: function() {
    this.setData({
      focus: true
    })
  },
  bindKeyInput: function(e) {
    this.setData({
      inputValue: e.detail.value
    })
    // console.log(e.detail.value);
  },
  bindReplaceInput: function(e) {
    var value = e.detail.value
    var pos = e.detail.cursor
    if(pos != -1){
      //光标在中间
      var left = e.detail.value.slice(0,pos)
      //计算光标的位置
      pos = left.replace(/11/g,'2').length
    }

    //直接返回对象，可以对输入进行过滤处理，同时可以控制光标的位置
    return {
      value: value.replace(/11/g,'2'),
      cursor: pos
    }

    //或者直接返回字符串,光标在最后边
    //return value.replace(/11/g,'2'),
  },
  bindHideKeyboard: function(e) {
    if (e.detail.value === '123') {
      //收起键盘
      wx.hideKeyboard()
    }
  },
  //选择业务
  bindPickerChange: function(e) {
    
    // console.log('picker发送选择改变，携带值为', e.detail.value)
     this.setData({
        index: e.detail.value
     })
    //  console.log(e.detail)
  },
  bindDateChange: function(e) {
    this.setData({
      date: e.detail.value
    })
  },
  bindTimeChange: function(e) {
    this.setData({
      time: e.detail.value
    })
  },
  formSubmit:function(res){
      //console.log(res)
      
    var that = this
    var firstPerson = this.data.firstPerson
    var firstPerson_one = this.data.firstPerson_one
    // console.log(firstPerson)
    // 链接数据库
    wx.request({
      url: 'http://127.0.0.1/ceshi/ceshi.php',
      data:{
          firstPerson:firstPerson,
          firstPerson_one:firstPerson_one,
          pay_number:res.detail.value.pay_number,
          other:res.detail.value.other
      },
      method: 'POST',
      header: {
         'content-type': 'application/x-www-form-urlencoded'
         },  
      success: function(res){
         
       // console.log(1)

      },
      fail: function(res) {
        // fail
      },
      complete: function(res) {
        // complete
      }
    })
   
  }
})