require "html/pipeline"

context = {
  gfm: true,
  video_width: 700,
  video_height: 387
}

filters = [
  Homeland::Pipeline::NormalizeMentionFilter,
  Homeland::Pipeline::EmbedVideoFilter,
  Homeland::Pipeline::MarkdownFilter,
  Homeland::Pipeline::MentionFilter,
  Homeland::Pipeline::FloorFilter,
  Homeland::Pipeline::TwemojiFilter
]

TopicPipeline = HTML::Pipeline.new(filters, context)

module Homeland
  class Markdown
    class << self
      def call(body)
        result = TopicPipeline.call(body)[:output].inner_html
        result.strip!
        result
      end

      def example
        @example ||= <<~EXAMPLE
        # Guide

        这是一篇讲解如何正确使用 **Markdown** 的排版示例，学会这个很有必要，能让你的文章有更佳清晰的排版。

        > 引用文本：以无法为有法，以无限为有限，是为武术最高境界！

        ## 语法指导

        ### 普通内容

        这段内容展示了在内容里面一些小的格式，比如：

        - **加粗** - `**加粗**`
        - *倾斜* - `*倾斜*`
        - ~~删除线~~ - `~~删除线~~`
        - `Code 标记` - `\`Code 标记\``
        - [超级链接](http://ftghub.com) - `[超级链接](http://ftghub.com)`
        - [username@gmail.com](mailto:username@gmail.com) - `[username@gmail.com](mailto:username@gmail.com)`

        ### 提及用户

        @foo @bar @someone ... 通过 @ 可以在发帖和回帖里面提及用户，信息提交以后，被提及的用户将会收到系统通知。以便让他来关注这个帖子或回帖。

        ### 表情符号 Emoji

        支持表情符号，你可以用系统默认的 Emoji 符号（无法支持 Windows 用户）。
        也可以用图片的表情，输入 `:` 将会出现智能提示。

        #### 一些表情例子

        :smile: :laughing: :dizzy_face: :sob: :cold_sweat: :sweat_smile:  :cry: :triumph: :heart_eyes: :relaxed: :sunglasses: :weary:

        :+1: :-1: :100: :clap: :bell: :gift: :question: :bomb: :heart: :coffee: :cyclone: :bow: :kiss: :pray: :sweat_drops: :hankey: :exclamation: :anger:

        ### 大标题 - Heading 3

        你可以选择使用 H2 至 H6，使用 ##(N) 打头，H1 不能使用，会自动转换成 H2。

        > NOTE: 别忘了 # 后面需要有空格！

        #### Heading 4

        ##### Heading 5

        ###### Heading 6

        ### 图片

        ```
        ![alt 文本](http://image-path.png)
        ![alt 文本](http://image-path.png "图片 Title 值")
        ![设置图片宽度高度](http://image-path.png =300x200)
        ![设置图片宽度](http://image-path.png =300x)
        ![设置图片高度](http://image-path.png =x200)
        ```

        ### 有序、无序列表

        #### 无序列表

        - 内家拳
          - 太极拳
            - 杨氏太极拳
        - 外家拳
          - 少林拳
          - 八极拳

        #### 有序列表

        1. 太极拳
          1. 陈氏太极拳
          2. 杨氏太极拳
          3. 吴氏太极拳
        2. 空手道
          1. 极真流
          2. 松涛流
        3. 泰拳

        ### 表格

        如果需要展示数据什么的，可以选择使用表格哦

        | header 1 | header 3 |
        | -------- | -------- |
        | cell 1   | cell 2   |
        | cell 3   | cell 4   |
        | cell 5   | cell 6   |

        ### 段落

        留空白的换行，将会被自动转换成一个段落，会有一定的段落间距，便于阅读。

        请注意后面 Markdown 源代码的换行留空情况。

        ### 视频插入

        目前支持 Youtube 和 Youku 两家的视频插入，你只需要复制视频播放页面，浏览器地址栏的网页 URL 地址，并粘贴到话题／回复文本框，提交以后将自动转换成视频播放器。

        #### 例如

        **Youtube**

        https://www.youtube.com/watch?v=CvVvwh3BRq8

        **Vimeo**

        https://vimeo.com/199770305

        **Youku**

        http://v.youku.com/v_show/id_XMjQzMTY1MDk3Ng==.html

        ···

        EXAMPLE
      end
    end
  end
end
