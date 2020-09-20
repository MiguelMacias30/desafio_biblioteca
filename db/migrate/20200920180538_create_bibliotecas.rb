class CreateBibliotecas < ActiveRecord::Migration[5.2]
  def change
    create_table :bibliotecas do |t|
      t.string :titulo
      t.string :autor
      t.boolean :estado
      t.datetime :fecha_prestado
      t.datetime :fecha_devolucion

      t.timestamps
    end
  end
end
