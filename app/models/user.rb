class User < ApplicationRecord
	has_secure_password

	validates :login, {
		presence: {
			message: "Не может быть пустым"
		},
		uniqueness: {
			message: "Пользователь под данным логином уже зарегистрирован"
		}
	}

	validates :email, {
    presence: {
      message: "Не может быть пустым"
    },
    uniqueness: {
      message: "Пользователь под данным email уже зарегистрирован"
    },
    format: {
      with: /(?:[a-z0-9!#$%&'*+\=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+\=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])/,
      message: "Не корректный ввод email адреса"
    }
  }

  validates :password, {
    presence: {
      message: "Пароль не может содержать пробелы"
    },
    length: {
      minimum: 8,
      message: "Минимальная длина пароля - 8 символов"
    },
		comparison: {
			equal_to: :password_confirmation,
			message: "Пароли не совпадают"
		}
  }
	
end
