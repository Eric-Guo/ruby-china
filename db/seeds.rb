<<<<<<< HEAD
# ============ init Section, Node ================
s1 = Section.create(name: 'Share')
Node.create(name: 'Fun', summary: '...', section_id: s1.id)
Node.create(name: 'Movie', summary: '...', section_id: s1.id)
Node.create(name: 'Music', summary: '...', section_id: s1.id)
s2 = Section.create(name: 'Geek')
Node.create(name: 'Apple', summary: '...', section_id: s2.id)
Node.create(name: 'Google', summary: '...', section_id: s2.id)
Node.create(name: 'Coding', summary: '...', section_id: s2.id)
Node.create(name: 'PlayStation / XBox', summary: '...', section_id: s2.id)
=======
# ========================= init Section, Node =========================

s1 = Section.create(name: 'Tensorflow应用')
Node.create(name: '安装', summary: '入坑Tensorflow。', section_id: s1.id)
Node.create(name: '部署', summary: '部署方面的讨论。', section_id: s1.id)
Node.create(name: '硬件攒机', summary: '核弹卡攒机指南。', section_id: s1.id)
Node.create(name: '新手问题', summary: '大家都是老司机，所以这个节点主要是问天气的。。', section_id: s1.id)
Node.create(name: 'TensorBoard', summary: '看着TensorBoard给自己创造的人工智能鼓劲！', section_id: s1.id)
Node.create(name: 'AWS', summary: '20美刀一小时的GPU满级机器在此。', section_id: s1.id)
Node.create(name: 'Google Cloud', summary: 'TPU独此一家。', section_id: s1.id)

s2 = Section.create(name: 'Tensorflow开发')
Node.create(name: '扩展', summary: '加个新Op，新插件等相关问题。', section_id: s2.id)
Node.create(name: '集成', summary: '讨论如何使用C API和其他系统集成。', section_id: s2.id)

s3 = Section.create(name: '神经网络理论')
Node.create(name: 'Recurrent nets', summary: 'Recurrent neural network', section_id: s3.id)
Node.create(name: 'Convolutional nets', summary: 'Convolutional neural network', section_id: s3.id)
Node.create(name: 'RBM/DBNs', summary: 'Restricted Boltzmann machine/Deep belief network', section_id: s3.id)
Node.create(name: 'DQN', summary: 'Deep-Q network', section_id: s3.id)
Node.create(name: 'GCGAN', summary: 'Deep Convolutional Generative Adversarial Networks', section_id: s3.id)

s4 = Section.create(name: '其他AI框架')
Node.create(name: 'Keras', summary: '既然Keras可以生成Tensorflow代码，这个板块才是主题。', section_id: s4.id)
Node.create(name: 'TFLearn', summary: 'Deep learning library featuring a higher-level API for TensorFlow. ', section_id: s4.id)
Node.create(name: 'MXNet', summary: '国人主导，亚马逊背书的轻量化社区驱动框架。', section_id: s4.id)
Node.create(name: 'Caffe', summary: '配置型，带Matlab接口的老牌框架。', section_id: s4.id)
Node.create(name: 'touch', summary: '使用lua做驱动的基于OpenCL的框架。', section_id: s4.id)

s5 = Section.create(name: '活动')
Node.create(name: '线下活动', summary: '发布同城线下活动。', section_id: s5.id)
Node.create(name: '访谈', summary: '本站记者采访相关大神的内容。', section_id: s5.id)

s6 = Section.create(name: '站务与公告')
Node.create(name: '公告', summary: '本站公布消息专用，大家别乱发到这里哦！', section_id: s6.id)
Node.create(name: '反馈', summary: '对于本论坛的政策和方法遇到了问题？可以在这里提问讨论。', section_id: s6.id)
Node.create(name: '违规处理区', summary: '以下几种情况的帖子可能会进入此节点，简而言之，被管理员认为浪费大家时间的。', section_id: s6.id, id: 61)

SiteNode.create(name: '国内人工智能网站', sort: 100)
SiteNode.create(name: '国外人工智能网站', sort: 99)
>>>>>>> Tensorflow-China.org changes.
