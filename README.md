## kamiiyu-blog-demo
- http://kamiiyu-demo-blog.herokuapp.com/

## 功能说明
1. 用户注册 => http://kamiiyu-demo-blog.herokuapp.com/users/sign_in
2. 发布post（只能是会员发布） => http://kamiiyu-demo-blog.herokuapp.com/users/1/posts/new
3. post支持markdown语法 => http://kamiiyu-demo-blog.herokuapp.com/users/1/posts/1/edit
4. 发布评论  
     * 查看评论 => http://kamiiyu-demo-blog.herokuapp.com/users/1/posts/1
     * 发布评论（会员与非会员都可以发布） => http://kamiiyu-demo-blog.herokuapp.com/users/1/posts/1/comments/new
     
## 开发过程
##### 简单说明：  
1. 代码全部在scaffold的基础上修改  
2. 用户相关功能用了<a href="https://github.com/plataformatec/devise">devise</a>来实现  
3. markdown功能用了<a href="https://github.com/vmg/redcarpet">redcarpet</a>来实现
4. posts_controller的基本测试
    * rake test test/controllers/posts_controller_test.rb  
5. validates_presence_of :title, :body  
    *  app/models/post.rb 
