-- Insertar roles
INSERT INTO roles (name) VALUES ('admin'), ('invitado')
ON CONFLICT (name) DO NOTHING;

-- Insertar usuario admin
-- Contraseña: Admin1234! (bcrypt, 10 rounds)
INSERT INTO users (name, email, password, role_id)
VALUES (
    'Administrador',
    'admin@tne.com',
    '$2b$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',
    (SELECT id FROM roles WHERE name = 'admin')
)
ON CONFLICT (email) DO NOTHING;