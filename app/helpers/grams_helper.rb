module GramsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_grams_path
    elsif action_name == 'edit'
      gram_path
    end
  end
end
