class ChangeColumnTypes < ActiveRecord::Migration
  def change
    execute %q{
      alter table cards
      alter column year
      type int using cast(year as int)
    }

    execute %q{
      alter table cards
      alter column month
      type int using cast(month as int)
    }
  end
end
