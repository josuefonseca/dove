class Lancamento < ApplicationRecord
    validate :has_any_value?

    validates :valor_previsto, presence: true, unless: :data_prev_blank?
    validates :data_prevista, presence: true, unless: :valor_prev_blank?

    validates :valor_efetivo, presence: true, unless: :data_efet_blank?
    validates :data_efetiva, presence: true, unless: :valor_efet_blank?

    def has_any_value?
        if valor_previsto.blank? && valor_efetivo.blank?
            errors.add :base, "Algum valor é necessário: previsto e/ou efetivo"
        end
    end

    def valor_prev_blank?
        return valor_previsto.blank?
    end

    def data_prev_blank?
        return data_prevista.blank?
    end

    def valor_efet_blank?
        return valor_efetivo.blank?
    end

    def data_efet_blank?
        return data_efetiva.blank?
    end

end
