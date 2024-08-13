cpf = "4822854890"

def validate_cpf(cpf)
  cpf_list = cpf.chars.reverse()
  total_first_count = calculate_sum(cpf_list, 2)
  first_digit = calculate_verify_digit(total_first_count)
  total_second_count = calculate_sum(cpf_list, 1)
  p total_second_count
  second_digit = calculate_verify_digit(total_second_count)


  # p cpf_list[0].to_i
  # p second_digit

  raise 'CPF Inválido' if first_digit != cpf_list[1].to_i || second_digit != cpf_list[0].to_i
end

def calculate_sum(cpf_list, limit)
  p cpf_list
  total = 0
  count = 2
  p cpf_list[limit]

  for i in limit..9

    total = total + (count * cpf_list[i].to_i)
    count = count + 1
  end

  p total
  total
end

def calculate_verify_digit (total)
  rest = total % 11
  rest = 0 if rest < 2

  11 - rest
end

validate_cpf(cpf)
