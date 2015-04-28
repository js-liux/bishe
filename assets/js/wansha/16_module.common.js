/**
 * @name zhangyy-g@grandsoft.com.cn
 * @description zhangyy's code
 * Date: 14-9-17
 * Time: 下午10:24
 *
 */

$(function () {
    $(document).ajaxError(function (e, xhr, ajaxSettings, thrownError) {
        /*if (xhr.status === 404) {
         //window.location.href = App.modules.util.rootPath + '/error/404'
         return
         }*/
        xhr.responseText && App.common.modules.smallnote(xhr.responseText, {
            pattern: 'error'
        })
    })

    $(document).ajaxSuccess(function (e, xhr, ajaxSettings) {
        var data = JSON.parse(xhr.responseText)
        if (data.code != 200) {
            App.common.modules.smallnote(data.message, {
                pattern: 'error'
            })
        }
    })
})

;
(function ($) {
    var common = {
        isEmail: function (email) {
            return /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/.test(email)
        },
        isMobile: function (mobile) {
            return /^\d{11}$/.test(mobile)
        },
        isCode: function (code) {
            return /^\d{6}$/.test(code)
        },
        isUsername: function (username) {
            return /[\u4E00-\u9FA5 A-Z a-z 0-9 _]{2,12}/.test(username)
        },
        scrollTo: function (top, callback) {
            top = top || 0
            $(document.body).animate({
                scrollTop: top
            }, 'fast', function () {
                callback && callback()
            })
        },
        emailGoto: function (email) {
            if (!this.isEmail(email)) {
                return email
            }
            var emailList = {
                'qq.com': 'https://mail.qq.com/',
                'gmail.com': 'http://gmail.google.com/',
                '163.com': 'http://mail.163.com/',
                'hotmail.com': 'http://www.hotmail.com/',
                '126.com': 'http://www.126.com/',
                'sohu.com': 'http://mail.sohu.com/',
                'sina.com': 'http://mail.sina.com.cn/',
                'sogou.com': 'http://mail.sogou.com/',
                '139.com': 'http://mail.10086.cn/',
                'yeah.net': 'http://mail.yeah.net/',
                '21cn.com': 'http://mail.21cn.com/',
                "outlook.com": "http://www.outlook.com/",
                'eyou.com': 'http://www.eyou.com/'
            }
            var domain = email.split('@')[1]
            return emailList[domain] || 'http://mail.' + domain
        },
        wrapPhotoPath: function (filePath) {
            return {
                thumbnall_100: filePath.replace('_X_X', '_THUMBNAIL_100_100'),
                thumbnall_200: filePath.replace('_X_X', '_THUMBNAIL_200_200'),
                thumbnall_600: filePath.replace('_X_X', '_THUMBNAIL_600_600'),
                compress: filePath.replace('_X_X', '_COMPRESS_'),
                realPath: filePath.replace('_X_X', '')
            }
        },
        paramOfUrl: function (url) {
            url = url || location.href;
            var paramSuit = url.substring(url.indexOf('?') + 1).split("&");
            var paramObj = {};
            for (var i = 0; i < paramSuit.length; i++) {
                var param = paramSuit[i].split('=');
                if (param.length == 2) {
                    var key = decodeURIComponent(param[0]);
                    var val = decodeURIComponent(param[1]);
                    if (paramObj.hasOwnProperty(key)) {
                        paramObj[key] = jQuery.makeArray(paramObj[key]);
                        paramObj[key].push(val);
                    }
                    else {
                        paramObj[key] = val;
                    }
                }
            }
            return paramObj;
        },
        setStore: function (key, value) {
            var store = window.localStorage
            if (store) {
                store[key] = value
            }
        },

        getStore: function (key) {
            var store = window.localStorage
            if (store) {
                return store[key]
            }

            return null
        },

        inputType: function (input, callback) {
            var timer = null

            input.keyup(function (evt) {
                clearTimeout(timer)

                timer = setTimeout(function () {
                    callback && callback(input, evt)
                }, 200)
            })
        }
    }

    App.common.modules.common = common
})(jQuery)