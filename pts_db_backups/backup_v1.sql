PGDMP         (                z            pts_db    14.1    14.1 l    w           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            x           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            y           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            z           1262    16728    pts_db    DATABASE     c   CREATE DATABASE pts_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE pts_db;
                postgres    false            �            1259    16755 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16754    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    216            {           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    215            �            1259    16764    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16763    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    218            |           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    217            �            1259    16748    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16747    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    214            }           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    213            �            1259    16771 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16780    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16779    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    222            ~           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    221            �            1259    16770    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    220                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    219            �            1259    16787    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16786 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    224            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    223            �            1259    16846    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    16845    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    226            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    225            �            1259    16739    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16738    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    212            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    211            �            1259    16730    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16729    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    210            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    209            �            1259    16887    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    16876 	   news_news    TABLE     w  CREATE TABLE public.news_news (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    brief text NOT NULL,
    content text NOT NULL,
    photo character varying(100) NOT NULL,
    time_create timestamp with time zone NOT NULL,
    time_update timestamp with time zone NOT NULL,
    is_published boolean NOT NULL
);
    DROP TABLE public.news_news;
       public         heap    postgres    false            �            1259    16875    news_news_id_seq    SEQUENCE     y   CREATE SEQUENCE public.news_news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.news_news_id_seq;
       public          postgres    false    228            �           0    0    news_news_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.news_news_id_seq OWNED BY public.news_news.id;
          public          postgres    false    227            �           2604    16758    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    16767    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    16751    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            �           2604    16774    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    16783    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    16790    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    16849    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    16742    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            �           2604    16733    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            �           2604    16879    news_news id    DEFAULT     l   ALTER TABLE ONLY public.news_news ALTER COLUMN id SET DEFAULT nextval('public.news_news_id_seq'::regclass);
 ;   ALTER TABLE public.news_news ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            g          0    16755 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    216   �       i          0    16764    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    218   �       e          0    16748    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    214   �       k          0    16771 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    220   p�       m          0    16780    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    222   6�       o          0    16787    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    224   S�       q          0    16846    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    226   p�       c          0    16739    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    212   0�       a          0    16730    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    210   ��       t          0    16887    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    229   p�       s          0    16876 	   news_news 
   TABLE DATA           s   COPY public.news_news (id, title, slug, brief, content, photo, time_create, time_update, is_published) FROM stdin;
    public          postgres    false    228   .�       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    215            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    217            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 28, true);
          public          postgres    false    213            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    221            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    219            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    223            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 23, true);
          public          postgres    false    225            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 7, true);
          public          postgres    false    211            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);
          public          postgres    false    209            �           0    0    news_news_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.news_news_id_seq', 8, true);
          public          postgres    false    227            �           2606    16873    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    216            �           2606    16803 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    218    218            �           2606    16769 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    218            �           2606    16760    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    216            �           2606    16794 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    214    214            �           2606    16753 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    214            �           2606    16785 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    222            �           2606    16818 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    222    222            �           2606    16776    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    220            �           2606    16792 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    224            �           2606    16832 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    224    224            �           2606    16868     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    220            �           2606    16854 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    226            �           2606    16746 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    212    212            �           2606    16744 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    212            �           2606    16737 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    210            �           2606    16893 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    229            �           2606    16883    news_news news_news_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.news_news
    ADD CONSTRAINT news_news_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.news_news DROP CONSTRAINT news_news_pkey;
       public            postgres    false    228            �           2606    16885    news_news news_news_slug_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.news_news
    ADD CONSTRAINT news_news_slug_key UNIQUE (slug);
 F   ALTER TABLE ONLY public.news_news DROP CONSTRAINT news_news_slug_key;
       public            postgres    false    228            �           1259    16874    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    216            �           1259    16814 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    218            �           1259    16815 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    218            �           1259    16800 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    214            �           1259    16830 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    222            �           1259    16829 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    222            �           1259    16844 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    224            �           1259    16843 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    224            �           1259    16869     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    220            �           1259    16865 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    226            �           1259    16866 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    226            �           1259    16895 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    229            �           1259    16894 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    229            �           1259    16886    news_news_slug_2b9132f1_like    INDEX     f   CREATE INDEX news_news_slug_2b9132f1_like ON public.news_news USING btree (slug varchar_pattern_ops);
 0   DROP INDEX public.news_news_slug_2b9132f1_like;
       public            postgres    false    228            �           2606    16809 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    3234    214    218            �           2606    16804 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    216    3239    218            �           2606    16795 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3229    214    212            �           2606    16824 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    216    3239    222            �           2606    16819 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    3247    222    220            �           2606    16838 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    3234    214    224            �           2606    16833 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    224    3247    220            �           2606    16855 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    226    3229    212            �           2606    16860 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    226    3247    220            g      x������ � �      i      x������ � �      e   B  x�e�Kn�0��}
