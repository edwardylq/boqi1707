
require(['config'],function(){
    require(['common','jquery'],function(co,$){
           $('footer').load('footer.html',function(){

                    // 载入远程 HTML 文件代码并插入至 DOM 中。
                        $('.f1').remove();
                        $('.f2').remove();
                        $('.footer').css('height','152px');
                        $('.f3').css('background','#F3F3F3');
                })
                // 选项卡功能切换注册页面
                // 默认隐藏邮箱注册
                $('.z_ema').hide();
                $('.regl ul').on('click','li',function(){

                  // index():获取当前元素在同辈元素中的索引值
                    var idx = $(this).index();

                    // 高亮,三角显示,邮箱注册条的显示隐藏
                    $(this).css({borderBottom:'4px solid #FF6654'})
                    .siblings('li').css({borderBottom:'4px solid #ccc'});
                    if(idx === 0){ 
                        $('.jiao1').show();
                        $('.jiao2').hide();
                        $('.z_ema').hide();
                    }
                    if(idx === 1){ 
                        $('.jiao2').show();
                        $('.jiao1').hide();
                        $('.z_ema').show();
                    }                    
                })

                // 手机注册：表单验证
                // 默认隐藏所有正确标志、格式错误显示
                $('.z_tip,.z_youlo,.z_error').hide();
                $('.biao').hide();

                // 初始化:随机验证码生成
                $('.yzm').text(vco());


                // 验证码切换事件
                 $('.yzm').click(function(){

                        // 随机验证码生成
                        $('.yzm').text(vco());

                        // 验证码随机颜色设置
                        $('.yzm').css('color',randomColor());
                 })
                
                // console.log(maco);
               
                // 表单验证事件--------
                // 手机号验证--------change([[data],fn]) //值改变并失去焦点时触发

                $('#phoneNum').change(function(e){

                    // 初始化
                    $(this).next().fadeOut('slow');
                    $(this).prev().find('i').fadeOut('slow');
                     var num = $(this).val();
                     if(!/^1[34578]\d{9}$/.test(num)){
                         $(this).next().fadeIn('slow');
                         $(this).prev().find('i').fadeOut('slow');
                         a = 0;
                         return false; 
                        
                     }else{ 
                         $(this).next().fadeOut('slow');
                         $(this).prev().find('i').fadeIn('slow'); 
                     }
                })

                // 邮箱验证
                $('#z_email').change(function(e){

                    // 初始化
                    $(this).next().fadeOut('slow');
                    $(this).prev().find('i').fadeOut('slow');

                    var z_email = $(this).val();
                    console.log(111)
                    if(!/^[a-z0-9][\w\-\.]{2,}@[a-z0-9\-]+(\.[a-z]{2,})+$/.test(z_email)){
                       $(this).next().fadeIn('slow');
                        $(this).prev().find('i').fadeOut('slow');
                        return false; 
                    }else{  
                       $(this).next().fadeOut('slow');
                        $(this).prev().find('i').fadeIn('slow');
                    }

                })

                // 密码验证--------
                $('#z_passWord').change(function(e){

                    // 初始化
                    $(this).next().fadeOut('slow');
                    $(this).prev().find('i').fadeOut('slow');

                    var passWord = $(this).val();
                    if(!/^[^\s]{1,19}$/.test(passWord)){
                       $(this).next().fadeIn('slow');
                        $(this).prev().find('i').fadeOut('slow');
                        return false; 
                    }else{  
                       $(this).next().fadeOut('slow');
                        $(this).prev().find('i').fadeIn('slow');
                    }

                    // 确认密码验证---------
                    $('#okWord').change(function(e){

                        // 初始化
                        $(this).next().fadeOut('slow');
                        $(this).prev().find('i').fadeOut('slow');
                      
                        var okWord = $(this).val();
                        if(okWord !== passWord){
                            $(this).next().fadeIn('slow');
                           $(this).prev().find('i').fadeOut('slow');
                            return false; 
                        }else{
                            $(this).next().fadeOut('slow');
                           $(this).prev().find('i').fadeIn('slow');
                        }            
                    })
                })

                // 昵称验证---------- 
                
               $('#z_nickName').change(function(e){

                    // 初始化
                    $(this).prev().find('i').fadeOut('slow');
                    $(this).next().fadeOut('slow');

                    var userName= $(this).val();
                    if(!/^[\u2E80-\u9FFF]+$/.test(userName)){
                        $(this).next().fadeIn('slow');
                        console.log(111)
                        $(this).prev().find('i').fadeOut('slow');
                        return false; 
                    }else{
                        $.ajax({type:'GET',url:'../api/reg_username.php',data:{'username':userName},success:function(text){
                                    if(text === 'no'){
                                    
                                        //用户名已经存在
                                        var htc = '用户名已存在,推荐昵称:'+ $('#z_nickName').val()+randomNumber(100,999);
                                        $('#z_nickName').next().html(htc).fadeIn('slow');
                                        console.log(444)
                                    }else if(text == 'yes'){
                                        $('#z_nickName').next().fadeOut('slow');
                                        $('#z_nickName').prev().find('i').fadeIn('slow');
                                    }
                            }})
                        }
                       
               })
          

                // 验证码验证--------------------
               $('#z_vCode').change(function(e){

                    // 初始化
                    $('.z_error').fadeOut('slow');
                    $(this).prev().find('i').fadeOut('slow');  

                    var v_Code= $(this).val();
                    if(v_Code !== $('.yzm').text()){
                       $('.z_error').fadeIn();
                       $(this).prev().find('i').fadeOut('slow');   
                       return false; 
                    }else{
                       $('.z_error').fadeOut('slow');
                       $(this).prev().find('i').fadeIn('slow');
                       
                    }
               })
                        
                // 验证多选框协议------------
                $('#z_reg').click(function(e){

                    var t1 =  $('#phoneNum').val();
                    var t2 =  $('#z_email').val();
                    var t3 =  $('#z_passWord').val();
                    var t4 =  $('#okWord').val();
                    var t5 =  $('#z_nickName').val();
                    var t6 =  $('#z_vCode').val();

                   // 后台已注册用户名过滤
                   // 思路:直接判断输入出错时候span里面字符串的键入值
                    var testName =  $('#z_nickName').next().html();

                    // 邮箱注册页面正则测试
                    var reg1 = /^1[34578]\d{9}$/.test(t1) && /^[a-z0-9][\w\-\.]{2,}@[a-z0-9\-]+(\.[a-z]{2,})+$/.test(t2) && /^[^\s]{1,19}$/.test(t3) && t4 == t3 && /^[\u2E80-\u9FFF]+$/.test(t5) && t6 == $('.yzm').text();

                    // 手机注册页面正则测试
                    var reg2 = /^1[34578]\d{9}$/.test(t1) && /^[^\s]{1,19}$/.test(t3) && t4 == t3 && /^[\u2E80-\u9FFF]+$/.test(t5) && t6 == $('.yzm').text();

                    // 协议勾选测试
                     var z_buer = $('#z_xieyi').prop('checked');


                    // 先判断邮箱注册条是否非空，非空就是邮箱注册，否则就是手机注册页面
                        if( (t2 == '' && reg2 && z_buer && testName.indexOf(t5)<0 ) || (t2 !== '' && reg1 && z_buer && testName.indexOf(t5)<0)){
                                        alert('恭喜你注册成功！');

                                        if(t2 == ''){
                                            // 把注册信息发送至后台数据库录入保存
                                        $.get({url:'../api/reg_submit.php',data:{'nickname':t5,'password':t3,'phone':t1}}) 
                                    }else{
                                        $.get({url:'../api/userdata.php',data:{'nickname':t5,'password':t3,'phone':t1,'emails':t2}}) 
                                    }
                                       
                                         
                              }else{
                                     alert('请正确填写注册信息');
                
                               }
                                 
                 })  
    })
})