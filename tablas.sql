

COMMENT ON TABLE usuario IS 'Tabla usuario. correo almacena la direccionde correo electronico del usuario, contrasena es la contraseña del usuario ';
CREATE TABLE usuario
(
  correo text NOT NULL,
  contrasena character varying(256)[],
  CONSTRAINT pk_usuario_correo PRIMARY KEY (correo),
  CONSTRAINT not_null_contrasena CHECK (NOT NULL::boolean)
)

COMMENT ON TABLE usuario IS 'Tabla codigos. idCodigo es el código de un usuario que se identifica con correo, fecha almacena la fecha de generacion de los codigos 
y dispositivo indica desde que dispositivo se pidieron los codigos de seguridad';
CREATE TABLE codigos
(
  "idCodigo" integer NOT NULL,
  dispositivo text,
  fecha time with time zone,
  correo text,
  CONSTRAINT "pk_codigos_idCodigo" PRIMARY KEY ("idCodigo"),
  CONSTRAINT fk_usuario_correo FOREIGN KEY (correo)
      REFERENCES usuario (correo) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT not_null_fecha CHECK (NOT NULL::boolean)
)

