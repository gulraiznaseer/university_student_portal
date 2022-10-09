Rails.application.routes.draw do
  root "home#index"
  
  devise_for :admins, path: '', path_names: { sign_in: '/admin/sign_in', sign_out: 'admin/sing_out' }, controllers: {
    sessions: 'admin/sessions'
  }

  devise_for :students, path: '', path_names: { sign_in: '/student/sign_in', sign_out: 'student/sing_out' }, controllers: {
    sessions: 'student/sessions'
  }

  devise_for :faculty_members, path: '', path_names: { sign_in: '/faculty_member/sign_in', sign_out: 'faculty_member/sing_out' }, controllers: {
    sessions: 'faculty_member/sessions'
  }
end
