PGDMP                          z            pts_db    14.1    14.1 z    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
       public         heap    postgres    false            �            1259    49176    news_contact    TABLE       CREATE TABLE public.news_contact (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    email character varying(200) NOT NULL,
    message_type character varying(50) NOT NULL,
    message text NOT NULL,
    income_date date NOT NULL,
    is_read boolean NOT NULL
);
     DROP TABLE public.news_contact;
       public         heap    postgres    false            �            1259    49175    news_contact_id_seq    SEQUENCE     |   CREATE SEQUENCE public.news_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.news_contact_id_seq;
       public          postgres    false    233            �           0    0    news_contact_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.news_contact_id_seq OWNED BY public.news_contact.id;
          public          postgres    false    232            �            1259    40968    news_gvs    TABLE     w  CREATE TABLE public.news_gvs (
    id bigint NOT NULL,
    street character varying(50) NOT NULL,
    build character varying(50) NOT NULL,
    region character varying(50) NOT NULL,
    date_disconnect date NOT NULL,
    date_connect date NOT NULL,
    reason character varying(250) NOT NULL,
    rem_obj character varying(50) NOT NULL,
    is_published boolean NOT NULL
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
       public          postgres    false    216    215    216            �           2604    16767    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    16751    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            �           2604    16774    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    16783    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    16790    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    16849    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    16742    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            �           2604    16733    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �           2604    49179    news_contact id    DEFAULT     r   ALTER TABLE ONLY public.news_contact ALTER COLUMN id SET DEFAULT nextval('public.news_contact_id_seq'::regclass);
 >   ALTER TABLE public.news_contact ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    40971    news_gvs id    DEFAULT     j   ALTER TABLE ONLY public.news_gvs ALTER COLUMN id SET DEFAULT nextval('public.news_gvs_id_seq'::regclass);
 :   ALTER TABLE public.news_gvs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    16879    news_news id    DEFAULT     l   ALTER TABLE ONLY public.news_news ALTER COLUMN id SET DEFAULT nextval('public.news_news_id_seq'::regclass);
 ;   ALTER TABLE public.news_news ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            w          0    16755 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    216   ��       y          0    16764    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    218   ��       u          0    16748    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    214   ۞       {          0    16771 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    220   ��       }          0    16780    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    222   ġ                 0    16787    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    224   �       �          0    16846    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    226   ��       s          0    16739    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    212   f�       q          0    16730    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    210   �       �          0    16887    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    229   ��       �          0    49176    news_contact 
   TABLE DATA           d   COPY public.news_contact (id, name, email, message_type, message, income_date, is_read) FROM stdin;
    public          postgres    false    233   i�       �          0    40968    news_gvs 
   TABLE DATA           {   COPY public.news_gvs (id, street, build, region, date_disconnect, date_connect, reason, rem_obj, is_published) FROM stdin;
    public          postgres    false    231   �       �          0    16876 	   news_news 
   TABLE DATA           s   COPY public.news_news (id, title, slug, brief, content, photo, time_create, time_update, is_published) FROM stdin;
    public          postgres    false    228   �       �           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);
          public          postgres    false    215            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 42, true);
          public          postgres    false    217            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);
          public          postgres    false    213            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, true);
          public          postgres    false    221            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
          public          postgres    false    219            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 51, true);
          public          postgres    false    223            �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 108, true);
          public          postgres    false    225            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);
          public          postgres    false    211            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 32, true);
          public          postgres    false    209            �           0    0    news_contact_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.news_contact_id_seq', 5, true);
          public          postgres    false    232            �           0    0    news_gvs_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.news_gvs_id_seq', 26, true);
          public          postgres    false    230            �           0    0    news_news_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.news_news_id_seq', 12, true);
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
       public            postgres    false    229            �           2606    49183    news_contact news_contact_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.news_contact
    ADD CONSTRAINT news_contact_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.news_contact DROP CONSTRAINT news_contact_pkey;
       public            postgres    false    233            �           2606    40973    news_gvs news_gvs_pkey 
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
       public          postgres    false    3246    218    214            �           2606    16804 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    216    3251    218            �           2606    16795 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    214    3241    212            �           2606    16824 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    3251    222    216            �           2606    16819 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    222    3259    220            �           2606    16838 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    224    214    3246            �           2606    16833 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    220    224    3259            �           2606    16855 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    212    226    3241            �           2606    16860 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    3259    226    220            w      x������ � �      y      x������ � �      u   �  x�m�Mn�0���)r�
'�o�kT�"�R$� �X��^���8C�Q㙱=����>�}RF�VMV��ٱ�3�t�2j|��ox���G��VPxJ`��m'A<%��?ث��!A�hv��σs��Q9���^q9�c��O�$��MR$82n-�s{9��6.r�"�p���!yR	 XP\D���gU����M��)�z��� *G`��)�jױy�6��ղ�v�j	t�m6\d����k��EҜР+X��ů�az�\�=1�1����^���VIK~���7�_��ǏZ�Xc�N�b�3��;��$�(��I���]�6�q��B.��o�uC��c�lq�>J��{����;]�Mc},�qh�1�3���#��jש���<>u1[1Al����K[����j����̭��*�VfjUO��̪|be��ۋ����%c      {     x�m��n�@�3<�n�Y`I�Z�mJML�v��.�o��`�C������z[��vπXXHF3���iv�U��]��Yj���%笈�]s�|L��,/�?�R[�]�9k�rfM�@ :�@�q��Ӡ �E�)���Vd.rn]L�ȢX�T��n�	�\�+��p*��M�k�'jruIr�O�+Z�m�H���K���M�i@�Y�t��p��EvϺ(��J�*�XZ��nױ���#�F#�����7-�`/�0TU���[7      }      x������ � �         �   x�����0�3�Ҍm���ǎ8�9���._e<�K����b'�IO�y/]B��h�W!O�d��l�&�Ƀ��EO���c��h�H�#�q(-K�����pzq<�8�E}�2�E�sS�x�T<*�*^v�7CT�Y���L��h��f��7�t�Y�����^��{q�Xq�Y�����4P      �   �
  x��[K��>S�b�'�Z]]��K|�%���2J˕6�+�H�d=����A.������X�v���_��Tw�,gzf$.��D�Cr�U_WwU}����8��P���\i�Y!�� ŷ�;����Q�r�0����e1�|U�e���a�x^�����Ƀ��=_�H-?�bm��>Z_˳/���Ӂ�Q�<WH*�E����Ġ�w��P�M��ܝ�+���g��Ǭ��n�+;�i�^�|L��\����xD��#�^�!��ގ�'�QF��u���&���/����*��d���W%���4d�;�n�G�j�32tRh�$���W�7�DQk��k�������w��a�H./R�O���Ee���bc�����=Tk粆�J�zC�j~��i�o��ʥ̥c����;���/5p6э�nL�6<��B�+ �N��d�U�5�t�&�S��ɽ�݌�����I�9��}�^�����=s�%�iZr��6��I��M� /A�3���%�� �1�n|N;p+kT���&��Т3�ी����V֨�49��7w�U|���D�孂����X�]�'�eTBN\��1��I����̂�4�#6r��'��4��6S�҃V��
