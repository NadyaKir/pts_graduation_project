PGDMP     
                    z            pts_db    14.1    14.1 s    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16728    pts_db    DATABASE     c   CREATE DATABASE pts_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
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
       public          postgres    false    216            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
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
       public          postgres    false    218            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
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
       public          postgres    false    214            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
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
       public          postgres    false    222            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    221            �            1259    16770    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    220            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
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
       public         heap    postgres    false            �            1259    40968    news_gvs    TABLE     (  CREATE TABLE public.news_gvs (
    id bigint NOT NULL,
    street character varying(50) NOT NULL,
    build character varying(50) NOT NULL,
    region character varying(50) NOT NULL,
    date_disconnect date NOT NULL,
    date_connect date NOT NULL,
    reason character varying(250) NOT NULL
);
    DROP TABLE public.news_gvs;
       public         heap    postgres    false            �            1259    40967    news_gvs_id_seq    SEQUENCE     x   CREATE SEQUENCE public.news_gvs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.news_gvs_id_seq;
       public          postgres    false    231            �           0    0    news_gvs_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.news_gvs_id_seq OWNED BY public.news_gvs.id;
          public          postgres    false    230            �            1259    16876 	   news_news    TABLE     w  CREATE TABLE public.news_news (
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
       public          postgres    false    220    219    220            �           2604    16783    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    16790    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    16849    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    16742    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            �           2604    16733    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �           2604    40971    news_gvs id    DEFAULT     j   ALTER TABLE ONLY public.news_gvs ALTER COLUMN id SET DEFAULT nextval('public.news_gvs_id_seq'::regclass);
 :   ALTER TABLE public.news_gvs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    16879    news_news id    DEFAULT     l   ALTER TABLE ONLY public.news_news ALTER COLUMN id SET DEFAULT nextval('public.news_news_id_seq'::regclass);
 ;   ALTER TABLE public.news_news ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            o          0    16755 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    216   �       q          0    16764    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    218   	�       m          0    16748    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    214   &�       s          0    16771 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    220   ��       u          0    16780    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    222   ~�       w          0    16787    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    224   ��       y          0    16846    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    226   ��       k          0    16739    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    212   ��       i          0    16730    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    210   �       |          0    16887    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    229   )�       ~          0    40968    news_gvs 
   TABLE DATA           d   COPY public.news_gvs (id, street, build, region, date_disconnect, date_connect, reason) FROM stdin;
    public          postgres    false    231   ��       {          0    16876 	   news_news 
   TABLE DATA           s   COPY public.news_news (id, title, slug, brief, content, photo, time_create, time_update, is_published) FROM stdin;
    public          postgres    false    228   �       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    215            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    217            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
          public          postgres    false    213            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    221            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    219            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    223            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 51, true);
          public          postgres    false    225            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);
          public          postgres    false    211            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 23, true);
          public          postgres    false    209            �           0    0    news_gvs_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.news_gvs_id_seq', 10, true);
          public          postgres    false    230            �           0    0    news_news_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.news_news_id_seq', 9, true);
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
       public            postgres    false    229            �           2606    40973    news_gvs news_gvs_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.news_gvs
    ADD CONSTRAINT news_gvs_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.news_gvs DROP CONSTRAINT news_gvs_pkey;
       public            postgres    false    231            �           2606    16883    news_news news_news_pkey 
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
       public          postgres    false    3240    214    218            �           2606    16804 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    3245    218    216            �           2606    16795 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    212    214    3235            �           2606    16824 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    216    3245    222            �           2606    16819 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    3253    222    220            �           2606    16838 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    3240    224    214            �           2606    16833 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    220    224    3253            �           2606    16855 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    212    3235    226            �           2606    16860 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    226    3253    220            o      x������ � �      q      x������ � �      m   �  x�e��m�0����������F�"H7@j�� ����D��F�HJ$�������y�6�v�/�m]���ƙ��>��iK@vۦ�����{��������/
