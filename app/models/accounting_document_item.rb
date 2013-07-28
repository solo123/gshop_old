class AccountingDocumentItem < ActiveRecord::Base
  attr_accessible :accounting_subject, :brief, :credit, :debit
end
