PGDMP     
                    {            herramienta_idioma    15.0    15.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17232    herramienta_idioma    DATABASE     �   CREATE DATABASE herramienta_idioma WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Paraguay.1252';
 "   DROP DATABASE herramienta_idioma;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    18200    ejercicio_práctica    TABLE       CREATE TABLE public."ejercicio_práctica" (
    id_ejercicio_practica integer NOT NULL,
    id_practica integer NOT NULL,
    id_tipo integer NOT NULL,
    tiempo_aprendido time without time zone NOT NULL,
    fecha_practica date NOT NULL,
    numero_intentos integer NOT NULL
);
 )   DROP TABLE public."ejercicio_práctica";
       public         heap    postgres    false    4            �            1259    18159    frase    TABLE     �   CREATE TABLE public.frase (
    id_frase integer NOT NULL,
    descripcion character varying NOT NULL,
    id_frase_categoria integer NOT NULL
);
    DROP TABLE public.frase;
       public         heap    postgres    false    4            �            1259    18151    frase_categoria    TABLE     }   CREATE TABLE public.frase_categoria (
    id_frase_categoria integer NOT NULL,
    descripcion character varying NOT NULL
);
 #   DROP TABLE public.frase_categoria;
       public         heap    postgres    false    4            �            1259    18158    frase_id_frase_seq    SEQUENCE     {   CREATE SEQUENCE public.frase_id_frase_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.frase_id_frase_seq;
       public          postgres    false    4    218            �           0    0    frase_id_frase_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.frase_id_frase_seq OWNED BY public.frase.id_frase;
          public          postgres    false    217            �            1259    18274    idioma    TABLE     k   CREATE TABLE public.idioma (
    id_idioma integer NOT NULL,
    descripcion character varying NOT NULL
);
    DROP TABLE public.idioma;
       public         heap    postgres    false    4            �            1259    18181    interaccion_comunidad    TABLE     x   CREATE TABLE public.interaccion_comunidad (
    id_interaccion integer NOT NULL,
    tipo character varying NOT NULL
);
 )   DROP TABLE public.interaccion_comunidad;
       public         heap    postgres    false    4            �            1259    18144    logro    TABLE     �   CREATE TABLE public.logro (
    id_logro integer NOT NULL,
    nombre character varying NOT NULL,
    descripcion character varying NOT NULL
);
    DROP TABLE public.logro;
       public         heap    postgres    false    4            �            1259    18215    nivel_idioma    TABLE     q   CREATE TABLE public.nivel_idioma (
    id_nivel_idioma integer NOT NULL,
    nivel character varying NOT NULL
);
     DROP TABLE public.nivel_idioma;
       public         heap    postgres    false    4            �            1259    18223    palabra    TABLE       CREATE TABLE public.palabra (
    id_palabra integer NOT NULL,
    palabra character varying NOT NULL,
    id_nivel_idioma integer NOT NULL,
    id_etiqueta integer NOT NULL,
    id_palabra_categoria integer NOT NULL,
    traduccion character varying NOT NULL
);
    DROP TABLE public.palabra;
       public         heap    postgres    false    4            �            1259    18260    palabra_asimilar_respuesta    TABLE     4  CREATE TABLE public.palabra_asimilar_respuesta (
    id_palabra_asimilar_respuesta integer NOT NULL,
    id_practica integer NOT NULL,
    id_ejercicio_practica integer NOT NULL,
    id_palabra_asimilar integer NOT NULL,
    respuesta character varying NOT NULL,
    correccion character varying NOT NULL
);
 .   DROP TABLE public.palabra_asimilar_respuesta;
       public         heap    postgres    false    4            �            1259    18167    palabra_categoria    TABLE        CREATE TABLE public.palabra_categoria (
    id_palabra_categoria integer NOT NULL,
    categoria character varying NOT NULL
);
 %   DROP TABLE public.palabra_categoria;
       public         heap    postgres    false    4            �            1259    18236    palabra_escuchar_respuesta    TABLE     0  CREATE TABLE public.palabra_escuchar_respuesta (
    id_palabra_unir_respuesta integer NOT NULL,
    id_ejercicio_practica integer NOT NULL,
    id_practica integer NOT NULL,
    id_palabra_escuchar integer NOT NULL,
    respuesta character varying NOT NULL,
    correccion character varying NOT NULL
);
 .   DROP TABLE public.palabra_escuchar_respuesta;
       public         heap    postgres    false    4            �            1259    18174    palabra_etiqueta    TABLE     w   CREATE TABLE public.palabra_etiqueta (
    id_etiqueta integer NOT NULL,
    descripcion character varying NOT NULL
);
 $   DROP TABLE public.palabra_etiqueta;
       public         heap    postgres    false    4            �            1259    18222    palabra_id_palabra_seq    SEQUENCE        CREATE SEQUENCE public.palabra_id_palabra_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.palabra_id_palabra_seq;
       public          postgres    false    229    4            �           0    0    palabra_id_palabra_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.palabra_id_palabra_seq OWNED BY public.palabra.id_palabra;
          public          postgres    false    228            �            1259    18248    palabra_unir_respuesta    TABLE     (  CREATE TABLE public.palabra_unir_respuesta (
    id_palabra_unir_respuesta integer NOT NULL,
    id_ejercicio_practica integer NOT NULL,
    id_practica integer NOT NULL,
    id_palabra_unir integer NOT NULL,
    respuesta character varying NOT NULL,
    correccion character varying NOT NULL
);
 *   DROP TABLE public.palabra_unir_respuesta;
       public         heap    postgres    false    4            �            1259    18255    palabras_asimilar    TABLE     �   CREATE TABLE public.palabras_asimilar (
    id_palabra_asimilar integer NOT NULL,
    id_practica integer NOT NULL,
    id_ejercicio_practica integer NOT NULL,
    id_palabra integer NOT NULL
);
 %   DROP TABLE public.palabras_asimilar;
       public         heap    postgres    false    4            �            1259    18231    palabras_escuchar    TABLE     �   CREATE TABLE public.palabras_escuchar (
    id_palabra_escuchar integer NOT NULL,
    id_ejercicio_practica integer NOT NULL,
    id_practica integer NOT NULL,
    id_palabra integer NOT NULL
);
 %   DROP TABLE public.palabras_escuchar;
       public         heap    postgres    false    4            �            1259    18243    palabras_unir    TABLE     �   CREATE TABLE public.palabras_unir (
    id_palabra_unir integer NOT NULL,
    id_ejercicio_practica integer NOT NULL,
    id_practica integer NOT NULL,
    id_palabra integer NOT NULL
);
 !   DROP TABLE public.palabras_unir;
       public         heap    postgres    false    4            �            1259    18321    palabras_usuario    TABLE     k   CREATE TABLE public.palabras_usuario (
    id_palabra integer NOT NULL,
    id_usuario integer NOT NULL
);
 $   DROP TABLE public.palabras_usuario;
       public         heap    postgres    false    4            �           0    0 "   COLUMN palabras_usuario.id_usuario    COMMENT     J   COMMENT ON COLUMN public.palabras_usuario.id_usuario IS 'id del usuario';
          public          postgres    false    245            �            1259    18139    practica    TABLE     C   CREATE TABLE public.practica (
    id_practica integer NOT NULL
);
    DROP TABLE public.practica;
       public         heap    postgres    false    4            �            1259    18297    practica_usuario    TABLE     l   CREATE TABLE public.practica_usuario (
    id_practica integer NOT NULL,
    id_usuario integer NOT NULL
);
 $   DROP TABLE public.practica_usuario;
       public         heap    postgres    false    4            �           0    0 "   COLUMN practica_usuario.id_usuario    COMMENT     J   COMMENT ON COLUMN public.practica_usuario.id_usuario IS 'id del usuario';
          public          postgres    false    241            �            1259    18195    prueba_nivel_conocimiento    TABLE     #  CREATE TABLE public.prueba_nivel_conocimiento (
    id_prueba_nivel_conocimiento integer NOT NULL,
    id_practica integer NOT NULL,
    id_tipo integer NOT NULL,
    tiempo_aprendido time without time zone NOT NULL,
    fecha_practica date NOT NULL,
    numero_intentos integer NOT NULL
);
 -   DROP TABLE public.prueba_nivel_conocimiento;
       public         heap    postgres    false    4            �            1259    18210    prueba_palabras_aprendidas_    TABLE     &  CREATE TABLE public.prueba_palabras_aprendidas_ (
    id_prueba_palabras_aprendidas integer NOT NULL,
    id_practica integer NOT NULL,
    id_tipo integer NOT NULL,
    tiempo_aprendido time without time zone NOT NULL,
    fecha_practica date NOT NULL,
    numero_intentos integer NOT NULL
);
 /   DROP TABLE public.prueba_palabras_aprendidas_;
       public         heap    postgres    false    4            �            1259    18205    prueba_palabras_dificiles    TABLE     #  CREATE TABLE public.prueba_palabras_dificiles (
    id_prueba_palabras_dificiles integer NOT NULL,
    id_practica integer NOT NULL,
    id_tipo integer NOT NULL,
    tiempo_aprendido time without time zone NOT NULL,
    fecha_practica date NOT NULL,
    numero_intentos integer NOT NULL
);
 -   DROP TABLE public.prueba_palabras_dificiles;
       public         heap    postgres    false    4            �            1259    18281 
   recompensa    TABLE     �   CREATE TABLE public.recompensa (
    id_recompensa integer NOT NULL,
    id_logro integer NOT NULL,
    nombre character varying NOT NULL,
    descripcion character varying NOT NULL
);
    DROP TABLE public.recompensa;
       public         heap    postgres    false    4            �            1259    18314    sesion    TABLE     �   CREATE TABLE public.sesion (
    id_sesion integer NOT NULL,
    id_usuario integer NOT NULL,
    descripcion character varying NOT NULL,
    tiempo_sesion time without time zone NOT NULL
);
    DROP TABLE public.sesion;
       public         heap    postgres    false    4            �           0    0    COLUMN sesion.id_usuario    COMMENT     @   COMMENT ON COLUMN public.sesion.id_usuario IS 'id del usuario';
          public          postgres    false    244            �            1259    18267    tipo_usuario    TABLE     q   CREATE TABLE public.tipo_usuario (
    id_tipousuario integer NOT NULL,
    nombre character varying NOT NULL
);
     DROP TABLE public.tipo_usuario;
       public         heap    postgres    false    4            �            1259    18188    tipos_ejercicio    TABLE     r   CREATE TABLE public.tipos_ejercicio (
    id_tipo integer NOT NULL,
    descripcion character varying NOT NULL
);
 #   DROP TABLE public.tipos_ejercicio;
       public         heap    postgres    false    4            �            1259    18289    usuario    TABLE     +  CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    correo character varying NOT NULL,
    contrasenha character varying NOT NULL,
    nombre character varying NOT NULL,
    apellido character varying NOT NULL,
    id_tipousuario integer NOT NULL,
    fecha_registro date NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false    4            �           0    0    COLUMN usuario.id_usuario    COMMENT     A   COMMENT ON COLUMN public.usuario.id_usuario IS 'id del usuario';
          public          postgres    false    240            �            1259    18302    usuario_comunidad    TABLE     �   CREATE TABLE public.usuario_comunidad (
    id_interaccion integer NOT NULL,
    id_usuario integer NOT NULL,
    interaccion_descripcion character varying NOT NULL
);
 %   DROP TABLE public.usuario_comunidad;
       public         heap    postgres    false    4            �           0    0 #   COLUMN usuario_comunidad.id_usuario    COMMENT     K   COMMENT ON COLUMN public.usuario_comunidad.id_usuario IS 'id del usuario';
          public          postgres    false    242            �            1259    18288    usuario_id_usuario_seq    SEQUENCE        CREATE SEQUENCE public.usuario_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuario_id_usuario_seq;
       public          postgres    false    240    4            �           0    0    usuario_id_usuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;
          public          postgres    false    239            �            1259    18326    usuario_idioma    TABLE     �   CREATE TABLE public.usuario_idioma (
    id_usuario integer NOT NULL,
    id_nivel_idioma integer NOT NULL,
    id_idioma integer NOT NULL
);
 "   DROP TABLE public.usuario_idioma;
       public         heap    postgres    false    4            �           0    0     COLUMN usuario_idioma.id_usuario    COMMENT     H   COMMENT ON COLUMN public.usuario_idioma.id_usuario IS 'id del usuario';
          public          postgres    false    246            �            1259    18309    usuario_logro    TABLE     f   CREATE TABLE public.usuario_logro (
    id_logro integer NOT NULL,
    id_usuario integer NOT NULL
);
 !   DROP TABLE public.usuario_logro;
       public         heap    postgres    false    4            �           0    0    COLUMN usuario_logro.id_usuario    COMMENT     G   COMMENT ON COLUMN public.usuario_logro.id_usuario IS 'id del usuario';
          public          postgres    false    243            �           2604    18162    frase id_frase    DEFAULT     p   ALTER TABLE ONLY public.frase ALTER COLUMN id_frase SET DEFAULT nextval('public.frase_id_frase_seq'::regclass);
 =   ALTER TABLE public.frase ALTER COLUMN id_frase DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    18226    palabra id_palabra    DEFAULT     x   ALTER TABLE ONLY public.palabra ALTER COLUMN id_palabra SET DEFAULT nextval('public.palabra_id_palabra_seq'::regclass);
 A   ALTER TABLE public.palabra ALTER COLUMN id_palabra DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    18292    usuario id_usuario    DEFAULT     x   ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);
 A   ALTER TABLE public.usuario ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    239    240    240            �          0    18200    ejercicio_práctica 
   TABLE DATA                 public          postgres    false    224   ��       �          0    18159    frase 
   TABLE DATA                 public          postgres    false    218   �       �          0    18151    frase_categoria 
   TABLE DATA                 public          postgres    false    216   �       �          0    18274    idioma 
   TABLE DATA                 public          postgres    false    237   ��       �          0    18181    interaccion_comunidad 
   TABLE DATA                 public          postgres    false    221   ��       �          0    18144    logro 
   TABLE DATA                 public          postgres    false    215   ��       �          0    18215    nivel_idioma 
   TABLE DATA                 public          postgres    false    227   ��       �          0    18223    palabra 
   TABLE DATA                 public          postgres    false    229   >�       �          0    18260    palabra_asimilar_respuesta 
   TABLE DATA                 public          postgres    false    235   ��       �          0    18167    palabra_categoria 
   TABLE DATA                 public          postgres    false    219   ��       �          0    18236    palabra_escuchar_respuesta 
   TABLE DATA                 public          postgres    false    231   -�       �          0    18174    palabra_etiqueta 
   TABLE DATA                 public          postgres    false    220   G�       �          0    18248    palabra_unir_respuesta 
   TABLE DATA                 public          postgres    false    233   ��       �          0    18255    palabras_asimilar 
   TABLE DATA                 public          postgres    false    234   ��       �          0    18231    palabras_escuchar 
   TABLE DATA                 public          postgres    false    230   ��       �          0    18243    palabras_unir 
   TABLE DATA                 public          postgres    false    232   �       �          0    18321    palabras_usuario 
   TABLE DATA                 public          postgres    false    245    �       �          0    18139    practica 
   TABLE DATA                 public          postgres    false    214   :�       �          0    18297    practica_usuario 
   TABLE DATA                 public          postgres    false    241   T�       �          0    18195    prueba_nivel_conocimiento 
   TABLE DATA                 public          postgres    false    223   n�       �          0    18210    prueba_palabras_aprendidas_ 
   TABLE DATA                 public          postgres    false    226   ��       �          0    18205    prueba_palabras_dificiles 
   TABLE DATA                 public          postgres    false    225   ��       �          0    18281 
   recompensa 
   TABLE DATA                 public          postgres    false    238   ��       �          0    18314    sesion 
   TABLE DATA                 public          postgres    false    244   ��       �          0    18267    tipo_usuario 
   TABLE DATA                 public          postgres    false    236   ��       �          0    18188    tipos_ejercicio 
   TABLE DATA                 public          postgres    false    222   R�       �          0    18289    usuario 
   TABLE DATA                 public          postgres    false    240   l�       �          0    18302    usuario_comunidad 
   TABLE DATA                 public          postgres    false    242   �       �          0    18326    usuario_idioma 
   TABLE DATA                 public          postgres    false    246   0�       �          0    18309    usuario_logro 
   TABLE DATA                 public          postgres    false    243   J�       �           0    0    frase_id_frase_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.frase_id_frase_seq', 1, false);
          public          postgres    false    217            �           0    0    palabra_id_palabra_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.palabra_id_palabra_seq', 9, true);
          public          postgres    false    228            �           0    0    usuario_id_usuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 1, false);
          public          postgres    false    239            �           2606    18204 )   ejercicio_práctica ejercicio_pr_ctica_pk 
   CONSTRAINT     �   ALTER TABLE ONLY public."ejercicio_práctica"
    ADD CONSTRAINT ejercicio_pr_ctica_pk PRIMARY KEY (id_ejercicio_practica, id_practica);
 U   ALTER TABLE ONLY public."ejercicio_práctica" DROP CONSTRAINT ejercicio_pr_ctica_pk;
       public            postgres    false    224    224            �           2606    18157 "   frase_categoria frase_categoria_pk 
   CONSTRAINT     p   ALTER TABLE ONLY public.frase_categoria
    ADD CONSTRAINT frase_categoria_pk PRIMARY KEY (id_frase_categoria);
 L   ALTER TABLE ONLY public.frase_categoria DROP CONSTRAINT frase_categoria_pk;
       public            postgres    false    216            �           2606    18166    frase frase_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.frase
    ADD CONSTRAINT frase_pk PRIMARY KEY (id_frase);
 8   ALTER TABLE ONLY public.frase DROP CONSTRAINT frase_pk;
       public            postgres    false    218            	           2606    18280    idioma idioma_pk 
   CONSTRAINT     U   ALTER TABLE ONLY public.idioma
    ADD CONSTRAINT idioma_pk PRIMARY KEY (id_idioma);
 :   ALTER TABLE ONLY public.idioma DROP CONSTRAINT idioma_pk;
       public            postgres    false    237            �           2606    18187 .   interaccion_comunidad interaccion_comunidad_pk 
   CONSTRAINT     x   ALTER TABLE ONLY public.interaccion_comunidad
    ADD CONSTRAINT interaccion_comunidad_pk PRIMARY KEY (id_interaccion);
 X   ALTER TABLE ONLY public.interaccion_comunidad DROP CONSTRAINT interaccion_comunidad_pk;
       public            postgres    false    221            �           2606    18150    logro logro_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.logro
    ADD CONSTRAINT logro_pk PRIMARY KEY (id_logro);
 8   ALTER TABLE ONLY public.logro DROP CONSTRAINT logro_pk;
       public            postgres    false    215            �           2606    18221    nivel_idioma nivel_idioma_pk 
   CONSTRAINT     g   ALTER TABLE ONLY public.nivel_idioma
    ADD CONSTRAINT nivel_idioma_pk PRIMARY KEY (id_nivel_idioma);
 F   ALTER TABLE ONLY public.nivel_idioma DROP CONSTRAINT nivel_idioma_pk;
       public            postgres    false    227                       2606    18266 8   palabra_asimilar_respuesta palabra_asimilar_respuesta_pk 
   CONSTRAINT     �   ALTER TABLE ONLY public.palabra_asimilar_respuesta
    ADD CONSTRAINT palabra_asimilar_respuesta_pk PRIMARY KEY (id_palabra_asimilar_respuesta, id_practica, id_ejercicio_practica);
 b   ALTER TABLE ONLY public.palabra_asimilar_respuesta DROP CONSTRAINT palabra_asimilar_respuesta_pk;
       public            postgres    false    235    235    235            �           2606    18173 &   palabra_categoria palabra_categoria_pk 
   CONSTRAINT     v   ALTER TABLE ONLY public.palabra_categoria
    ADD CONSTRAINT palabra_categoria_pk PRIMARY KEY (id_palabra_categoria);
 P   ALTER TABLE ONLY public.palabra_categoria DROP CONSTRAINT palabra_categoria_pk;
       public            postgres    false    219            �           2606    18242 8   palabra_escuchar_respuesta palabra_escuchar_respuesta_pk 
   CONSTRAINT     �   ALTER TABLE ONLY public.palabra_escuchar_respuesta
    ADD CONSTRAINT palabra_escuchar_respuesta_pk PRIMARY KEY (id_palabra_unir_respuesta, id_ejercicio_practica, id_practica);
 b   ALTER TABLE ONLY public.palabra_escuchar_respuesta DROP CONSTRAINT palabra_escuchar_respuesta_pk;
       public            postgres    false    231    231    231            �           2606    18180 $   palabra_etiqueta palabra_etiqueta_pk 
   CONSTRAINT     k   ALTER TABLE ONLY public.palabra_etiqueta
    ADD CONSTRAINT palabra_etiqueta_pk PRIMARY KEY (id_etiqueta);
 N   ALTER TABLE ONLY public.palabra_etiqueta DROP CONSTRAINT palabra_etiqueta_pk;
       public            postgres    false    220            �           2606    18230    palabra palabra_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.palabra
    ADD CONSTRAINT palabra_pk PRIMARY KEY (id_palabra);
 <   ALTER TABLE ONLY public.palabra DROP CONSTRAINT palabra_pk;
       public            postgres    false    229                       2606    18254 0   palabra_unir_respuesta palabra_unir_respuesta_pk 
   CONSTRAINT     �   ALTER TABLE ONLY public.palabra_unir_respuesta
    ADD CONSTRAINT palabra_unir_respuesta_pk PRIMARY KEY (id_palabra_unir_respuesta, id_ejercicio_practica, id_practica);
 Z   ALTER TABLE ONLY public.palabra_unir_respuesta DROP CONSTRAINT palabra_unir_respuesta_pk;
       public            postgres    false    233    233    233                       2606    18259 &   palabras_asimilar palabras_asimilar_pk 
   CONSTRAINT     �   ALTER TABLE ONLY public.palabras_asimilar
    ADD CONSTRAINT palabras_asimilar_pk PRIMARY KEY (id_palabra_asimilar, id_practica, id_ejercicio_practica);
 P   ALTER TABLE ONLY public.palabras_asimilar DROP CONSTRAINT palabras_asimilar_pk;
       public            postgres    false    234    234    234            �           2606    18235 &   palabras_escuchar palabras_escuchar_pk 
   CONSTRAINT     �   ALTER TABLE ONLY public.palabras_escuchar
    ADD CONSTRAINT palabras_escuchar_pk PRIMARY KEY (id_palabra_escuchar, id_ejercicio_practica, id_practica);
 P   ALTER TABLE ONLY public.palabras_escuchar DROP CONSTRAINT palabras_escuchar_pk;
       public            postgres    false    230    230    230            �           2606    18247    palabras_unir palabras_unir_pk 
   CONSTRAINT     �   ALTER TABLE ONLY public.palabras_unir
    ADD CONSTRAINT palabras_unir_pk PRIMARY KEY (id_palabra_unir, id_ejercicio_practica, id_practica);
 H   ALTER TABLE ONLY public.palabras_unir DROP CONSTRAINT palabras_unir_pk;
       public            postgres    false    232    232    232                       2606    18325 $   palabras_usuario palabras_usuario_pk 
   CONSTRAINT     v   ALTER TABLE ONLY public.palabras_usuario
    ADD CONSTRAINT palabras_usuario_pk PRIMARY KEY (id_palabra, id_usuario);
 N   ALTER TABLE ONLY public.palabras_usuario DROP CONSTRAINT palabras_usuario_pk;
       public            postgres    false    245    245            �           2606    18143    practica practica_pk 
   CONSTRAINT     [   ALTER TABLE ONLY public.practica
    ADD CONSTRAINT practica_pk PRIMARY KEY (id_practica);
 >   ALTER TABLE ONLY public.practica DROP CONSTRAINT practica_pk;
       public            postgres    false    214                       2606    18301 $   practica_usuario practica_usuario_pk 
   CONSTRAINT     w   ALTER TABLE ONLY public.practica_usuario
    ADD CONSTRAINT practica_usuario_pk PRIMARY KEY (id_practica, id_usuario);
 N   ALTER TABLE ONLY public.practica_usuario DROP CONSTRAINT practica_usuario_pk;
       public            postgres    false    241    241            �           2606    18199 6   prueba_nivel_conocimiento prueba_nivel_conocimiento_pk 
   CONSTRAINT     �   ALTER TABLE ONLY public.prueba_nivel_conocimiento
    ADD CONSTRAINT prueba_nivel_conocimiento_pk PRIMARY KEY (id_prueba_nivel_conocimiento, id_practica);
 `   ALTER TABLE ONLY public.prueba_nivel_conocimiento DROP CONSTRAINT prueba_nivel_conocimiento_pk;
       public            postgres    false    223    223            �           2606    18214 :   prueba_palabras_aprendidas_ prueba_palabras_aprendidas__pk 
   CONSTRAINT     �   ALTER TABLE ONLY public.prueba_palabras_aprendidas_
    ADD CONSTRAINT prueba_palabras_aprendidas__pk PRIMARY KEY (id_prueba_palabras_aprendidas, id_practica);
 d   ALTER TABLE ONLY public.prueba_palabras_aprendidas_ DROP CONSTRAINT prueba_palabras_aprendidas__pk;
       public            postgres    false    226    226            �           2606    18209 6   prueba_palabras_dificiles prueba_palabras_dificiles_pk 
   CONSTRAINT     �   ALTER TABLE ONLY public.prueba_palabras_dificiles
    ADD CONSTRAINT prueba_palabras_dificiles_pk PRIMARY KEY (id_prueba_palabras_dificiles, id_practica);
 `   ALTER TABLE ONLY public.prueba_palabras_dificiles DROP CONSTRAINT prueba_palabras_dificiles_pk;
       public            postgres    false    225    225                       2606    18287    recompensa recompensa_pk 
   CONSTRAINT     a   ALTER TABLE ONLY public.recompensa
    ADD CONSTRAINT recompensa_pk PRIMARY KEY (id_recompensa);
 B   ALTER TABLE ONLY public.recompensa DROP CONSTRAINT recompensa_pk;
       public            postgres    false    238                       2606    18320    sesion sesion_pk 
   CONSTRAINT     a   ALTER TABLE ONLY public.sesion
    ADD CONSTRAINT sesion_pk PRIMARY KEY (id_sesion, id_usuario);
 :   ALTER TABLE ONLY public.sesion DROP CONSTRAINT sesion_pk;
       public            postgres    false    244    244                       2606    18273    tipo_usuario tipo_usuario_pk 
   CONSTRAINT     f   ALTER TABLE ONLY public.tipo_usuario
    ADD CONSTRAINT tipo_usuario_pk PRIMARY KEY (id_tipousuario);
 F   ALTER TABLE ONLY public.tipo_usuario DROP CONSTRAINT tipo_usuario_pk;
       public            postgres    false    236            �           2606    18194 "   tipos_ejercicio tipos_ejercicio_pk 
   CONSTRAINT     e   ALTER TABLE ONLY public.tipos_ejercicio
    ADD CONSTRAINT tipos_ejercicio_pk PRIMARY KEY (id_tipo);
 L   ALTER TABLE ONLY public.tipos_ejercicio DROP CONSTRAINT tipos_ejercicio_pk;
       public            postgres    false    222                       2606    18308 &   usuario_comunidad usuario_comunidad_pk 
   CONSTRAINT     |   ALTER TABLE ONLY public.usuario_comunidad
    ADD CONSTRAINT usuario_comunidad_pk PRIMARY KEY (id_interaccion, id_usuario);
 P   ALTER TABLE ONLY public.usuario_comunidad DROP CONSTRAINT usuario_comunidad_pk;
       public            postgres    false    242    242                       2606    18330     usuario_idioma usuario_idioma_pk 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuario_idioma
    ADD CONSTRAINT usuario_idioma_pk PRIMARY KEY (id_usuario, id_nivel_idioma, id_idioma);
 J   ALTER TABLE ONLY public.usuario_idioma DROP CONSTRAINT usuario_idioma_pk;
       public            postgres    false    246    246    246                       2606    18313    usuario_logro usuario_logro_pk 
   CONSTRAINT     n   ALTER TABLE ONLY public.usuario_logro
    ADD CONSTRAINT usuario_logro_pk PRIMARY KEY (id_logro, id_usuario);
 H   ALTER TABLE ONLY public.usuario_logro DROP CONSTRAINT usuario_logro_pk;
       public            postgres    false    243    243                       2606    18296    usuario usuario_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pk PRIMARY KEY (id_usuario);
 <   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pk;
       public            postgres    false    240            ,           2606    18406 9   palabras_asimilar ejercicio_pr_ctica_palabras_asimilar_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.palabras_asimilar
    ADD CONSTRAINT ejercicio_pr_ctica_palabras_asimilar_fk FOREIGN KEY (id_ejercicio_practica, id_practica) REFERENCES public."ejercicio_práctica"(id_ejercicio_practica, id_practica);
 c   ALTER TABLE ONLY public.palabras_asimilar DROP CONSTRAINT ejercicio_pr_ctica_palabras_asimilar_fk;
       public          postgres    false    3313    224    224    234    234            &           2606    18416 9   palabras_escuchar ejercicio_pr_ctica_palabras_escuchar_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.palabras_escuchar
    ADD CONSTRAINT ejercicio_pr_ctica_palabras_escuchar_fk FOREIGN KEY (id_ejercicio_practica, id_practica) REFERENCES public."ejercicio_práctica"(id_ejercicio_practica, id_practica);
 c   ALTER TABLE ONLY public.palabras_escuchar DROP CONSTRAINT ejercicio_pr_ctica_palabras_escuchar_fk;
       public          postgres    false    224    230    230    3313    224            )           2606    18411 1   palabras_unir ejercicio_pr_ctica_palabras_unir_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.palabras_unir
    ADD CONSTRAINT ejercicio_pr_ctica_palabras_unir_fk FOREIGN KEY (id_ejercicio_practica, id_practica) REFERENCES public."ejercicio_práctica"(id_ejercicio_practica, id_practica);
 [   ALTER TABLE ONLY public.palabras_unir DROP CONSTRAINT ejercicio_pr_ctica_palabras_unir_fk;
       public          postgres    false    224    232    232    3313    224                       2606    18366    frase frase_categoria_frase_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.frase
    ADD CONSTRAINT frase_categoria_frase_fk FOREIGN KEY (id_frase_categoria) REFERENCES public.frase_categoria(id_frase_categoria);
 H   ALTER TABLE ONLY public.frase DROP CONSTRAINT frase_categoria_frase_fk;
       public          postgres    false    218    3299    216            :           2606    18471 '   usuario_idioma idioma_usuario_idioma_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_idioma
    ADD CONSTRAINT idioma_usuario_idioma_fk FOREIGN KEY (id_idioma) REFERENCES public.idioma(id_idioma);
 Q   ALTER TABLE ONLY public.usuario_idioma DROP CONSTRAINT idioma_usuario_idioma_fk;
       public          postgres    false    3337    246    237            3           2606    18381 <   usuario_comunidad interaccion_comunidad_usuario_comunidad_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_comunidad
    ADD CONSTRAINT interaccion_comunidad_usuario_comunidad_fk FOREIGN KEY (id_interaccion) REFERENCES public.interaccion_comunidad(id_interaccion);
 f   ALTER TABLE ONLY public.usuario_comunidad DROP CONSTRAINT interaccion_comunidad_usuario_comunidad_fk;
       public          postgres    false    242    3307    221            /           2606    18361    recompensa logro_recompensa_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.recompensa
    ADD CONSTRAINT logro_recompensa_fk FOREIGN KEY (id_logro) REFERENCES public.logro(id_logro);
 H   ALTER TABLE ONLY public.recompensa DROP CONSTRAINT logro_recompensa_fk;
       public          postgres    false    238    3297    215            5           2606    18356 $   usuario_logro logro_usuario_logro_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_logro
    ADD CONSTRAINT logro_usuario_logro_fk FOREIGN KEY (id_logro) REFERENCES public.logro(id_logro);
 N   ALTER TABLE ONLY public.usuario_logro DROP CONSTRAINT logro_usuario_logro_fk;
       public          postgres    false    243    3297    215            #           2606    18426    palabra nivel_idioma_palabra_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.palabra
    ADD CONSTRAINT nivel_idioma_palabra_fk FOREIGN KEY (id_nivel_idioma) REFERENCES public.nivel_idioma(id_nivel_idioma);
 I   ALTER TABLE ONLY public.palabra DROP CONSTRAINT nivel_idioma_palabra_fk;
       public          postgres    false    3319    229    227            ;           2606    18421 -   usuario_idioma nivel_idioma_usuario_idioma_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_idioma
    ADD CONSTRAINT nivel_idioma_usuario_idioma_fk FOREIGN KEY (id_nivel_idioma) REFERENCES public.nivel_idioma(id_nivel_idioma);
 W   ALTER TABLE ONLY public.usuario_idioma DROP CONSTRAINT nivel_idioma_usuario_idioma_fk;
       public          postgres    false    3319    246    227            $           2606    18371 $   palabra palabra_categoria_palabra_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.palabra
    ADD CONSTRAINT palabra_categoria_palabra_fk FOREIGN KEY (id_palabra_categoria) REFERENCES public.palabra_categoria(id_palabra_categoria);
 N   ALTER TABLE ONLY public.palabra DROP CONSTRAINT palabra_categoria_palabra_fk;
       public          postgres    false    229    3303    219            %           2606    18376 #   palabra palabra_etiqueta_palabra_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.palabra
    ADD CONSTRAINT palabra_etiqueta_palabra_fk FOREIGN KEY (id_etiqueta) REFERENCES public.palabra_etiqueta(id_etiqueta);
 M   ALTER TABLE ONLY public.palabra DROP CONSTRAINT palabra_etiqueta_palabra_fk;
       public          postgres    false    229    3305    220            -           2606    18436 .   palabras_asimilar palabra_palabras_asimilar_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.palabras_asimilar
    ADD CONSTRAINT palabra_palabras_asimilar_fk FOREIGN KEY (id_palabra) REFERENCES public.palabra(id_palabra);
 X   ALTER TABLE ONLY public.palabras_asimilar DROP CONSTRAINT palabra_palabras_asimilar_fk;
       public          postgres    false    229    234    3321            '           2606    18446 .   palabras_escuchar palabra_palabras_escuchar_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.palabras_escuchar
    ADD CONSTRAINT palabra_palabras_escuchar_fk FOREIGN KEY (id_palabra) REFERENCES public.palabra(id_palabra);
 X   ALTER TABLE ONLY public.palabras_escuchar DROP CONSTRAINT palabra_palabras_escuchar_fk;
       public          postgres    false    230    3321    229            *           2606    18441 &   palabras_unir palabra_palabras_unir_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.palabras_unir
    ADD CONSTRAINT palabra_palabras_unir_fk FOREIGN KEY (id_palabra) REFERENCES public.palabra(id_palabra);
 P   ALTER TABLE ONLY public.palabras_unir DROP CONSTRAINT palabra_palabras_unir_fk;
       public          postgres    false    232    3321    229            8           2606    18431 ,   palabras_usuario palabra_palabras_usuario_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.palabras_usuario
    ADD CONSTRAINT palabra_palabras_usuario_fk FOREIGN KEY (id_palabra) REFERENCES public.palabra(id_palabra);
 V   ALTER TABLE ONLY public.palabras_usuario DROP CONSTRAINT palabra_palabras_usuario_fk;
       public          postgres    false    3321    245    229            .           2606    18461 J   palabra_asimilar_respuesta palabras_asimilar_palabra_asimilar_respuesta_fk    FK CONSTRAINT       ALTER TABLE ONLY public.palabra_asimilar_respuesta
    ADD CONSTRAINT palabras_asimilar_palabra_asimilar_respuesta_fk FOREIGN KEY (id_palabra_asimilar, id_practica, id_ejercicio_practica) REFERENCES public.palabras_asimilar(id_palabra_asimilar, id_practica, id_ejercicio_practica);
 t   ALTER TABLE ONLY public.palabra_asimilar_respuesta DROP CONSTRAINT palabras_asimilar_palabra_asimilar_respuesta_fk;
       public          postgres    false    234    234    3331    235    235    235    234            (           2606    18451 J   palabra_escuchar_respuesta palabras_escuchar_palabra_escuchar_respuesta_fk    FK CONSTRAINT       ALTER TABLE ONLY public.palabra_escuchar_respuesta
    ADD CONSTRAINT palabras_escuchar_palabra_escuchar_respuesta_fk FOREIGN KEY (id_palabra_escuchar, id_ejercicio_practica, id_practica) REFERENCES public.palabras_escuchar(id_palabra_escuchar, id_ejercicio_practica, id_practica);
 t   ALTER TABLE ONLY public.palabra_escuchar_respuesta DROP CONSTRAINT palabras_escuchar_palabra_escuchar_respuesta_fk;
       public          postgres    false    231    230    231    231    230    230    3323            +           2606    18456 >   palabra_unir_respuesta palabras_unir_palabra_unir_respuesta_fk    FK CONSTRAINT       ALTER TABLE ONLY public.palabra_unir_respuesta
    ADD CONSTRAINT palabras_unir_palabra_unir_respuesta_fk FOREIGN KEY (id_palabra_unir, id_ejercicio_practica, id_practica) REFERENCES public.palabras_unir(id_palabra_unir, id_ejercicio_practica, id_practica);
 h   ALTER TABLE ONLY public.palabra_unir_respuesta DROP CONSTRAINT palabras_unir_palabra_unir_respuesta_fk;
       public          postgres    false    232    232    232    233    233    233    3327                       2606    18331 2   ejercicio_práctica practica_ejercicio_pr_ctica_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."ejercicio_práctica"
    ADD CONSTRAINT practica_ejercicio_pr_ctica_fk FOREIGN KEY (id_practica) REFERENCES public.practica(id_practica);
 ^   ALTER TABLE ONLY public."ejercicio_práctica" DROP CONSTRAINT practica_ejercicio_pr_ctica_fk;
       public          postgres    false    224    3295    214            1           2606    18351 -   practica_usuario practica_practica_usuario_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.practica_usuario
    ADD CONSTRAINT practica_practica_usuario_fk FOREIGN KEY (id_practica) REFERENCES public.practica(id_practica);
 W   ALTER TABLE ONLY public.practica_usuario DROP CONSTRAINT practica_practica_usuario_fk;
       public          postgres    false    241    3295    214                       2606    18346 ?   prueba_nivel_conocimiento practica_prueba_nivel_conocimiento_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.prueba_nivel_conocimiento
    ADD CONSTRAINT practica_prueba_nivel_conocimiento_fk FOREIGN KEY (id_practica) REFERENCES public.practica(id_practica);
 i   ALTER TABLE ONLY public.prueba_nivel_conocimiento DROP CONSTRAINT practica_prueba_nivel_conocimiento_fk;
       public          postgres    false    223    3295    214            !           2606    18341 C   prueba_palabras_aprendidas_ practica_prueba_palabras_aprendidas__fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.prueba_palabras_aprendidas_
    ADD CONSTRAINT practica_prueba_palabras_aprendidas__fk FOREIGN KEY (id_practica) REFERENCES public.practica(id_practica);
 m   ALTER TABLE ONLY public.prueba_palabras_aprendidas_ DROP CONSTRAINT practica_prueba_palabras_aprendidas__fk;
       public          postgres    false    226    3295    214                       2606    18336 ?   prueba_palabras_dificiles practica_prueba_palabras_dificiles_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.prueba_palabras_dificiles
    ADD CONSTRAINT practica_prueba_palabras_dificiles_fk FOREIGN KEY (id_practica) REFERENCES public.practica(id_practica);
 i   ALTER TABLE ONLY public.prueba_palabras_dificiles DROP CONSTRAINT practica_prueba_palabras_dificiles_fk;
       public          postgres    false    214    225    3295            0           2606    18466    usuario tipo_usuario_usuario_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT tipo_usuario_usuario_fk FOREIGN KEY (id_tipousuario) REFERENCES public.tipo_usuario(id_tipousuario);
 I   ALTER TABLE ONLY public.usuario DROP CONSTRAINT tipo_usuario_usuario_fk;
       public          postgres    false    3335    240    236                       2606    18396 9   ejercicio_práctica tipos_ejercicio_ejercicio_pr_ctica_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."ejercicio_práctica"
    ADD CONSTRAINT tipos_ejercicio_ejercicio_pr_ctica_fk FOREIGN KEY (id_tipo) REFERENCES public.tipos_ejercicio(id_tipo);
 e   ALTER TABLE ONLY public."ejercicio_práctica" DROP CONSTRAINT tipos_ejercicio_ejercicio_pr_ctica_fk;
       public          postgres    false    224    3309    222                       2606    18401 F   prueba_nivel_conocimiento tipos_ejercicio_prueba_nivel_conocimiento_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.prueba_nivel_conocimiento
    ADD CONSTRAINT tipos_ejercicio_prueba_nivel_conocimiento_fk FOREIGN KEY (id_tipo) REFERENCES public.tipos_ejercicio(id_tipo);
 p   ALTER TABLE ONLY public.prueba_nivel_conocimiento DROP CONSTRAINT tipos_ejercicio_prueba_nivel_conocimiento_fk;
       public          postgres    false    223    222    3309            "           2606    18386 J   prueba_palabras_aprendidas_ tipos_ejercicio_prueba_palabras_aprendidas__fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.prueba_palabras_aprendidas_
    ADD CONSTRAINT tipos_ejercicio_prueba_palabras_aprendidas__fk FOREIGN KEY (id_tipo) REFERENCES public.tipos_ejercicio(id_tipo);
 t   ALTER TABLE ONLY public.prueba_palabras_aprendidas_ DROP CONSTRAINT tipos_ejercicio_prueba_palabras_aprendidas__fk;
       public          postgres    false    226    3309    222                        2606    18391 F   prueba_palabras_dificiles tipos_ejercicio_prueba_palabras_dificiles_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.prueba_palabras_dificiles
    ADD CONSTRAINT tipos_ejercicio_prueba_palabras_dificiles_fk FOREIGN KEY (id_tipo) REFERENCES public.tipos_ejercicio(id_tipo);
 p   ALTER TABLE ONLY public.prueba_palabras_dificiles DROP CONSTRAINT tipos_ejercicio_prueba_palabras_dificiles_fk;
       public          postgres    false    225    3309    222            9           2606    18481 ,   palabras_usuario usuario_palabras_usuario_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.palabras_usuario
    ADD CONSTRAINT usuario_palabras_usuario_fk FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 V   ALTER TABLE ONLY public.palabras_usuario DROP CONSTRAINT usuario_palabras_usuario_fk;
       public          postgres    false    245    240    3341            2           2606    18501 ,   practica_usuario usuario_practica_usuario_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.practica_usuario
    ADD CONSTRAINT usuario_practica_usuario_fk FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 V   ALTER TABLE ONLY public.practica_usuario DROP CONSTRAINT usuario_practica_usuario_fk;
       public          postgres    false    3341    240    241            7           2606    18486    sesion usuario_sesion_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sesion
    ADD CONSTRAINT usuario_sesion_fk FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 B   ALTER TABLE ONLY public.sesion DROP CONSTRAINT usuario_sesion_fk;
       public          postgres    false    244    240    3341            4           2606    18496 .   usuario_comunidad usuario_usuario_comunidad_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_comunidad
    ADD CONSTRAINT usuario_usuario_comunidad_fk FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 X   ALTER TABLE ONLY public.usuario_comunidad DROP CONSTRAINT usuario_usuario_comunidad_fk;
       public          postgres    false    240    242    3341            <           2606    18476 (   usuario_idioma usuario_usuario_idioma_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_idioma
    ADD CONSTRAINT usuario_usuario_idioma_fk FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 R   ALTER TABLE ONLY public.usuario_idioma DROP CONSTRAINT usuario_usuario_idioma_fk;
       public          postgres    false    246    3341    240            6           2606    18491 &   usuario_logro usuario_usuario_logro_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_logro
    ADD CONSTRAINT usuario_usuario_logro_fk FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 P   ALTER TABLE ONLY public.usuario_logro DROP CONSTRAINT usuario_usuario_logro_fk;
       public          postgres    false    240    3341    243            �   
   x���          �   
   x���          �   f   x���v
Q���W((M��L�K+J,N�ON,IM�/�LTs�	uV�0�QPN�)M�/V״��$^�Pg@Qjqj^Ibrf~�ڍ��]R�RS2SAz�� C�:      �   
   x���          �   
   x���          �   
   x���          �   L   x���v
Q���W((M��L���,K͉�L���MTs�	uV�0�QPw4T״��$R�H�):��:��vpq ܯ,�      �   P   x���v
Q���W((M��L�+H�IL*JTs�	uV�0�QPW�Q0�!uCuMk.O����h�hCDk��kD��� u:;      �   
   x���          �   e   x���v
Q���W((M��L�+H�IL*J�ON,IM�/�LTs�	uV�0�QP��*����%�kZsy�b��	�E�y)�)��b�d�KfZfrf�.. �A�      �   
   x���          �   a   x���v
Q���W((M��L�+H�IL*J�O-�,,M-ITs�	uV�0�QPw���LIT״��$A�P�c^fnbNj1�z��z�R32�Ks�Az�� {:8�      �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   R   x���v
Q���W((M��L�+�,ȏ/-.M,��Ws�	uV�0�QPwL����,.)JL�/R״��$R�!Ps(D��� ��%m      �   
   x���          �   �   x���v
Q���W((M��L�+-.M,��Ws�	uV�0�QPO�ϫJ��wH�M���K��U
���y��IE��Y��9� �ĂԜ�̔|$1��������������5�'v�m�[o�a�:�m f~QIf�v!�ԄX�1��� ��b~      �   
   x���          �   
   x���          �   
   x���         