������C��1%���.���N�+�X�	���d˺k�'S� |[7�r)'/B�tJ�R�J���*�����us�O)�#���P9K��1\��]���_+��ɛ�)^�[K�����^<�I������u�:x��K��-�ޙ!ό��3Fz[g�2�K���7��_����Y�X�/��j�O�!�v��� �b�O H"&V�ƍ��Vzᐥ}�X����eC�������`�l�6�Yj��Z4Ʃ1�b�b���Xk�Z¥      s   �   x�-��
�@@��W�p'ڝ�3�BPm$4��-"���R�6F����p%��Qg���D�-�0b�$U��H&�ևbA�n��9�����VA����\TC��+�:^2��]N	��hR!�w� �� �M�j���I��yS��r�9��Y+���ң��g����<�>� ƌqr���y4�      u      x������ � �      w      x������ � �      y   �  x��YKoG>�E�(q���Ϲ�KN��p0xM�D�!$cCr��D�D(�CnAƏ���������Y����F+ū������UWWUW�@&��s�f��rm88��H���X���a7k�;�0��a�+a;��a6���)���?ߒ䵇����ٜ=|��Ff3��u>�F����&��,����MX/+�j�!�=bx��+���cF_���6�ɥ��
�%>f�9�g���,�4:�Ͱ��g�hXa�?э'�O{�T��核��h�T2��l�Lt�=@�9����+i�HF�[_�w;A�.~3��p�N��^�~_(�/J�L%�U���tЬq��.I@]��P�~�l#���n�9{c4n��Εʕ��gwR_a"�Կ��{�a���X=;���P#�)Pύ�3T.t.y:
[����X-VE+�������xB�K>O!M!�㓾�Nn)$wƂP�A��Q)M_d���9*��S0c ��y��O�QeKiesz;Q
ح����Uu(M���];>�~�G?z�T��*mJSF�r�q��z�'�J�S��s�u�,W�'T�Dw�X���l\���|Mi;VZE����FRO�'�n����|��u�G�9���ӗ[4B��5�?�.����%.)cn�i�#qS%�$<�	9)��+4�(a��}�a]VҼ�%�΂�(���>�q�"7`c������?SaX|zT ���s�*+�������ܿ}�]cNcE;��.4zz0�H��f'���*}	���wj�b�,���؆<cd��xx#��lS��}�~�ʉ)���^&���:�l��lIAk
7 ����u��4�=��"lU��^��L��m�C����*�^K�NYel��b���w$���~	�a�Ʌ��o��֥
/n]�}Z9�$2�6$��)h#�L>[f�4�o�U��N�����g���H�`-�}O|��b�J�/��s�����PA����!s�C�Jr�*i��ӯ�`���vpk�]�+'��Aß\��6<G�;��w��s��C��"ݬ���-��M'�6tkU�>	'��� (\�Z�I�?���F��\�|T�Jc��p�Hx��~.qt���e��M���8�Ǵpb�����BVaG���6䠹S��J�:���qmj+���F�W�n����6uB��K��u���$R��hn���ߋm�3�{���L �h����b��:���:ux>{@��78)Mi��dM���?��@܀Vܠ�� i^R�L�w�>�^�l�oLb�M�)��X����b�j��\Ŕh���6%�(���%�;����$�V��QNC�K��,�J��b�sDik�v��"��z�j�>5��k-� Wi_����*T��up:������'9Q�8�e��p��Ӎ��/2�1�D�+���i_���xN�;��M�\[�ë�FD�;g���ND��n���-�7zF$����̿CЪ?      k   j   x�M��
�0D�w>�`/j��/R��M�$��b,�e8g�42��7��S�i�U��'��O�`��ǥP"�U
5�!�`���-*��P��?@'������+� �&�0F      i     x����n�0F��S�~��3��e%�J\b	0k ۼ}mC��%J�)���̱(��L?M���!���du[ A|'�����5�5�=&J�C�=O��	J)g1@}�l�B�KNE��[U�P��(o:w6*l�>��q&#����9��u��hu�'gA�&KGY�-�V��P��ug�Q�U$�l�n'��`|g�1V�ӟ�5}Vm�JZ%�eF�5��a:m�gFʤ��vO��T��m;.��d�g�z��y:���3g�pq�)"��7[��&�*J{ ��q��r��[{ԓ�c:{��3㨛��(E(�f\�)�eVB��X&U������#�����ƻyx#(�t{@d�y������]�~dhb�o3�}Wֿږ%[Xeћ�/L"V�R�IU1��Ч1BB�$�t�:�W��M�o�j�j�0�ҧ���T5�y]�q�5ȸHI0}�y9[�V\~\���--j�5����t9�9��%���e��R�U}K�����t4��      |   M  x���Ɏ�P @�u��;�73�(��)-)҉a��$�ӯoM:��'�����1��0*��^y�#��q���A�MΖp�i�.���NJ):��(P�y�_��/�s�Y'�͢����c�����m����n��ӣ�7|���ap��a{��xdnÔ����G�2�í-2/(��jZ;oZ�R/��k=t�^x����\�;�÷��a���N63�D��1�:�|�/f�����n.r�Y�@���nI�ϡ����@H��1P4�4�L����Qx�<�!��*�*apnd(�RO}9����Х�0?�C���Xof�ԗ��b@�-/U��{�7�y���b��'  ��Op���D����/f�����2kySV��|��8ڑx����nX~BD�4S�ljcG���j
a��IG-|�2FP�TCh�y =}�u�T�2^�U�cQ�4j��O�kT�����P�rk�h}є��lb9�ϧ���w���cn���M�^��?,A6~�<f�'�@�ѧ��6�k0�{�wWګe�t�Z+!� ����P��^���6~-�nu��;�Cb��l�����:#��>LCL�lB	?}�LF��_����      ~   �  x��UKN�0]ۧ�X�D��i�pS��"�;@|�(���i�0s#�8)U]��DQ$�3��͛�c]QFʸK���(iZE/�F%�����RN}��g�X�ʅ���[,;�f0iDc>�cĕ ΍lj,�)� �5+�	j^op�]>�!�0�6k
�1����<����neB�L���H ܥ
�H����� �l�6q;�� ���6�y6[t����� �*�Od���A�����
��t���N�6&x�Z������m):��>zf3��^�8^S�N���K<�����3җJ�=A�
d�=�Y��f��D���� wd��}�޼0u��#-���V�8���Q�����V��\��-t��+k�Q��B(� �WԔrO��Ɩ�4d.#�H�:���S1�����~��M��di~.'q1�����J�.��0k�d\SX9��8 �����o�y�V`W}��p�<�]�L�o���j����	h      {      x��]Koו^ӿ�� A�;�Mv�1�`fd3��l�-۔,Q�ΊM��<z�r��p�2�,�]d�_���B~���s��v���Yy����{�=��<��R|]�y��ȋY�$1�9/fżiRYqYL�y1,��G��4Ç+w�����Ν��;���{��w���~�~����7W���us���Oʧt���0�����'5N�AyP���;�r�<.���r��[���ͯΊ��sfny\L�<1]���<j$tѸH�1}:1��Y���23ߞ���'���f��G��Y�<+K�۹YʜIuI�be'�M"M+�ij.6�~j��M���'�OZ����Q|���9?t��1�]affǏi���T>Ų���=4)�Ƴd��f�_Ғ�}|Jׁ�t%��_�y�aqBt����f�i��y
���|0�}�kSzx����Ͳ h8���?K���]�JS>�.:�G'���\N�yN��)�f�f����D?��e�;�mѢ̙��<����)�f*����(=��I�T�Y�wf����_'8���.m��+�~u�Ww���W����U[�a��7���_A��^��tf�9$�0�`wV�p"�fgt$Dj��'�u��F��z2�^vG\�7��!_�!��B����7���<1��_;��A���X�]l�8�������q�~��&y|��X����-Ie�VX�0�'������^�c�v2��&�yPmH��˟���A�O�[3wk,�\�2�����biY����XH�흃�.�=_�ℤ�(l6Ll�t�)t��rBZ���iH��j�ΆbŖ�����s��>�sڟ���BI)�`ɔt)t\�SM���m#Q��Ǣ���}0�9S�ʇ1�����
s��1�Y��qL�S�,����!�[@��\�L���X�H���o�ŋ���jj$���V���L"���/�ә�*�q��׍[��L:f�4�N�X�	��	H]��O�V1+:R��mM�%�*Y�S�d��&vȘ
̞�f�$�thF���N��N��Y���C""{��;����^KF9�Bd/�ŗ�L�R�V/Ϳ>�=�3E%A˩�@A,�����<~��	#�e59���G�+d@V��}O]f�K�}	�KH�a��T���Oq0��ء�G$��X��TN����9�7�o�i�.˹|r��m�%��`����~��3Cg�P]ѩ0U
O`�^��Ʉ�vi��N3�Nȧ�����u�-�8��RZ�Z�EM4X����].�X@�#�&�؟�Sc�J�<�4����Y�z�|rH�y����%���<1C�d� N�K
�ƞ�,�-r��q�3J�㸒\�ó�^ەeJs���=a��k��G�A�
.��否�Δ�t�c(d�/S�z�/G��{l��n7;�vm��������FcP|F�	';�
��bı���Ηj_D\mL8aE���R*>a�ɋcD�d��3k4��#2�&9�Hp>k2�f=��pp呂��(��$`�	���e����
ߐ�{�
����{*��R2�U�f�E?Ƣ�N�|��)�Ӫ458�@>)��,G��9���3u�º�cy���9��
vT�<���*Ϩ�L��6�=Gv�����]�^d[�JkceiVw�sv�7b�2�&EY�D��G��!�pu�s�3�9<jְd8�*+��ڦ�KqI�y������c��lT�:�NN}�/j���p����b̢�1�h�}3�}O�يDs��Dx҈w�/:(����d��=���%v�"��a�F�>�l@#i����S�I�_px�/��$8ã�X'�A7����s�٤WG�/֑���S��1��ayxU�1�1.�x*��~jy:gF��_|�z,K�Ѩi�s�(VrV۞�\���o<�	<��$���Y�|���\���o�ƬL�9{|N��3ceW<A/pH �8�8�r 	}�+�_��-E=��� ZH`܅���O;�5���,E��ց���V�M�њ��� *�aHvh�a��R.�I���8����K�����a�f�VG����|�$��������8܈�"6+�V#�r��ݽ��?����f����~z�-������;ﭸ/���V����:�ݍ���W|��Fwń�$�'
��bxゼ�o��6���{s�ƭ�_o����o��ڽ�ܻ�v��[Yc�/���ʻ�i��0� n!׉b��$7��<2_p����:��k\?d9T�/cI�[���}�Vsp`���E_�;�c��V��g.�I�����g*��q^`�1�>1:Q�4�������q�\��
� u���T�C�=��Z�b=�T�a�BϾ��<i��0z�6Q|g� =�x�A!��H$ u&����i�\Mdc�4l:��
!�F2N�v6�6`M�J&��+ͼ��D/� �O�,X���.�=��7�v_)r<���
#,�	Կ9�SDV|ڟ�8�5[L����yS����l
����R��)���7B&����VR���&�i�����w��]���熅��Ck��}�`�R9����f�(Z
��'_?�{�$|&��rɦ���Rf9/���wŦ�}5�P'�j�cC��8�؄>^��������o��nc3�}\zP��3O��P�zN
?�B;���~�Q8���x�3�7��B����>V}%�[ "�9`�ȺG8M��\o����Y2E�Q��i��Qϛ"����[QPr��H���$��+��Z;���p6ɮ��3�^dVdWXN9���sx3���J�xH�.��=��'�d�:�G�7�K���K�&{�����[C�Ӊ���u��'��)L�rP^z��τX�~)f p ��@H���ω�fY���cf,ɘxY�
������9U=�&���;X��q��
�@֕�H]�9���W��z`#x;A&�����q���3����@�3O�vd[ED,L�Ԅ���J��Ȋ�s��vͨ�v���ɺ���_�(�����g���"Ŋ����^����v�lкy7p�;��ު�[ݵ�Z��,G��{cu������՝�Ir<��G+��m��ڹ����}o����;���o�{o��r���#����0۝(����	��zќ�8��5�a���.R��#z1�N���!%�J�O����F�4�gPBSJt/Ք���?1��O�W�}R|c����濿+��Z
6���L�r�G���_q�A�#u���C/*E��V)0�T�F� 6(Y]�H�NQ�3�R���!c@#�b���p�D�aL"��C����*l��7z�$J6y�����wLT�2��������{�L̫���V_ute�=G�x�uy��q�����㗑?��*�23-5�?�R��f���T��A�h�SFPBt������l�T�@~����:�C�ڷȜ����³�
�cH�(˹XhJ����Jd�'�͍h 9�8����꫘���'-���H5#�@VNs`i�r�mt����E��&���Ot���a��M���FIC����(�$�޸lN�J9X �� S��e�Tu9�[C���5�K�Ӝ�X9��a�H�<vJR��ό��HJ��\�Sy����ڄJ`��Բ$Ypn�Ov�Ȍ>��;��~��\�Ĝ��Vw���o�u�"N�|����ӱ�R�D�&�|���^}ٛ+��wv?��v72����cZ��=UR���|��"�t���ǚy:G�e���άxi�*�����i�)�q���<��Z�Ƿ7��Bg;b���9@D|^��b�"����-F;t��j�5_�)�7���@��孂�29ֵ�N�u!��9\�!-�DX����n$���i�Ѧ�w-�H��W��A�bǗ��9�;k��fO@i�,�g.�K$^[eV%�ؑp�ձ�$�B{��{c�p�l���Tl���畚Q�!>�f��d�_��yj��P�=Mq��P���si�֖*�`�C=�L�F�S�p�wÿ̥�X�$��ꡢ���!\���;aS�+�q�}�FJ&�    &�|bd�e\�x��7C�5��w�k�߾�W���Y�ꬵz��~�{�GI���Y��m���ݵ��==*b��lE�==Ĳa�ػ?���s���{�����h���揻�{�n�zg��7nMv�b%�vX��i����!�ִ&�����L(���,HY@�=��3�䅖��r�M� -��־�؅�)���8-����=�Y���3N�ç
���yۢr��2�b�p_H�����	xZ�����8�+~��*r�2<O.g#+GRjq���/q�<2@�b�nǆ�C��dA_��+?�����6T�J�I��9��
��%���Tah��|�+\�
���kw|��g��z���dtX%+mEy�<����~�����t�0B��\U���G��@._�����2!y:Dqsy �MfD�gR�{�b��ݝ䟷��¯S��;��a�_�+#S���c��(~o��]�KI'���@=�_���~��b��۷޿��}'�����_>��3�[���o��k?�G��Z�1a^��})@�HW􂟛�0����D1&���F�>�܆h���k�_k(�dö{Ǝ���Ɵ[�'�Y��K�0&~��}�x[p��Z��]#���V�J�& C����1�&�$[�m�HIgc��kH�����%�[m�duk�� 
�2��>�bv˅4�9����~�-��v��m�e��קּ�W?�m�{[��	��%��8>���im�gU�#�+�����Iy�g�7WW>�ͯw��r�#rY�AaĪ	� �ܷ ��Rr���>�T�T��߄Hg5��Z4�0	u��	��۲�w�_?s�2�Г.���\]�"�j�Ed,���O��Q��mn����rߗr^�n������C�0��<�2,�l�w�����������L�tY����G����f���\��?$We�r����[�� i@�U$\)IX��V븬���6�_���f��k�nC1�b��y�J%�_�	|�ku�L�a-�<���'��P���<F�2��� ��Z<`M,΄��e�ŗ��%X���������� �k�T�u2[����vf#iD���^�t�IoG��5w;r�-���v��iB�ԉ����揼:��3��W�b���ak�?�Ps�y���x�H���ҵG0Z�m�]�VCpr{�~!d� ΔL�;N<�!��3�J�[4�U�j�Bi��7�P�k�0�f�)�P�*ǜyG9~\�RؖY9p���MzI[�e�.w�־!�����)\���:Y��
�J�g�,,0Zm�6xd��;�s�q&��R k�*,���롲��� ���y�ߠQL8Gb�L�ll.�b3ʀ�Î\q�=�)�v>u�0	ǰ��1_H��v�p]�cO�:D��WE��U0Z��_7ў��cZ�3/�X2���Y���/���j�JX�^m��`�m�*���0v@�!R:`��VD��k�"%�q�ɫ}�� -��@��BP��;^HI��H��
]��� I���mGZ�|]x�&@- �������(���	k�A���@��+�%I ��.&>����*gR�b�	�Z_�y?��]I�N;���!��r���_�y7��BlWzQ��,�`=�E�kȮ5]D�Lj�q��_Z>���;�\�cUQZC�\؎��$τ�}mb�)���"�q�J ����m+6G*�r��~]�R�:_�;%�{���%�u���1�=F�X�/34�$a�5*]�
#� a�\)���;��=�Y7��W�b��L���W�s
)��pƪ��a�M��[�ݽ���8(�<a��z�����Z�</�����ܪԙ8���b~\�K[Ar�����%(�rP�A$}҅L�
��]&+ҁ0��Uc��_LIw\��A]�3Hd�@�"IR��8��X��Ry��Ti23BK���}J���b&��%p6-ܪ\�@�ngf�!jS-�$ypϱ��*Ӊ�j��������cN4�����Bf��B�|�^;�av�3m@�CkB�|�U�|6>h�t��Ń^�79܇M?N��(��	.Җ���x��B.�gΫ�3�oj?��8l]�,4���ɿe>(	�#����:����ҼD�;�IpiM�S6?�QX=�D*�O6����B��XO��{ĥ2W��X�cO סa��㫞+�L\TW��>�-��ayi��L���0�W7���`N�!���������q`̒�)I4��9�8S�ۙt\H�P!���M��*��Z����.�dD�ˇ3�D��a7W@h��%�sNq��^�
J�&A�H�I4:S�7ga�EVe�T�Z��>�����ꂇRy>�y�t���P��J����(�ָ��F'l�Av ��:i��ix��ߩf�)A���:V)Oh�Vo�uEh�~���emK4�N�35 Q�R���U����"�*�J�a����+�P*��m�۬z;�(�\G�w]�Â���/�Qg��b�G�'��>�q�M\���TA�aj)��&7�g�В�n�`��~��C{�Hk4�8��,�Ю�)"��Z�H/�ed��!�#����vn��ll,�z�-�3����ww޵���j��#_��Z�ot#ed��V{���\][�p6u����,�#<F�H�$x�?[�����7n�����������sgw��#;w�⊖A&P攕R}!�)�bҚ�Փ")72��}�<R�ԑw���]���Z��D����p�f;Q޳��Y�Z�����lh*�le8��9����l�n�wM%�g�SN�}�В�f�ܰ�&����d����t-��ɬ�_V�B���4�.P�D�p�9@X��C���qRG�8��S��Tw��aZ�,�aH��/8��=�f���?z�*�ʀX�^�Ե��6y��Ӡ����'��ZOQ�=w��-n�7.�ݥ�~2��'�����YG�n�@`ʒT��9k'Kؗ��d��ı��8O}��&"��|�T�D�s�j�%P�U�0� �ς��/����d���<T��3�b�K�57���҄K�=8Gm�K�h|(���eR�(0(���[�H�\,\R00�٪'t�iȍEy{��N���H�K�
��x?�#l!��9u��~Q���ʧ�r���ͯ��{}�GN�����w�.8�D�9��OM�(���u�3)7ӎ��v7��JV�^�5a7����
;5�2r���+.1���;���<��8��c�±au"�(V��Y��-渌Yg5.%�4�ɑ����ySj�/���Ǩ���!]ic��{�zd�]�X��:'�.��X��yh�oR��E��ȷ�눩�+���#��߰Q�\Ah�� �V8sݪb�2�H��x��Y\fK�`���E ���N0���%�3,��;2�#f���t����<Q�S��Cі�e-��v|�T��܍�{M�?l �&`h��b�4#�!O������Y�E�:�s���=Ո��/�d�Թ`(�!s(ۓ�(d�<'w�v�")W��1#�A�\~C���-N{�b%������޺�R�U{L�{�i��Mr�V���L����s�	�� �G�p�W;R��/��N��
y�#�T�H�+ҋ��#Mٳ�шp	�Xj��˜9�tn�v�O�u�����6�,t.&�$ŹC��U̢;M��M4RY�*�4]�b�]��Y�ٕ�F��QƗl�Q~Uω宛��m�g���� u[:�͟�8��!�eY7��D�B��Eĸ*�b/".Mֿ�*�2�U!�36���(0�t##��.d�2j9�@��Q�G�>�]�1�d	��f�4�~g��'�+�d:j8�����%�4s���:}��C�Y�k�75�9�U��R~%��� {��A�:�^���F56�Ne�Ȱ~�*�K[A��҂�So���	���#k��R���Z~��$�c=�Jݣ=�/�k��$�LW�oj���lkR`�(ZYB�E��`�c/�zk17�_�q���?2�}Y|� �����AQ�_~�M�v�h�}��X�.��loH��A��X���*Ӥ��N�v�z��o��l�gJde'�𼠀{A-��	   S�5���kQʶ���~��ѭ��z��qy�t�:T�t"��l�6W��\qM?I5fӻ<�7�d��M|tW�V���~{�Ӌ$>֨����[��8��3v���\�U�|�ʍ[�wvoS������xg�el(K����RV!�/l�|ٷ HX�H]���L�7�+�"I�$�����[�������Z;G�B�뵈$�x�G��v�U�a�����[c0P0�}�J��,e�Z������TJҪ%5�1�^�k:��&b��A�o�O�˓��I� ���ؘ9~,C +�Jc�Β#a�L%��nd�}0�Z�&:Ǜ��Z(���=�+���|��p���,@4���5�!p���g��܍C+�B�)��İ�R�{E������5$�Ĭ�ڎ�i�Rv@X{=�A��[����u�m�O�b!'N�����3��i��_��s	�ry���I�ٲ��Bg��$&��yK�a���V� G����"3��Fc�")P�C�>�r��S�dK����,�Q9	��'`�COi�MCP��s5�2v[M�aW3�N+U���8��2�����}��M�r�X���+�4��O1[`���y3P#������p�#�oM�f8/ޗ���][^���`�"w��nN�0�&]�KʪG�(�wg��p͊���+^1�l�S�h9��Zg#�\��Qt.����$�4�~�fC�!,�-a�E�Ƶ��ft^2��^�KY�7$��Y/�lI�{spa'`ڄ���#���Ax�<��2a�od���b�3�R�ʩR�8k����T��id��o���_�BP��c����l�-睩�B���#�7��g�[�!����^�JV<���9e��xV�H��:�-pF�G~�#	Ƙ�*U�:�+׬P}L��t΃�:����c��K�4�F�F�a:e\K%�U�T������MTF��kd��Z�}o]�N�q��cO-��aɸ&lg _ѺF�J�#�&kݴ�z�	N��"�B#���疏��B���.9�M����ei?��uf�A����UD���,8
\�w<�;������ʆ��Qn�����ވ7�7�G�q<5,��V^��ǁ��E���>�R�V�l��GMiG�G���QU��5o{���q���U�ۻ�:8�s���ՠh�'<�@k>.�L^�������3��-7,�P�څ��jC�&LlH"��x���f-ͼ�N_Ң��n��{{���v������nu{[����F����jݤ�Ns);���z�/�گZo����ݐBK     