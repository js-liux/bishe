/**
 * Created by jade on 15-3-12.
 */
(function ($) {
    var ask = {
        init: function (container, options) {
            var self = this
            self.__container = container
            self.__options = options

            self.__initView()

            self.__bindEvent()
        },

        __initView: function () {
            var self = this
            var container = self.__container
            var options = self.__options

            container.html(Mustache.render(self.__tpl, options))

            self.__initUM()
        },

        __initUM: function () {
            var self = this
            self.__um && self.__um.destroy()
            var um = self.__um = UM.getEditor('ask-supplement', {
                //这里可以选择自己需要的工具按钮名称,此处仅选择如下五个
                toolbar: ['bold italic link unorderedlist orderedlist table image simpleupload'],
                //focus时自动清空初始化时的内容
                autoClearinitialContent: true,
                //关闭字数统计
                wordCount: false,
                //关闭elementPath
                elementPathEnabled: false,
                //默认的编辑区域高度
                initialFrameHeight: 110,
                retainOnlyLabelPasted: true
            })
        },

        __bindEvent: function () {
            var self = this
            var container = self.__container
            var options = self.__options

            var tagRequest = null
            var tagSearchPanel = container.find('.tag-search-panel')
            //标签输入框
            App.common.modules.common.inputType(container.find('.tag-input'), function (item, evt) {
                var which = evt.which
                switch (which) {
                    case 13:
                        //enter
                        tagSearchPanel.find('.active').trigger('click')
                        break
                    case 40:
                        //down
                        var active = tagSearchPanel.find('.active').removeClass('active')
                        var next = active.next()
                        if(next.size()) {
                            next.addClass('active')
                        }else {
                            active.addClass('active')
                        }
                        break
                    case 38:
                        var active = tagSearchPanel.find('.active').removeClass('active')
                        var prev = active.prev()
                        if(prev.size()) {
                            prev.addClass('active')
                        }else {
                            active.addClass('active')
                        }
                        //up
                        break
                    default:
                        var value = item.val()
                        tagRequest && tagRequest.abort()
                        if (!value) {
                            tagSearchPanel.hide()
                            return false
                        }
                        tagRequest = $.ajax({
                            url: '/ask/searchTag',
                            method: 'get',
                            data: {
                                key: value
                            },
                            success: function (data) {
                                if (data.code == 200) {
                                    var items = data.data
                                    tagSearchPanel.show().find('.tag-name').text(value).attr('title', value)
                                    var resultPanel = tagSearchPanel.find('.tag-search-result').find('.tag-search-item').remove().end()
                                    if (items.length > 0) {
                                        var panel = $(Mustache.render(self.__tagSearchItemTpl, {item: data.data}))
                                        panel.prependTo(resultPanel)
                                        resultPanel.find('a').first().addClass('active')
                                    }
                                }
                            }
                        })
                        break
                }
            })

            //点击标签
            container.on('click', '.tag-item', function () {
                var item = $(this)
                if (item.hasClass('tag-type')) {
                    item.siblings('.tag-type').removeClass('active')
                }

                item.toggleClass('active')
            })

            //点击搜索后的标签
            tagSearchPanel.on('click', '.tag-search-item', function () {
                var item = $(this)
                var id = item.data('id')
                var name = item.text()
                var itemSpan = container.find('.tag-item[data-id="' + id + '"]')

                if (!itemSpan.length) {
                    $(Mustache.render(self.__tagItemTpl, {
                        item: {
                            id: id,
                            name: name
                        }
                    })).addClass('active').appendTo($('.tag-suggest'))
                } else {
                    itemSpan.addClass('active')
                }

                tagSearchPanel.hide()
                container.find('.tag-input').val('')
            })

            //新建标签
            tagSearchPanel.on('click', '.tag-create-item', function () {
                var value = $.trim(container.find('.tag-input').val())

                $.ajax({
                    url: '/s/addQaTag',
                    method: 'post',
                    data: {
                        tagName: value,
                        currentUserKey: 'createUserId',
                        tagType: 'topic'
                    },
                    global: false,
                    success: function (data) {
                        var code = data.code
                        if (data.code == 200 || code == 5101) {
                            var item = data.data
                            var itemSpan = container.find('.tag-item[data-id="' + item.tagId + '"]')

                            if (!itemSpan.length) {
                                $(Mustache.render(self.__tagItemTpl, {
                                    item: {
                                        id: item.tagId,
                                        name: item.tagName
                                    }
                                })).addClass('active').appendTo($('.tag-suggest'))
                            } else {
                                itemSpan.addClass('active')
                            }

                            tagSearchPanel.hide()
                        }
                    }
                })
            })

            //提交问题
            container.on('click', '.submit-btn', function () {
                var questionInput = container.find('.desc-input')
                var question = questionInput.val()
                var detail = $.trim(self.__um.getContent())
                var type = container.find('.tag-type.active').data('type') || '通用'
                var tags = _.map(container.find('.tag-item.active'), function (item) {
                    return $(item).data('id')
                }).join(',')
                var error = container.find('.error').hide()

                if (!question) {
                    App.common.modules.smallnote('请输入您的问题', {
                        pattern: 'error'
                    })
                    questionInput.focus()
                    return false
                }

                var that = $(this)
                if (that.hasClass('disabled')) return false
                that.addClass('disabled')

                $.ajax({
                    url: '/s/addQuestion',
                    method: 'post',
                    data: {
                        questionTitle: question,
                        questionDetail: detail,
                        currentUserKey: 'posterId',
                        type: type,
                        tags: tags
                    },
                    beforeSend: function () {
                        App.common.modules.smallnote('正在提交问题，请稍后')
                    },
                    success: function (data) {
                        that.removeClass('disabled')
                        if (data.code == 200) {
                            options.callback && options.callback(true)
                            window.location.href = '/ask/' + data.data.questionId
                            /*if (window.location.pathname == '/ask') {
                             window.location.reload()
                             } else {
                             App.common.modules.smallnote('恭喜您，创建问题成功，您可以去问答广场逛逛！')
                             }*/
                        }
                    }
                })
            })
        }
    }

    ask.__tpl = '' +
    '<div class="mod-ask clr">' +
    '   <h2><i class="iconfont">&#xe60a;</i>&nbsp;一句话描述你的疑问，众多数码达人为您量身解答</h2>' +
    '   <div class="desc-wrap">' +
    '       <input class="desc-input" type="text" placeholder="描述你的需求、疑问（限制长度50字）" value="{{question}}" maxlength="50" />' +
    '   </div>' +
    '   <a class="ask-rule f-r" href="http://www.wanshar.com/article/1917/view" target="_blank">？提问规范</a>' +
    '   <h3><i class="iconfont">&#xe608;</i>&nbsp;问题补充（可选）</h3>' +
    '   <div id="ask-supplement" class="supplement-wrap article-detail"></div>' +
    '   <h3><i class="iconfont">&#xe601;</i>&nbsp;问题标签（精确的标签能让最懂的人看到您的问题）</h3>' +
    '   <div class="tag-wrap clr">' +
    '       <div class="tag-suggest">' +
    '           <span data-id="661" class="tag-item tag-type" data-type="求推荐">求推荐</span>' +
    '           <span data-id="663" class="tag-item tag-type" data-type="求比较">求比较</span>' +
    '           <span data-id="3764" class="tag-item tag-type" data-type="求评价">求评价</span>' +
    '           <span data-id="3765" class="tag-item tag-type" data-type="如何选">如何选</span>' +
    '           <span data-id="3392" class="tag-item" data-type="手机">手机</span>' +
    '           <span data-id="3766" class="tag-item" data-type="电脑">电脑</span>' +
    '           <span data-id="665" class="tag-item" data-type="手表">手表</span>' +
    '           <span data-id="44" class="tag-item" data-type="智能硬件">智能硬件</span>' +
    '       </div>' +
    '   </div>' +
    '   <div class="error"></div>' +
    '   <div class="clr">' +
    '       <div class="tag-input-wrap">' +
    '           <input class="tag-input" type="text" placeholder="输入标签" />' +
    '           <div class="tag-search-panel">' +
    '               <div class="tag-search-result">' +
    '                   <a class="tag-create-item"><i class="iconfont">&#xe60c;</i>&nbsp;创建新标签“<span class="tag-name"></span>”</a>' +
    '               </div>' +
    '           </div>' +
    '       </div>' +
    '       <div class="submit-btn f-r">提问</div>' +
    '   </div>' +
    '</div>'

    ask.__tagItemTpl = '{{#item}}<span data-id="{{id}}" class="tag-item">{{name}}</span>{{/item}}'

    ask.__tagSearchItemTpl = '{{#item}}<a class="tag-search-item" data-id="{{id}}">{{name}}</a>{{/item}}'

    App.common.modules.ask = ask
})(jQuery)