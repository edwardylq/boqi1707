
require(['config'],function(){
    require(['common','jquery'],function(co,$){
         $('footer').load('footer.html',function(){

                    // 载入远程 HTML 文件代码并插入至 DOM 中。
                    $('.footer').find('.f1').remove();
                    $('.footer').find('.f2').remove();
                    $('.footer').css('height','152px');
                    $('.footer').find('.f3').css({'background':'#F3F3F3','padding-left':'285px'});
                    $('body').css('background','#F3F3F3');
                })

                // 初始化:随机验证码生成
                $('.yzm').text(vco());

                // 验证码切换事件
                $('.yzm').click(function(){

                    // 随机验证码生成
                    $('.yzm').text(vco());

                    // 验证码随机颜色设置
                    $('.yzm').css('color',randomColor());
                 })
                $('.hyz').click(function(){

                    // 随机验证码生成
                    $('.yzm').text(vco());

                    // 验证码随机颜色设置
                    $('.yzm').css('color',randomColor());

                 })

                // 登录验证
                

                // 默认隐藏错误提示框
                $('.tips').hide();

                // 用户名密码输入验证
                $('.main2').on('blur','.it',function(){
                    setTimeout(()=>{
                        if($(this).val() === ''){
                            $('.tips').text('用户名或密码不能为空！').slideDown('fast');
                        }else{
                             $('.tips').slideUp('fast');
                        }
                    },500)
                   
                })

                // 验证码判断事件
                $('#testWord').blur(function(){
                    setTimeout(()=>{
                        if($(this).val() !== $('.yzm').text() || $(this).val() === ''){
                            $('.tips').text('验证码输入错误！').slideDown('fast');  
                        }
                        else{
                            $('.tips').slideUp('fast');
                        }
                    },800)
                })

                // 登录验证事件，请求数据库查询是否已存在，不存在则登录失败
                $('.btnlog').click(function(){

                    var $userName = $('.it').eq(0).val();
                    var $passWord = $('.it').eq(1).val();
                    if($userName  !== '' &&  $passWord !== '' && $('#testWord').val() === $('.yzm').text()){
                        // 发起ajax请求数据库验证用户名是否存在和数据正确性
                        $.ajax({
                            type:'GET',
                            url:'../api/login.php',
                            data:{'userName':$userName,'passWord':$passWord},
                            success:function(data){
                                if(data === '登录成功'){
                                    // 跳转至商城首页,并更改首页头部样式为"我的账户"
                                    location.href = "../index.html" + "?ok";
                                    
                                }else if(data === '用户名或密码有误'){
                                    alert('用户名或密码有误!');
                                }else if(data === '该用户名未注册'){
                                    alert('该用户名未注册,请注册后登录!');
                                }
                            }
                        })
                    }else{
                        $('.tips').text('验证码输入有误，请重新输入！').slideDown('fast'); 
                    }
                })
    })
})