�Z��`��I��r��@��;Є�98z1���`[=���F[;}T�'�ElΌ�<v�jN}*[@GC-؞��5��C�����Ç����E�(����v0��k;@�{r����^��Y��H���uE��ŋ���D+?��/�߾�{�l�1W��V���7�~=��H�R�ӌ4�����V���,�9w��5��:#�?��Wޣ��!��Q����Z+Lp�P��
�w�5�h�d����44&�s��8
�<.Ǣ8(k�����s�ޤ���	'd����N`�ŋɽ,F%�"��<�������
oaS���K�:3G"coC2kA�Ř���s�ά�fu�Y���T�Y�}�� o#4�JH��~3�)"�@�¿n�șC)jʒ�j�ȉ�K��Hq���_}�ݼ�����}8;��5��������V��t*'�F9eה��fIs�iY�lN�Jj[�v�7��$9s �m\Z�I�I֍D���|Dz�6q}�n$<������q�����[G�\�#{��D���8��$�u9�W�I�@�Y��������^96�Ce�T��2���^9.�C�2p1�~]��#y[R�iil�p���+R9�/g�� x3��^AU$B���5T9ƝQ��s����o� ۭ),�>Qk���k9�5�}� -�F�� �.S���wd��0�a��W��L)�zB:.?>�<,K��.`��{*UI�#�B9g#��k�PS��
��y�]9QN���ˊ�нg��9VijM[#y.M���,}b���Z�u���=�gdV.k:m�N�P��bY:]['
�5UD8��o��~����T�����BY�~_���*�ۧ,�&y]��^5EС�2k�too&E��O������Bϱ������04Tx��E�7�ou8�����ZT(���~]��x{���m]���޼yc;&� ]�ҕ߬UZ1��v����pg�.Y���O�N�%f��K�w=��t�JL���Gwz�&�����nnNo��z"MV�6��2x�8Qm\���9���rme4���<.�ͧ�҉���~����=E�P���$z{��ϭ��?�r}�y�]�y�7𭡻���.gȍ����g�on�F�~&8�1[�S)"�B/K	t���Z�hm(��c)��.�`����oܮ�n�:
�ma�]�DB�����y��Mv��e����
{�JSP5�c��%��J�Q�Rrm�ZZ}��Ӭ��M�~j55�L#��'G�e��ڸ	s� �`f��\���Uҹ�E����ڴq{`�>u-�m�V�����:꿇?R_�щkx9�hstť]A_�(�-T��3u%r��� �+��0�K��a0��]����)�ղ�C
\�șP�p�
�,䢍\Yor������}P�|�`��ղ� �]��y�WGW�.�*���Ƃz�5����&]t��02ٜ5����r7#6iޔ<G��i���{����Oq��$�|�B�tŬ��ӶOw��H7�]͉R��#fMV)[���}�R�&�X{(TJ��c�4�R*.�Y٦	B�P���$'���az�܈� ��������ɤT����bycK�Z���x�˒�7W�K��ě��n��" �'-��-d�-���Lξ��P�=d8Z/��/`���:��񹉪X��^ӭ�=�\-�s����l(b�֜�Q�Y�v8�~��	b"6������y3?��,�.A���a �V+�'@X���L�
��v�F*�ۄʳN�ϲ��6X��JV�=H9.��e�Ɖ��Ot�p���v$2���ƛ�J���q���Sw\m>|��b��r�h��VK�?D�C�J�h8���%�n+3֊r߷-7��4��O4�D��DlK�?\��yc�}"�<���|1�!�o�v�6�����vN����k��.&���.-��jY���/�9
�"�o
%��A�lE�N���[7wo5��Th,��)��^������ğ���E*LF/����8$��?S ���s���ܴ5P�Sh8��Q�w
�c
���j=�+��:+�xUE�ɟ��Sp4�h�����S���
'Q��]�c�r��9s��      s   u   x�M��
1D�3#ֻ��KYC-�ii�]��ւ/�9	3��s�B�X�l8�����e��1	��J��.U��LS��lˬ��)�����Wm�[��?\n�6�d: �������)<5      q   �  x����n�0��S�E�{|ɳ�de��Y�B���o�������|s|<��fp�0|�]�a��-�r(�j�q�`��c:�#ː	��c[������sN"��8�e�q$b���ړ��}�����Y_����ΐ��
�|fx�-C�6��*N��ޖ�*K!�����Ll�b��v�(ø	$��C[T����uu���Q�ۺ���kN~�:Iss�	�'ԥ�/We��"�@�6�"����v�󰞎 �c������臐|�wv���\��1c�D�>܏K٥tc�6�� "#cnN59�Uy,����ٻ�k;[��/N�]p��#�'�^�Y�B���"�̏�^B� 1�n(`�Ե��k�A���0`/g�����Z4�|��ĘO�f������m)���қ��{a	����̦w�ѧ2� �,U�������Y+w r&r?��UAHBnO�uZ��P*���k����qh���!��Z�9?��yRӽZ���V^�fƏ�ɪ��O��h��x����̴-S**o�u��XtÝX�A��X&�Z�;w��Z?aG�*i���ϒx 9`&��+�sØE@��?�Z�Lz@��M`n�t������� X<#���㊳eTw��<��_�4S�<�EVcJ�m���e:�� �w�Ɓ�q�\T�= ��bl�LN�3FFRT�ζ��]f      �   �  x���ˎ�L ����U�~��*��Î[��[E4���8Iq(��ߞL&�/���~�g�ҎJ���j�{p�dQ$i@�	M�crq��M�z�Z{k}�Qj+���Ƒa�{��}~���:�m�姶"\��L�_#k������l��)�%P˼a��y��XF������ql�<���:�9�!�1�]Y�xc����+�V�uQXگ����Qk�����u�Ԅ�=��M��X����O�a.�y�]$qz��"�b��� ����W����X�P@�' /l$�h A�:�k��"4	ȳ�x:���	M�+��~�Xb��}��Z(ٵյ�r�{a]�<P{��	i��OtI��X�Vc$4���KQ�-U���exo�p��.��"g�^�Ӎ��a1֢��,��r����_4!1��?��}�M�֔P^�1��4$n�!L�[�<��f	�9��aنRT������r����_�a���m���䯏�@���y��:��|�� m�`ܢA�wEw#�Q%�K�FgP��|V�nf��Yu6R����L��=�6.�wg���CTW���m�?j"j:!����E�ץ���V��D�4˱a����'�#f��ͫ|��¦{����y�s|�	��4���)�}��w��f�Gt�?��=yyy��;4�      �   w  x��R�NA<�~�p�.F�|�	�(
��a����
��_� ���/���5+"z7�tg���j�v[�Z��4A��}�͗K�B���;�m�n����^������P"@��,)��9=��Dw�c�����ǌY%%��Gq5�P�
Jr�!�U�k��"ݓNV�H��	�؎��3)'+,G��0bO9�����(�zGN�U����yǥr�0~��QU�#2	�1	|s�f�ȯ^�A�M+�Ϩx��rP퀂D�F�P0���7�&~���^O���wZt5o� (����V���SGzЦ>5W��94�J�e���x%�>�_�h���c!���g웗\"JHjf�=�LM�?��B�����+vӖe}�~�      �   �  x���Mv�0���>@�����]z� !�.�h��HZ� υ�u(�+�nԿd�#/������h~�a��8�G.씷\p�.D�
~�\ۜ_{�%�δq_����c-H��BJڣ���gp�e�no��"Ԃ�x*��Q,x���y�:��\��M� �¸�[�/�����P%�&����9B�B�P�� �j"x���c���N��M LwU~@��xio�.���a��M��+V�Wyd��2���N���� �񞯥��p����/<��� ����)��2��2��9ش��6�瓨s���
B�Jv�U��DkՁv�P�#��hu�	]5��r#ubRܔ��V�P�7y5k�㎋W�O��H���~T��1�q��O����cG�=R�����a鱕���1!��Ww�q������=���Ԥk�S:s�);�X���Ru��o:R����)��׭6��ym��64�n���Q����>�G��PP$E      �      x��][s�q~�~��!*����]` ��+yK�%�K^\��$��H��z7�!Ѳ��%Q���!%�`����f��IN�}.3g �T�Wl�؝�9�>�_w�ӟ+�Ry1,��O�IqXL�����������ܝ��Z��������W7�in��m>,�i1*��~R�M��{�y1�?�$�ms�Cs���*k$�����p�x�����G��tg�;}l.ŏ�����k~7��7w2�;3���������=K�W�3?a.��\5(2�$�-h0����{R��ͭ�0����Y�I��c�u���7f*_�3�������X3B��~s/�?���_��L?6��ۚKh,	M�8m������7n�����vc�_�����|�6.��������y��[ʤx�f�u1#)�m�{��R���f�w�s�f�S�~���?�\Y����9�G��4���1>Ip�n�۶G$3����"����Xw��3�	|��܁F�Lz�^R|Y<����	�rfnf����L���.fF���|�+�'x�w�ۖB�dLp�S�4�����}63��/uKͪ�t�𳜾0����2��e���6}f.7�d.%����y�m,�!�#0g�W׊�2_�F	a�Z�#Z]�0��ہ�M�G�<��.'Q9�k�1�}H�>�gz�F<�g��g3�Se��E/��7���3�t�37@���й�:e�����G$���b�N��rH�9�F��E	 1iu�d��9dR�j�`�`qv����aǐx�;�ğ�h�i1]3�������y$Ze̳���8z��V���Ŗ�t�����r�ڈ��=��<��l����=/-�3sk9Z�#3կ�N�p3�n�}�j����,0^z���
���P�� ��x����xvt{�hE&�#|��y��}���\G�RH��*t���z(�w����{{�w\3�Cv��3�?��O��1҆�zJʴc�)�wBS�3+�i1N�>�a�Ng�%{D���v;�4��l'���K2�������9��Op��P��Fy�љ(�mQ8�܂�t�+�Xˇ,�w�6��pu��L�7�̲f��n6��=��t��8mL+ۣ�n�9p|Pu����~���s��oT��<lR���|�a̰�z�Ȧ����N�Ϊ�Z���>�f5h���/����"&%KV�O��^
a&������/����FɁ=��<�mݛ�*�����Y�UO19ȴ�E�BHr�2w�}�ϟޕ}��L���̍U����@Q��~yX޳ڕ$���:���P��%��FU�3���h�>҄�3ud�1r6i�ψ�l����2d=�Ӳ����~��2�OJg�F�l�����i���b�#��J���9��h@��	:Ej�-�����8(���qmQ�s��fN΂O��c�㊁��|̛X�a��%��h%s##:��`��z��M�e(�Lkk�֩@s�̹6�Iz��/���،�p�@Fo�Ok�GC7#g�k]��"9h<CrkF��登�ŉ��Q��w����E��b��x�=�>�1� 688Ӂ����s�*p@������Ѻ;\`�������K&�^r<�æ.�^�8�UD����(��2�ً��E�����Pnq�!`�%�oy3��d�i�}I���*��%g�����F��~嘓�|������pU�Ǧ�P��Y����(�K����/�U�Ǚ���L����|JRE�> Ȱrǔ���	d�Ȣ&v%3V�C>=/sh ��wZ"2���}�����]ϱX�CV��Q}m>:
-� +=����}>��莞6�����";�<��?i�Ì�d�|D>��.�t0E�����c��y����)�园� �x��4��S&ϫ;����/J�w|s�q�鑑J�TX��\4`pΣǲ��a��.��	�g�/k�T��?�	��T}���2�>U�L���A�	�0���-����V��ma#EH��~E'�^�Y��Ǿ��5 I��Ô���*ܤ���tD�H��D�;��ҏ��WB3�O4���>=N9Ve��k�(>b���Th1%I��%vh#�[�DOR'u�3���0�-�P�)̳�����#���SqZv�J8�������v�-�a�����Ɗ�X?������tyr�a@�
zk)1��hE<PZ�c�?.���5�ʲ��]ٛ�����e��1�91v�\N�N6B�/ʍ�S�p�N�/`����$�Y�{^�~xj�#,�!c5�&�h�Vy�gG"Z�ﭰ�-8�����@���XB�b��K �R����m�"�%�=�>�aJ 3B���C���a��e���T�Ȭ+rXp�~ס%�h��m��>��YD�i�Ĺ�/]8�xL%�s*���4#h|R�z�[f���)�M�X_�����R}"���D�VD�X�G@�<nRn��(`1;����)<և���m����_�ݺ������1�f���_�|��f��޻k���7����_�\1�i-v��������B��I�K�������b�K_n�ҙ+��h朻`Y�DZ�z�O�n�^{������ڇ��+ͭ�[76>�s���������Dܮ�w�H�ɸ"��*X_��������Z�z�h�|?RY3Fc��5�X)�I����)s�T�j+u7��EN�UK�V#[�T��H�8O��[S9�6�V�>v�g�wË�l�̈́�G���!���		WO%�Cɖ�X��GAl��X���\���O��\�-;C��#M��t
G�l��K2��J.���R���
%NE9jP�؝lɚ�8<�{t���R�}g6���GY�"�Da`GJ����u{c��/��u�x]>����ۿY��R���K���dE�Uy>{qqX�7z$	���`�߰-I�����ɛ�Q1�f�����Lp���"�T�������|�K��M�Qp-��l	I
A#C�޵1�p� �uIT�9�>'�G20J�b�X������.ێ�].ص�Iyj�n�z�H�K�h"����x(k(��#�G�f��j�ǒ��f�(�E1搾p6 \��&�~G%P� \I�e�	8�3Q|���"�p��o��N��7ivBp���j�����,s��T��b(Qűs4'Zf<��t��b��@��)%�a=���"*<i$�?�]M�5���U�o����O`����}�a���}7��`����"�郗��hD@����(�Ka���Q��]�l���!�Nي )k�fD(]<�Lҗr,<���%�(�%�h�Y�X���ϑ�å���@���O�t���a��(� u��~~���L�����fʇ*;V���F���+eќ2� M��R�J�1�q���<�Xm�U�m�D��P����k���D�Òr���E���]��$�OZ%�m��7�.c��NG"g)��v- x^�!f)p�BE�?������D	r+贠�������&#�6�S��&�X�Z�%(M~��m�ʉ#j��<��{�s�r�D9��F�!�
�HM㰶�U/<vxt���s�Ǹga�2++����i���3{@'��֔)F���̮�a�f#����<����l��nv:��LKX�3�d���0z����j~b)gYp�vZ��y�)�T�!x%���Q2�w� M��45:9OH��qIZD#�v)P��0��8{v��� 7|�L���.XvFs@	�i�U!��dƣ�@�~�A�)snsʘZ����'����C�ae�m�����{T	bش�S���茒�4�Ʒ�|)9f�+r�~b�f)���93 w�~�,r��I�M](k�H� �S!�5`>]�8�M��i� �*�h���I�A�NO�4� �5C�g�t����Uz�/j�k 4Бp�i0MNY�u���~�K���
�涨a�V-Y��c��H�D���0��da:u/O8@��\�١�;��{Rn�`�z5�$��0���lo���yzRh    o8ݻ���8x1� �=�~j�9g	U�|��ˣRWT�86Lt(a��U�.���F�ջ1�nqHǝ������o9�uA@!'L���ۿm��,B�	2u 3� !
5�F������\m gz��]�?�O*5R�13T�H4u�۰���#��G�@7�7�ػ�
+LXK�Qd�;�){e�)�6�n���aa2��{X{�����"�V�������;�rl"毭֯��4���7�D�9ߺ�~�"���"���r���,-.u�������|���...q>`~���"Sv�$r�{l�A��.��7w������������5*�Zi~�|{���+��@�e9;�n�+�b�`^mX8�DE$�m�˪�w��n�Z�4	=یyֈ�����^����
%`3�%����>�@��R-�y8�鬴\@�n�:�k��d�0U3���TN��xW|�����[j�S�j.e[W�w���qC��<�F��/>VC�i2��(��(AX�E"���o�,&V��+��f�/f6����o+��*�Fҕ�#n�����h��%�1Ժ�3 ����Y[��d&�t��v5�瀒1?mݙYc��t^0W�I�!���1��>�n��F蝥U ��y`����'�p����{�< 6Vf�Ԋ��y�0v��ҽ�W��iO&S��?&�1��Q�XM,P&�)	���1��B�7k)a�µ�u��0�w�1�N������:��탆�*a������(Ӏ�I�� �TA:Z���7h���ԡɘD��y�i�VNtPP�sw�էXC�K��<�/�d'��`ږ_���$���У���_V�:K�M�>�C"k���l5�x���9��9�,w[���Bg!JL��Z��~���Hdi��M@ �#`ofs��7�7n��1`c�����w��%������UM��X�[$��gY��E�`�d�Y>·�򢩈���V2�!ց�̣�A(� �L�Dw"�}J��'cٖ| �S�`����`;<T�(��;��d"E
��J�!�0ER⑗���o���*�����&�����A��.E�:��([�'�yqwҲF�+�-V�!�Ri��ʼr)k�P����cw��a��pT ��HtE�u���}&qY(�J��F��-}N��h��!Bib��Lx%c���w˱.�ɧ�C�G��d������R�l� �f�Q�ui��2�+�D�킳";oyp��HZa��-��销���H՟�W���cls�����(c���txXeC/CS��H��~����o�1�i(�r$i�i�n��H)A6=��?!޲vv���^`@��<]�T1���ѱf�j��m3u|3��eK4���sQ�#���v�����PA!	�Y��e]���(��ϸ��b����8��L��+[S�2w�~*����l"ѻTw%��Tٗ]>�)�>e�[}�\|�*�Qud1A��LKh���Am���sqlv4�IR��#�Ba��W��޾����76Ƃ������՜3�#�Z� �A���@���=��_�|�'.t���ӹ׺�p�L؏��j��WL�*%��8�' ���~ !�QaC�2Jy�b��M6�����֌�9�Q�M9��y�{!ͭ���[y^�4�L5�i1�J_�O�uo(CJ����q�
��܅/��j��X�+��*��eϛ����}�Њ݅H)��F�g��HQ�]��,�1��*��g��ЦC)zr��#�ǝr4�����*O,��q�zozE ��p�#�T�TE��Sט�պ�C-ᢶ�qS�)��ݼ�����HC���;��P8}�Y���N�=�kS�6*�����Le`7����Wڝf�vO|��5h�3H��Y�E<4�Z�m.ܬ�2F��d?�����m�D?�0������H(Y������z�CB����[p� �/O�s[��X���(F�	ox,��(]��μ�XW�v������o#�f�+��
�5D�?�Q�>�VY�X�3�\���`������Ȫ��o��KD�|��auT�/RX�H|��(Z��˔7zs�Ev��X �ը$��lx栰��mPTN�HH6tT�4 r��O.(>��	Z}{���͵��{�V��%A��r��<�m-.�:Wb��.E���ݥ+y[���W�+�$�a���m6�7>�s~/��6n����j3t�^xU�b�����&8���@�#��)�s��Eo>c�C��Z=�C�2RkӐ��~6�厔������w1�r̂�-����ϰ��va��둈��ΰ���Z>�=��J��i��A�>1�	�����م�כ�\����$�o�3>��p��&f��egPCAv�{0��q�\��p��it��6��7תG�H9�E�ބmdP��v3�r��CuE�o���W�w�������*�d��(D�Y��h���>����
�B�A8�v�n_	Y��Tjt-����@@i�$�f���*_q����},%;� �|b����Q���Z��֯67W��R>��X\�,�z��~?^�8�n-��z��zs��f�Z�s_�n����D�/�;Á�$'�έ���q���۔?x���[[�W�Z�Z��J�do�a���[+�[�8��0������"�Hg�J�8袖�����S-��,G6'R��ÿ��~�	#����H=~��=��/0��
�g�ޛ����	JLp�O�Ԅ����=J�����I�K*�,ES��"�=k��g��5��&
Q�)���7�z�J���RÌ�X���}dɽ`/����K.���_���=)��;qs�}�vH�P�>���F�9,�B^�c>�?dl�\;��v�zG*����^�S�.&r��C&Q�|�����}�!(�~V��(�n���N:���r¶_b���S̓��je��Z�+���}R�q�w~����;�pٍ'�������d��!�.�D��������W+�\�����^s���w+�?�X��M�����͕Vw�?OdalcM�(0_�n����S�eZzn��-��sB;�+%d�-A#����2�
٤/[�'F�>V��H:��������<4��n���V@Y�:�Lc��~�f����JE�N�d0�4�Y2�SCȳ��g.����K�z�BL���@\� �B��ֹyk7��I}�;�n�M��~o1�Z����r������ŅN7���Z���N�1��<��V:F4�Q�r�����Vo��4�J��ƍ�w�7�?@	kMl*=ʦA�x�۫m�'bԔJT�l���y��ǩ֠چ��X&��g��re?�H���J�,.=Clb���$qᰗv�0.4�T�6��vL���&hTX΍��gH�Üء
�bd	Z#�4d!�Zr���g����xM��D��i�����" G	�Ji�����������H���Ջ˕*ފpY\�7	���W�A��������K\�����"4�j�_Zs��kX��r�;L�����?>`����'�t�rP�
� ����|C�ku�����AZ&(��C=#>L���M��>�ո�z���:A��cAy���j�H��8�6bz��VU�Vmm�e�dmu��(�˂\L��"�ٛ�#�:M�5�
�F�
�Ur���	����&_��(�Si�T�'ġ�-���X�=�(��l��)7-_ɾ�a
i���J���hG��i�i���	b�TS˓;�gz5��K���������D�>Cjk�U-�B�7l�Q�/B���;W3�� �I��i��b;��l.����I�cŚ���:βr�mj7^���U��C�"���L��e�˪���]"�˖���	gq-��<��(A�N�����`#�L�K-���� ����k�4�qO[U�u�YE���]��H��DY�u
/���@q�*<����Hɍ����� 
d�{��+��f�Wj9��;��/��g#*��Jԟ;�%��QCa���d?�Z�w�M�o���Ғ��g�Ȗ��_w��ҕ�9�T���aكB=q!G�о\N"X�gqd���)8k*<�o��:� 0���C��=���N���q]�l���Ҫ�!z�~� �	  �!iW�����]k�Ê����1�m��I�}#���g�e)C�T��%���0�}�{`+��mvy@1����6����Y:�8挌���(ѐh��E�s_�1��d��R*�[ �n"TL�FݞKbuG��)=wI�7I&���f0hVD���"�l>G�I�n�u�p���x ~z,R����u��B�������PPQn��t.��0�R��F��j$�Ǚ�8�q����&6�Ğ�V��G^�H-��Op4��p���}�Up7wMu݄�6�%�Rn��a1��t���U�}>��#V��j�;��Y�������_H:%�HY�QCh�y�`+�(���>~1[Kh�t`{�y�a�1��b�~\�u]=�?��p-�C`C�Ju� c��O�d�_4H?/>o����O5-�j�{�����.�RF�R��,��%Np���XA��4@�tv1�ac������dm}Hj�c\��|c�Je:��D����q/鷛�^s�[Ο���}
	4݁K~J�s�<�J{�9O�(�4riS.�M��ӾR����_t�ݰ������B����ũo�V�se���LHw.���/�d��L��W�,5d���{x�p�7���] �s����r/�І^I��U�6I�=ڏM��1�`����Y���?��D�%��-���ɽ�!�.e�վ��]�^G��)����Jʫ첰Z��ҫ�0B����@i�%�3��s<>g�1���J|́H��Vb�¨�t����ݥț�h��W�e�NF�4�8�����:P��T
�Jro%�}�&�+�M���`��:���蘁�PƂW"�>4���}c����7��Z����جYu�9�*���(N�{�����́+�oF �G0>�O�� "E6M�<d�=J��|'�?V�ڄ)Sw��fe����w]�%Bgs(	,i�=&,e�O�_�v��b_�
ﵴ�h�Pӧ�ɡ�(�$n0hT�Cu�T�@���͡� l�-��l<	L���Ii'�"l�F��8Z�^;�@�P)qoL,�+����ٗ-<�oV����S�^Q��自�D|u
�u�6���	��$���z�#%:�/y��!Ӿ���:��ۍ� gxs���KM�l���_ғ��ޛ~;Wz��w�h�Z~�y�˾.0��C���2ǃ��$V̲Q�S�a�B�������e���}xy+蟉x�#�ϫ���^����P�^؀�J<����Ծ�Ey�S���AU��ZD)�?�
�c�mND�˅5�)��K��˪�ܗ2e�[���Q�$�Tn{H��3Ӡмҍ�=0�⛂ōK����������>bSR)���G}�{�9K���rj���X+��Dt��=�U5}Y���B�͍�kW��Wn(Pn{����^���]�-�i�����=����Pg7%�KF�`�s�7�����غ~���o_[���\��0��γ�Np�w��	(����fؗJ�j����朗ezz��@�%��%���k^�ݯ�(��=�k8@h�:��q��l� ���(i�E�(m�!Wo�k�7�P4c�_}j��r�	k2�8���]�o�F�����
�8Z}TH_�#����JnA������s�бo�1�K�u�w[{�j��\��A�TԺ`�!� 2�!�wO4��=:j���c�:t|���{�
���oϮ?t�
�T0��i|_��^_v1.�������x=���X'�\}�,��B2.R�_��J�+�B�|�.�C-wtkt�ї\]���XsRe��^G���f)?h���h�a�Ô���1Y��̀8Ɉ��I� ����T�����c׿��1�x�CL���a�Va;�s�XE����Q����P��u����?s`��'/����Xai�׽_�ਜ਼����k�<Y�)U��g'^�~[ӹB3�D'����0��s�4���M��^�Z�[�]z,�D�������E��l���o]��|��͜�mf�/� �j�H��TM�n�j��c�Vaˏʯ�����R��v���.�I�ǏʫH*,ˋ/���?^�y�d�%!y�-�C{ge��$%���@jռ�.���_ �"�?h��8�Q*	<s ��C�����&\�N.�b:%�U ��[EQ�3_�R�F	z�Gb�+��A��r�L?�9�Sp5�'s��W׬����R�@,����}���6�%E���մy�^hv^kek���/�D��ئ��z��gk<��$b2�^��Ш^Z��n��^���l�in\�X7��:�6��ܢ��������7�W檵�1D\p���Ua�3T,��5L�a\�� ��z�Fc�qa��Dq�h�#�WV}�x��_�6�z!�#��<��B6�D��R�m����*+��q���YaG�z@�9<��JG��&5�Q�%&�8���+cmX�-ީx*������T��t�͕���^]�o�:��~��W{���|��tE��z�W�V�b     