NP�敬{�H
EJ�(�v�+�=@� 7*�{v����%F���FEYFצ����Pb>��g8J��^��0����j�U�	����[.J}Yk������
i�Bf4�A�#6�}�b �ǐ�$4w�U��ZC |Ku�q�;v!Q�i%��D��@>Ǿ�֛N$�|J������H�t8܁,��g�s?���a�k��h�H� ����4d�1����x�^B�FC.��W������$5��`��3��a�gd��*O¦���s�����=��¬��R�E�9�s����b��d�w"��_����{      k   �   x�-��
�@@��W�p'ڽ7G'!�6�s�LL�#ʹ)��:��9Țs�RJ�L�L��<�X�r-�8
�>�
��ۙn�c����ޭ`�w��΋�U���g��[�f1aD6���0@9#D�`O&U�׌�Z��Lʼ�\^2�~?�d~sZ�K�m���#t�E�_�89�a|�G4�      m      x������ � �      o      x������ � �      q   �  x�͖�n1�ϛ�0�B-���Wi{HI
����R?��7���7��Ki�^��F���#N�EPEZ����g~3�Y
��^P��I(	"Y	>xm�+U@�������.�uy(x��4.w�P���<�J?�8��������KV.nv{���ߍbskk�pt��?P��]J������"�HW��8˝r��K#6z�.E:���bAXz�b��ۨ�TN��c��r<C����s<|;N��B��8�qX�D��ya�~�ŕ�v�"IN[
�+Ӥ�S�9�fw�C��̌��[����׽��S�յ���{�]�.-}Pz�`T=`3�̚54�l���Q����kH�"�vk��y��aw�6n��Mјh���H�}������J���rb�xW���C<
����{<+�DEQY�tT�ƣ"�{��n�2?�N:��S��ܽ\����-5��sY*-�u��c�?eF@�@�0��H����`6_���&UOAH��<t)�l��4��&�̀��*��O�G-|��>.O
m3h�"�q�K���$����2��N�����'�?aw������t6�M@�{hSA��,����l>H����C�p�\6B�K:����������F�QUM�5��tΪ&�[9�t��
Ǌ �E�*�Jc������Ƈ�Z��E��y*�/�-�%��t~���{      c   ^   x�M�I
�0�ӏ�?�%���L���J���*���vY���,1dtdR<�s���u���=��1TH�#�N���Y����K���L·��� x 5)�      a   �  x����n� E������3�[VB(�	�m\����/��D���Œ��a����c<Mvnc���3}���;�7��$��>��T���6f���	ι����n|!!Z�e��-����Tg8�`�mu��k�߯3$	j3C���H9mv��Q��wG�vI�*��"��/[x�沠��`�Q�]&��j�G�d���9W��z0?���!}�NR�+^UE�j������(�ۢ�����G)�Oq��ĳi`�!���c6�RgK�>sB³c�J�I���B�[��,�D"��p��J�M��&�0���|Ѓ�gsx0v�A�8�*�eR��؁*����%� �s��vA�_��0��,�dŀ^����)���݁|�MM����x�է���JEg�jF��:��rA���R�Ә �B���t�:���裿e�Ж�!]L�W����l���s�      t   �  x����r�0  ������IBX䍋V�Z�
.�a	d~}ۗ�Cg��S�	-k��|Ɛ�<Nr 2�0P�/��^�l�!5]ӹ[(�$-�4����|x�w����q[���dK��c$m��~>^.�M��a�u�"�I����.N$S��� �߭�:�E��։�쯈m��R��6�k�0e�n�pnjo��z�Ts8����^]��k}rF�oW��b7�zC^��.8��W*�fh$�g/ $�o��V��T�̵ LȨ0^C��+�W2�a�h( �����y�� �� ��ԿT�٬�/1��ŧ�L�F��}ߘ����)�07�6S ��	�x�I�i�fL�X�6�x���)+��~l�]���v��v�0�r�̗{���Q�T��h����)�T�f2��A??���d��	)      s      x��Z[o�~���C�B2$ŋ����}* p,���
/I�'��,��(v�"H;i�������J$W@~��_�/��7s�ƥǉ,��gϙ3�o����B�&���(��e��П�`��A��p��U0�`>]uq��߽��}��Ń��vi�������ni�����4Χ�=����x��S�~�4�ǡ��� ���ߣG���88_҈�����>=u�����<�g��Z���hx�e��|uNg�V0�]�t��n�'�7���>�����M��d��$�/��⡐��n�US6I��`��sh�'9������<��c�_��"oė��G�<+�f%�,i�OXZ�=�� 6�v�EM8���f��{��{��5���`)�H�G�O�֫>�]�v��KZ�?������c���� txi��}`��4�ji!6�a�	/m0�gc����<��vpJ����`(��s�9̶N(��?i�����oDKЦC���O2V�*��$�<��8�Q'�!-�o��>������o6گs�֊Г|�o6�6����^zf%�њSV��v�,¾A;c���9z�7�:�DE��B��;�p�gxKS'�p�,Hcx���9��brC`E�X�X�7���!I$l�=�Wt8Ld�s��706��#�Q��T��%aZ��o��у�/�B'����桵)�g�?#S���ʕ��h��z�Jy�D�O�f*1��R���Bቪ�;��]�s��`�����ۼ`�86,�0'���%R��'lЙIc`sm�uX�^��E��)Y�+^�eP���c)� �����6S(@$=Q����p�s6�hvc C���)���c���<��L�`�@�:���w�Ufv���V�,�䌗���h*zڊ��?ߊɪ��9���b�����x�6?�I/%0��쒢0�&�����P�$:���m-�%�*g�S�d-~�;��qOv3l�c:�F،��vu���ٓ��#s����q�@�^ă�ȦcJn�#}�R�4�5��r6V D�_��6��0���+0��eX�Or�+��W���^��K	�'#L�0�M���ltA�W0?�g4��ah�@ dip.��{>������:�r���N�vD�=F����q�����4ö}l��B��؏��z2g#��@v��i)�#�2,�1�������2��.VBC0���\h�@��H�*^
��	��d ���6�$�8Ĝ�	�P��$7w�^<�h7f�``��q�/�j+R>�$�L�V��)g�ގ�A���So��*rJ#ղ'l�n�1D"���
/W�<DS�ά~�� dƗ��������V*�j����T�[�����\�qh�d`���\�=��>��|e�kT�(���+ƨ�('���u�¡����\��5�l6�$G���"�u��Kq�P�T������(G ?̲Q���$F�o��	 L@�f���ZV��H���B?���{ޤ�bG��M[J!N
��8�.|���3[�ƀucy�E�=�y�I���\,��M2G!zc�8xݕ��ҷ�M������q���m�d[EE��=N%��S�pK�=|5+�Ǧ5�2mc�w��i,t���\$�D-i�>�v��L�ˢS��4I�r3��4��!��1�h��՞�,��s�5|��I3���b���)�Wq35�0a��Z��gQQ��in�<I䀢)Y��ù�����OHy�/�(6<��&�-K%Z7����>�l���K0���ߺτ3F����pW��zQS�@�N�Ӟ8���I�=�c����
b���`
�L�ڞH\���ok��)<y�S�zA����仆溞���vaH2����b|W2Ů2�D�`�������$|C$Ç\��W=q���hE!}�����&u{M���k;�E�upw��*�&�����_* @����4�Ņ��В���c�b�pv�#�'���F`)F����!towCC������nI��_�k��d��M���no��_��j�J�Tk�?����Fy�A��0���Fu��,W7[����*��o�
Tzs4��<���7.�U�������]�}��ۃ����޽Ұ}��l�ұD��kn��S�%��qK+��:����Z��#�F���3�5�o0~*9rjI�+��GUHþ���,q�X��F;b3�e�b�e\�8(y��j���v��� .�F|B:��S/~)Q:���iL1�� K��ҩdWG8'Zx\�B���
!���+f�����l���;�8�z��%�K��h�p�?�)F��s5׍I}S��#$�pG�"�Eiu��e��QV2�>�u�ebR��GMHc~�ڋ9�r���`�{m;�S�W�Aܧ�2�)*+����c�A�b!�(�-b�3EGX|z�".��@�J����7�LLs��mU}�mTI�1z��Y*�Aw�|�πZ�'����=�f�Q9�c=FXrG1Ҡ����Su�:����\Ij� .E⼔d��kN��1-��UYD�<6�	�L*딛���ᵜ�5=��_e��\0��R���>^k�d��OR��Kp�}�H�,��]DĖp��('�����f��D����-����╺��+ѦI��=�i�J�줢�Dգ�j��v���Q[Hj���zn��1nݶ��<�9l̀d�~�����ը�gs�&Zx��T�7B��̩H���X��`*�퇬�e��� �䁜
!]gZR0��s"�߼���1�<����5�:����*,4s_!%���JOK�i�+��S�K#�@�w�I!�=v�	�YQbKņ|YR&� �/[R�� �Cr~kɩ�a� �����I֭3 ����ؐ��Ů�I�˜[���vR'11wtl?�(]^&��Q����m����(�e0 '�88��"`R�����rzF��TU�}���i�Uҿ���_�����#�Xa���l4�Տz����۟�����r���� F\ެ��f�,����(�E�]9�P�����@�0�p�{x�]��:��No�v�ҝݻ����)U�,:��*a�;' �/�%Lzgx�gN�&*�A���jJ\��G�������,	G�RҬ�px�x1#µ���KS�)�4��yE��+��^S�*�������u�ߥ�����j^v�ըcӯRkh��Rz���E�%�@�Vz莅O�ؠ���~��B�d@7l�A�%� H�5���^��4]�h��2�}mUF�71�b�E�æDWI��@#>�[�?]ه$��.���`���Y��QS��2Ǥ�u^6��	,�����S����6�eNf�Ud�}�-�3�k��dD�z�(x*�4]��+��Ւn�z� ��	4�eD���:���d�ZQ�m��f��vY�5C��D�����g�[��o2�]����m�Mjq�z�����"#x����^�9{Qu���q���F�櫬?q��]�Fz����v���dK���wl�I��([��:X��tA	S1s3kU+���T��Ƕ�������^H�a}�<�A�f��3��� }eΗWx�#�*��/B��X��7a#�]g5ט5v��"�i�i���=�6�y���]k�+��z��C:��V�Z��*���a��-ܽ3����\�T�0Uzhc{�Y�7+�j#�u����B��?�~�;��-�4j�Zm���ި�[���V=3i��᭺�Hl[�d��^��Y��v!�=�cR�O�s�t�Ef4���\����{/�k��|YO�?���{����.*[��]���J��Ln�R7��v��6j��ZU6�Xٸ�@�|-�A�+^a8��K�v���]��N��n!�G5���ug(g8�
D�p�h�ǋ^2z�7Qt�+Lz*�V��4�+Mr��:W���zmK��,|�y�?L�~h>��~>5���k��iw̎1;�n����������Gm���}v{#�J�i��P�uz<�cF���M������`d:�A{D�F�6~хQ{@�wFf�����0��E��ow��1`���ͨ��4���smZ�У#���3� ;   �]����6�ӻK��ݝ�&1;��n�O�Umm֚�1Xi�[�_Cc���[����}+     