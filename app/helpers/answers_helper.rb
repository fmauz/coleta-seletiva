module AnswersHelper

  def render_answer( answer, f, fq )
    options = {}

    unless answer.query_string.blank?
      options["data-query-string"] = answer.query_string
    end

    unless answer.ajax_url.blank?
      options["data-ajax-url"] = answer.ajax_url
    end

    unless answer.element_ajax.blank?
      options["data-element-ajax"] = answer.element_ajax
    end

    if answer.required
      options["required"] = ""
    end

    if answer.min_length
      options["minlength"] = answer.min_length
    end

    if answer.max_length
      options["maxlength"] = answer.max_length
    end
    
    return render_input( answer, f, options ) if answer.answer_type.id == 1
    return render_checks( answer, fq, options ) if answer.answer_type.id == 2
    return render_radios( answer, f, options ) if answer.answer_type.id == 3
    return render_select( answer, f, options ) if answer.answer_type.id == 4
  end

  def render_input( answer, f, options )
    (( answer.label_text.blank? ? "" : f.label(:value, answer.label_text) ) +
    f.text_field(:value, {class: "form-control", placeholder: answer.placeholder, readonly: answer.disabled }.merge!(options) )).html_safe
  end

  def render_radios( answer, f, options )
    answer.answer_collections.map{|ac|
        ("<div class='radio'>" + 
                      ("<label>" +
                        f.hidden_field(:answer_id, value: answer.id ) +
                        f.radio_button(:value, ac.value) + ac.text + 
                        "</label>").html_safe +
                    "</div>").html_safe
    }.join.html_safe
  end

  def render_checks( answer, f, options )
    answer.answer_collections.map{|ac|
      f.fields_for :card_answers, CardAnswer.new do |fa|
        ("<div class='checkbox'>" + 
                      ("<label>" + 
                        fa.hidden_field(:answer_id, value: answer.id ) +
                        fa.check_box(:value, {}, ac.value, "") + ac.text + 
                        "</label>").html_safe +
                    "</div>").html_safe
      end
    }.join.html_safe
  end

  def render_select( answer, f, options )
    f.select :value, answer.answer_collections.collect{|a| [a.text, a.value] }, {}, class: "form-control"
  end
end

