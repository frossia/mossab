ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do


    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
       column do
         panel "Recent Posts" do
           ul do
             Post.limit(5).map do |post|
               li link_to(post.title, admin_post_path(post))
             end
           end
         end
       end


       column do
         panel "Info" do
           para "Welcome to ActiveAdmin."
         end
       end

       column do
         panel 'Папка хранящихся файлов' do
           div do
             span 'Размер '
             strong public_size[0].to_s + ' Mb'
           end
           div do
             span 'Всего '
             strong public_size[1].to_s + ' файлов'
           end
           div do
             link_to 'Сделать бэкап', '#', :onclick => 'sum_fn'
           end
         end
       end

    end
  end # content

end
