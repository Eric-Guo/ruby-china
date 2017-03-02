# ========================= init Section, Node =========================

s1 = Section.create(name: '格斗技术交流')
Node.create(name: '格斗术问与答', summary: '古之学者必有师，师者，所以传道受业解惑也，人非生而知之者，孰能无惑？惑而不从师，其为惑也，终不解矣。', section_id: s1.id)
Node.create(name: '格斗术分享', summary: '分享一些好文、好书、好帖子。如是转载需要针对作者同意。', section_id: s1.id)

s2 = Section.create(name: '热门格斗技')
Node.create(name: '太极拳', summary: '太极拳，是中国传统武术的一种，太极拳讲究中定、放松、心静、慢练及九曲珠。', section_id: s2.id)
Node.create(name: '跆拳道', summary: '跆拳道，是一种主要使用手及脚以进行格斗或对抗的运动。', section_id: s2.id)
Node.create(name: '空手道', summary: '空手道，包含踢、打、摔、拿、投、锁、绞、逆技等多种技术。', section_id: s2.id)
Node.create(name: '拳击', summary: '拳击，是一项两位选手使用拳头进行攻击与防御的体育运动，具有悠久的历史。', section_id: s2.id)
Node.create(name: '咏春拳', summary: '咏春拳，是近代新兴及流行的武术。', section_id: s2.id)
Node.create(name: '截拳道', summary: '截拳道（英语：Jeet Kune Do，英文简称JKD，为粤语音译）。是李小龙于生前，正在构思并实行的一套近代“武术哲学”。', section_id: s2.id)
Node.create(name: '泰拳', summary: '泰拳，是泰国的传统搏击技术，特点是可以在极短的距离下，利用肘、膝、拳、腿进行攻击，是一种非常注重实用性和杀伤力的武术。', section_id: s2.id)
Node.create(name: '合气道', summary: '合气道，是一种根源于日本大东流合气柔术的近代武术，主要特点是在“以柔克刚”（以软克硬），“借劲使力”，“不主动攻击”。', section_id: s2.id)

s3 = Section.create(name: '格斗人生')
Node.create(name: '格斗笔记', summary: '格斗技术相关赛事信息', section_id: s3.id)
Node.create(name: '个人秀', summary: '发布个人关于格斗技术的照片、装备、视频链接等信息。', section_id: s3.id)

s4 = Section.create(name: '活动')
Node.create(name: '线下活动', summary: '发布同城线下活动', section_id: s4.id)
Node.create(name: '访谈', summary: '本站记者采访格斗爱好者的内容', section_id: s4.id)

s5 = Section.create(name: '教学')
Node.create(name: '武术场馆', summary: '武术场馆栏目规则：《武术场馆信息发布注意！》请仔细阅读!', section_id: s5.id)
Node.create(name: '职业教练与导师', summary: '职业教练与导师：《发布职业教练与导师信息注意！》请仔细阅读!', section_id: s5.id)

s6 = Section.create(name: 'FTGHUB')
Node.create(name: '公告', summary: '本站公布消息专用，大家别乱发到这里哦', section_id: s6.id)
Node.create(name: '反馈', summary: '使用过程中遇到了问题，可以在这里提交。', section_id: s6.id)
Node.create(name: '违规处理区', summary: '以下几种情况的帖子可能会进入此节点', section_id: s6.id, id: 61)

SiteNode.create(name: '国内格斗技术网站', sort: 100)
SiteNode.create(name: '国外格斗技术网站', sort: 99)
