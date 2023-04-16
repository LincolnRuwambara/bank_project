PGDMP         -                {           bank    12.14    12.14 "    *           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            +           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ,           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            -           1262    16393    bank    DATABASE     �   CREATE DATABASE bank WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE bank;
                postgres    false            �            1259    16402    account    TABLE     �   CREATE TABLE public.account (
    account_id bigint NOT NULL,
    customer_id integer,
    account_balance bigint,
    currency character varying,
    created_at timestamp without time zone,
    deleted_at timestamp without time zone
);
    DROP TABLE public.account;
       public         heap    postgres    false            �            1259    16400    account_account_id_seq    SEQUENCE        CREATE SEQUENCE public.account_account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.account_account_id_seq;
       public          postgres    false    204            .           0    0    account_account_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.account_account_id_seq OWNED BY public.account.account_id;
          public          postgres    false    203            �            1259    16430    branch    TABLE     �   CREATE TABLE public.branch (
    branch_id integer,
    branch_name character varying,
    branch_location character varying
);
    DROP TABLE public.branch;
       public         heap    postgres    false            �            1259    16394    customer    TABLE     '  CREATE TABLE public.customer (
    customer_id integer,
    first_name character varying,
    last_name character varying,
    mobile_no integer,
    city character varying,
    dob character varying,
    date_created timestamp without time zone,
    date_deleted timestamp without time zone
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    16426    loan    TABLE     �   CREATE TABLE public.loan (
    loan_id bigint NOT NULL,
    customer_id integer,
    branch_id integer,
    loan_ammount bigint,
    date_issued timestamp without time zone
);
    DROP TABLE public.loan;
       public         heap    postgres    false            �            1259    16424    loan_loan_id_seq    SEQUENCE     y   CREATE SEQUENCE public.loan_loan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.loan_loan_id_seq;
       public          postgres    false    210            /           0    0    loan_loan_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.loan_loan_id_seq OWNED BY public.loan.loan_id;
          public          postgres    false    209            �            1259    16415    transaction    TABLE       CREATE TABLE public.transaction (
    transaction_id bigint NOT NULL,
    transaction_type character varying,
    from_account_id bigint NOT NULL,
    to_account_id bigint NOT NULL,
    date_transacted timestamp without time zone,
    transaction_amount bigint
);
    DROP TABLE public.transaction;
       public         heap    postgres    false            �            1259    16411    transaction_from_account_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transaction_from_account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.transaction_from_account_id_seq;
       public          postgres    false    208            0           0    0    transaction_from_account_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.transaction_from_account_id_seq OWNED BY public.transaction.from_account_id;
          public          postgres    false    206            �            1259    16413    transaction_to_account_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transaction_to_account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.transaction_to_account_id_seq;
       public          postgres    false    208            1           0    0    transaction_to_account_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.transaction_to_account_id_seq OWNED BY public.transaction.to_account_id;
          public          postgres    false    207            �            1259    16409    transaction_transaction_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transaction_transaction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.transaction_transaction_id_seq;
       public          postgres    false    208            2           0    0    transaction_transaction_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.transaction_transaction_id_seq OWNED BY public.transaction.transaction_id;
          public          postgres    false    205            �
           2604    16405    account account_id    DEFAULT     x   ALTER TABLE ONLY public.account ALTER COLUMN account_id SET DEFAULT nextval('public.account_account_id_seq'::regclass);
 A   ALTER TABLE public.account ALTER COLUMN account_id DROP DEFAULT;
       public          postgres    false    203    204    204            �
           2604    16429    loan loan_id    DEFAULT     l   ALTER TABLE ONLY public.loan ALTER COLUMN loan_id SET DEFAULT nextval('public.loan_loan_id_seq'::regclass);
 ;   ALTER TABLE public.loan ALTER COLUMN loan_id DROP DEFAULT;
       public          postgres    false    210    209    210            �
           2604    16418    transaction transaction_id    DEFAULT     �   ALTER TABLE ONLY public.transaction ALTER COLUMN transaction_id SET DEFAULT nextval('public.transaction_transaction_id_seq'::regclass);
 I   ALTER TABLE public.transaction ALTER COLUMN transaction_id DROP DEFAULT;
       public          postgres    false    208    205    208            �
           2604    16419    transaction from_account_id    DEFAULT     �   ALTER TABLE ONLY public.transaction ALTER COLUMN from_account_id SET DEFAULT nextval('public.transaction_from_account_id_seq'::regclass);
 J   ALTER TABLE public.transaction ALTER COLUMN from_account_id DROP DEFAULT;
       public          postgres    false    206    208    208            �
           2604    16420    transaction to_account_id    DEFAULT     �   ALTER TABLE ONLY public.transaction ALTER COLUMN to_account_id SET DEFAULT nextval('public.transaction_to_account_id_seq'::regclass);
 H   ALTER TABLE public.transaction ALTER COLUMN to_account_id DROP DEFAULT;
       public          postgres    false    207    208    208                       0    16402    account 
   TABLE DATA           m   COPY public.account (account_id, customer_id, account_balance, currency, created_at, deleted_at) FROM stdin;
    public          postgres    false    204   �&       '          0    16430    branch 
   TABLE DATA           I   COPY public.branch (branch_id, branch_name, branch_location) FROM stdin;
    public          postgres    false    211   �&                 0    16394    customer 
   TABLE DATA           x   COPY public.customer (customer_id, first_name, last_name, mobile_no, city, dob, date_created, date_deleted) FROM stdin;
    public          postgres    false    202   �&       &          0    16426    loan 
   TABLE DATA           Z   COPY public.loan (loan_id, customer_id, branch_id, loan_ammount, date_issued) FROM stdin;
    public          postgres    false    210   �&       $          0    16415    transaction 
   TABLE DATA           �   COPY public.transaction (transaction_id, transaction_type, from_account_id, to_account_id, date_transacted, transaction_amount) FROM stdin;
    public          postgres    false    208   	'       3           0    0    account_account_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.account_account_id_seq', 1, false);
          public          postgres    false    203            4           0    0    loan_loan_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.loan_loan_id_seq', 1, false);
          public          postgres    false    209            5           0    0    transaction_from_account_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.transaction_from_account_id_seq', 1, false);
          public          postgres    false    206            6           0    0    transaction_to_account_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.transaction_to_account_id_seq', 1, false);
          public          postgres    false    207            7           0    0    transaction_transaction_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.transaction_transaction_id_seq', 1, false);
          public          postgres    false    205                   x������ � �      '      x������ � �            x������ � �      &      x������ � �      $      x������ � �     