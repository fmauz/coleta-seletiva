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

    if answer.number_only
      options["data-number-only"] = true
      options[ "data-mask-format "] = answer.max_length.times.map{ |a| "9" }.join
    end

    if answer.is_cpf
      options["data-cpf-only"] = "true"
    end

    if answer.is_cnpj
      options["data-cnpj-only"] = "true"
    end

    if answer.is_cep
      options["data-cep-only"] = "true"
    end

    if answer.is_telefone
      options["data-telefone-only"] = "true"
    end

    if answer.is_percent
      options["data-porcentagem-only"] = true
    end

    if answer.is_kilos
      options["data-kilos-only"] = true
    end


    if answer.currency_only
      options["data-currency-only"] = true
    end

    if answer.is_short_date
      options["data-shortdate-only"] = true
    end

    return render_input( answer, f, options ) if answer.answer_type.id == 1
    return render_checks( answer, fq, options ) if answer.answer_type.id == 2
    return render_radios( answer, f, options ) if answer.answer_type.id == 3
    return render_select( answer, f, options ) if answer.answer_type.id == 4
  end

  def render_input( answer, f, options )
    new_options = { class: "form-control", placeholder: answer.placeholder, readonly: answer.disabled }.merge!(options)
    help_block = answer.help_block.blank? ? "" : "<span class='input-group-addon'>#{answer.help_block}</span>".html_safe
    (
      ( answer.label_text.blank? ? "" : f.label(:value, answer.label_text) ) +
      ( help_block.blank? ? "" : "<div class='input-group'>" ).html_safe +
      help_block +
      f.text_field(:value, new_options ) +
      ( help_block.blank? ? "" : "</div>" ).html_safe
    ).html_safe
  end

  def render_radios( answer, f, options )
    (
      ( f.object.new_record? ? "" : f.hidden_field( :id ) ) +
      answer.answer_collections.map{|ac|
          ("<div class='radio'>" +
                        ("<label>" +
                          f.hidden_field(:answer_id, value: answer.id ) +
                          f.radio_button(:value, ac.value, onchange: ac.event_js) + ac.text +
                          "</label>").html_safe +
                      "</div>").html_safe
      }.join.html_safe
    ).html_safe
  end

  def render_checks( answer, f, options )
    (
      ( f.object.new_record? ? "" : f.hidden_field( :id ) ) +
      ( answer.label_text.blank? ? "" : f.label(:value, answer.label_text) ) +
        answer.answer_collections.map{|ac|
        f.fields_for :card_answers, CardAnswer.new do |fa|
          ("<div class='checkbox'>" +
                        ("<label>" +
                          fa.hidden_field(:answer_id, value: answer.id ) +
                          fa.check_box(:value, { onchange: ac.event_js }, ac.value ) + ac.text +
                          "</label>").html_safe +
                      "</div>").html_safe
        end
      }.join.html_safe
    ).html_safe
  end

  def render_select( answer, f, options )
    (
      ( f.object.new_record? ? "" : f.hidden_field( :id ) ) +
      ( answer.label_text.blank? ? "" : f.label(:value, answer.label_text) ) +
        f.select( :value, answer.answer_collections.collect{|a| [a.text, a.value] }, {}, class: "form-control" )
    ).html_safe
  end
end
