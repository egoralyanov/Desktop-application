PGDMP  #                    |            alyanov1    16.2    16.2 D    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    33043    alyanov1    DATABASE     s   CREATE DATABASE alyanov1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE alyanov1;
                postgres    false            �           0    0    DATABASE alyanov1    ACL     )   GRANT ALL ON DATABASE alyanov1 TO admin;
                   postgres    false    3459            �            1259    33044    client    TABLE     p   CREATE TABLE public.client (
    client_id integer NOT NULL,
    client_name character varying(100) NOT NULL
);
    DROP TABLE public.client;
       public         heap    postgres    false            �           0    0    TABLE client    ACL     �   GRANT SELECT,INSERT ON TABLE public.client TO client;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.client TO manager;
GRANT SELECT,UPDATE ON TABLE public.client TO employee;
          public          postgres    false    215            �            1259    33047    client_client_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.client_client_id_seq;
       public          postgres    false    215            �           0    0    client_client_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.client_client_id_seq OWNED BY public.client.client_id;
          public          postgres    false    216            �           0    0    SEQUENCE client_client_id_seq    ACL     G   GRANT SELECT,USAGE ON SEQUENCE public.client_client_id_seq TO manager;
          public          postgres    false    216            �            1259    33048    deal    TABLE     �   CREATE TABLE public.deal (
    deal_id integer NOT NULL,
    deal_date date NOT NULL,
    deal_price numeric NOT NULL,
    client_id integer,
    employee_id integer,
    product_id integer,
    warehouse_id integer,
    supplier_id integer
);
    DROP TABLE public.deal;
       public         heap    postgres    false            �           0    0 
   TABLE deal    ACL     �   GRANT SELECT,INSERT ON TABLE public.deal TO client;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.deal TO manager;
GRANT SELECT,UPDATE ON TABLE public.deal TO employee;
          public          postgres    false    217            �            1259    33053    deal_deal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.deal_deal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.deal_deal_id_seq;
       public          postgres    false    217            �           0    0    deal_deal_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.deal_deal_id_seq OWNED BY public.deal.deal_id;
          public          postgres    false    218            �           0    0    SEQUENCE deal_deal_id_seq    ACL     C   GRANT SELECT,USAGE ON SEQUENCE public.deal_deal_id_seq TO manager;
          public          postgres    false    218            �            1259    33054    employee    TABLE     �   CREATE TABLE public.employee (
    employee_id integer NOT NULL,
    employee_name character varying(100) NOT NULL,
    employee_position character varying(100) NOT NULL
);
    DROP TABLE public.employee;
       public         heap    postgres    false            �           0    0    TABLE employee    ACL     �   GRANT SELECT ON TABLE public.employee TO client;
GRANT SELECT,UPDATE ON TABLE public.employee TO employee;
GRANT SELECT ON TABLE public.employee TO manager;
          public          postgres    false    219            �            1259    33057    employee_employee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.employee_employee_id_seq;
       public          postgres    false    219            �           0    0    employee_employee_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.employee_employee_id_seq OWNED BY public.employee.employee_id;
          public          postgres    false    220            �           0    0 !   SEQUENCE employee_employee_id_seq    ACL     K   GRANT SELECT,USAGE ON SEQUENCE public.employee_employee_id_seq TO manager;
          public          postgres    false    220            �            1259    33058    product    TABLE     �   CREATE TABLE public.product (
    product_id integer NOT NULL,
    product_name character varying(100) NOT NULL,
    product_calories integer NOT NULL,
    product_weight numeric NOT NULL,
    supplier_id integer,
    warehouse_id integer
);
    DROP TABLE public.product;
       public         heap    postgres    false            �           0    0    TABLE product    ACL     �   GRANT SELECT ON TABLE public.product TO client;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.product TO manager;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.product TO employee;
          public          postgres    false    221            �            1259    33063    product_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.product_product_id_seq;
       public          postgres    false    221            �           0    0    product_product_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product.product_id;
          public          postgres    false    222            �           0    0    SEQUENCE product_product_id_seq    ACL     �   GRANT SELECT,USAGE ON SEQUENCE public.product_product_id_seq TO manager;
GRANT SELECT,USAGE ON SEQUENCE public.product_product_id_seq TO employee;
          public          postgres    false    222            �            1259    33064    supplier    TABLE     �   CREATE TABLE public.supplier (
    supplier_id integer NOT NULL,
    supplier_inn character varying(20) NOT NULL,
    supplier_legal_entity character varying(100) NOT NULL,
    supplier_address character varying(200) NOT NULL
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            �           0    0    TABLE supplier    ACL     �   GRANT SELECT ON TABLE public.supplier TO client;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.supplier TO manager;
GRANT SELECT,UPDATE ON TABLE public.supplier TO employee;
          public          postgres    false    223            �            1259    33067    supplier_supplier_id_seq    SEQUENCE     �   CREATE SEQUENCE public.supplier_supplier_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.supplier_supplier_id_seq;
       public          postgres    false    223            �           0    0    supplier_supplier_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.supplier_supplier_id_seq OWNED BY public.supplier.supplier_id;
          public          postgres    false    224            �           0    0 !   SEQUENCE supplier_supplier_id_seq    ACL     K   GRANT SELECT,USAGE ON SEQUENCE public.supplier_supplier_id_seq TO manager;
          public          postgres    false    224            �            1259    33068 	   warehouse    TABLE     �   CREATE TABLE public.warehouse (
    warehouse_id integer NOT NULL,
    warehouse_name character varying(100) NOT NULL,
    warehouse_address character varying(200) NOT NULL,
    warehouse_capacity numeric NOT NULL
);
    DROP TABLE public.warehouse;
       public         heap    postgres    false            �           0    0    TABLE warehouse    ACL     �   GRANT SELECT ON TABLE public.warehouse TO client;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.warehouse TO manager;
GRANT SELECT,UPDATE ON TABLE public.warehouse TO employee;
          public          postgres    false    225            �            1259    33073    warehouse_warehouse_id_seq    SEQUENCE     �   CREATE SEQUENCE public.warehouse_warehouse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.warehouse_warehouse_id_seq;
       public          postgres    false    225            �           0    0    warehouse_warehouse_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.warehouse_warehouse_id_seq OWNED BY public.warehouse.warehouse_id;
          public          postgres    false    226            �           0    0 #   SEQUENCE warehouse_warehouse_id_seq    ACL     M   GRANT SELECT,USAGE ON SEQUENCE public.warehouse_warehouse_id_seq TO manager;
          public          postgres    false    226            �           2604    33074    client client_id    DEFAULT     t   ALTER TABLE ONLY public.client ALTER COLUMN client_id SET DEFAULT nextval('public.client_client_id_seq'::regclass);
 ?   ALTER TABLE public.client ALTER COLUMN client_id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    33075    deal deal_id    DEFAULT     l   ALTER TABLE ONLY public.deal ALTER COLUMN deal_id SET DEFAULT nextval('public.deal_deal_id_seq'::regclass);
 ;   ALTER TABLE public.deal ALTER COLUMN deal_id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    33076    employee employee_id    DEFAULT     |   ALTER TABLE ONLY public.employee ALTER COLUMN employee_id SET DEFAULT nextval('public.employee_employee_id_seq'::regclass);
 C   ALTER TABLE public.employee ALTER COLUMN employee_id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    33077    product product_id    DEFAULT     x   ALTER TABLE ONLY public.product ALTER COLUMN product_id SET DEFAULT nextval('public.product_product_id_seq'::regclass);
 A   ALTER TABLE public.product ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    222    221            �           2604    33078    supplier supplier_id    DEFAULT     |   ALTER TABLE ONLY public.supplier ALTER COLUMN supplier_id SET DEFAULT nextval('public.supplier_supplier_id_seq'::regclass);
 C   ALTER TABLE public.supplier ALTER COLUMN supplier_id DROP DEFAULT;
       public          postgres    false    224    223            �           2604    33079    warehouse warehouse_id    DEFAULT     �   ALTER TABLE ONLY public.warehouse ALTER COLUMN warehouse_id SET DEFAULT nextval('public.warehouse_warehouse_id_seq'::regclass);
 E   ALTER TABLE public.warehouse ALTER COLUMN warehouse_id DROP DEFAULT;
       public          postgres    false    226    225            r          0    33044    client 
   TABLE DATA           8   COPY public.client (client_id, client_name) FROM stdin;
    public          postgres    false    215   NN       t          0    33048    deal 
   TABLE DATA           }   COPY public.deal (deal_id, deal_date, deal_price, client_id, employee_id, product_id, warehouse_id, supplier_id) FROM stdin;
    public          postgres    false    217   �N       v          0    33054    employee 
   TABLE DATA           Q   COPY public.employee (employee_id, employee_name, employee_position) FROM stdin;
    public          postgres    false    219   NO       x          0    33058    product 
   TABLE DATA           x   COPY public.product (product_id, product_name, product_calories, product_weight, supplier_id, warehouse_id) FROM stdin;
    public          postgres    false    221    P       z          0    33064    supplier 
   TABLE DATA           f   COPY public.supplier (supplier_id, supplier_inn, supplier_legal_entity, supplier_address) FROM stdin;
    public          postgres    false    223   �P       |          0    33068 	   warehouse 
   TABLE DATA           h   COPY public.warehouse (warehouse_id, warehouse_name, warehouse_address, warehouse_capacity) FROM stdin;
    public          postgres    false    225   R       �           0    0    client_client_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.client_client_id_seq', 8, true);
          public          postgres    false    216            �           0    0    deal_deal_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.deal_deal_id_seq', 8, true);
          public          postgres    false    218            �           0    0    employee_employee_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.employee_employee_id_seq', 6, true);
          public          postgres    false    220            �           0    0    product_product_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.product_product_id_seq', 11, true);
          public          postgres    false    222            �           0    0    supplier_supplier_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.supplier_supplier_id_seq', 12, true);
          public          postgres    false    224            �           0    0    warehouse_warehouse_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.warehouse_warehouse_id_seq', 6, true);
          public          postgres    false    226            �           2606    33081    client client_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (client_id);
 <   ALTER TABLE ONLY public.client DROP CONSTRAINT client_pkey;
       public            postgres    false    215            �           2606    33083    deal deal_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.deal
    ADD CONSTRAINT deal_pkey PRIMARY KEY (deal_id);
 8   ALTER TABLE ONLY public.deal DROP CONSTRAINT deal_pkey;
       public            postgres    false    217            �           2606    33085    employee employee_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employee_id);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_pkey;
       public            postgres    false    219            �           2606    33087    product product_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    221            �           2606    33089    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (supplier_id);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    223            �           2606    33091 "   supplier supplier_supplier_inn_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_supplier_inn_key UNIQUE (supplier_inn);
 L   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_supplier_inn_key;
       public            postgres    false    223            �           2606    33093    warehouse warehouse_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.warehouse
    ADD CONSTRAINT warehouse_pkey PRIMARY KEY (warehouse_id);
 B   ALTER TABLE ONLY public.warehouse DROP CONSTRAINT warehouse_pkey;
       public            postgres    false    225            �           2606    33094    deal deal_client_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.deal
    ADD CONSTRAINT deal_client_id_fkey FOREIGN KEY (client_id) REFERENCES public.client(client_id);
 B   ALTER TABLE ONLY public.deal DROP CONSTRAINT deal_client_id_fkey;
       public          postgres    false    217    3279    215            �           2606    33099    deal deal_employee_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.deal
    ADD CONSTRAINT deal_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employee(employee_id);
 D   ALTER TABLE ONLY public.deal DROP CONSTRAINT deal_employee_id_fkey;
       public          postgres    false    217    3283    219            �           2606    33104    deal deal_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.deal
    ADD CONSTRAINT deal_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(product_id);
 C   ALTER TABLE ONLY public.deal DROP CONSTRAINT deal_product_id_fkey;
       public          postgres    false    217    3285    221            �           2606    33109    deal deal_supplier_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.deal
    ADD CONSTRAINT deal_supplier_id_fkey FOREIGN KEY (supplier_id) REFERENCES public.supplier(supplier_id);
 D   ALTER TABLE ONLY public.deal DROP CONSTRAINT deal_supplier_id_fkey;
       public          postgres    false    223    217    3287            �           2606    33114    deal deal_warehouse_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.deal
    ADD CONSTRAINT deal_warehouse_id_fkey FOREIGN KEY (warehouse_id) REFERENCES public.warehouse(warehouse_id);
 E   ALTER TABLE ONLY public.deal DROP CONSTRAINT deal_warehouse_id_fkey;
       public          postgres    false    3291    217    225            �           2606    33119     product product_supplier_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_supplier_id_fkey FOREIGN KEY (supplier_id) REFERENCES public.supplier(supplier_id);
 J   ALTER TABLE ONLY public.product DROP CONSTRAINT product_supplier_id_fkey;
       public          postgres    false    3287    223    221            �           2606    33124 !   product product_warehouse_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_warehouse_id_fkey FOREIGN KEY (warehouse_id) REFERENCES public.warehouse(warehouse_id);
 K   ALTER TABLE ONLY public.product DROP CONSTRAINT product_warehouse_id_fkey;
       public          postgres    false    225    221    3291                       826    33131    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT SELECT,INSERT,DELETE,UPDATE ON TABLES TO employee;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT SELECT,INSERT,DELETE,UPDATE ON TABLES TO manager;
          public          postgres    false            r   {   x�]��	�PD����
<�������<��I��mG��o3o���p��Eo�ra���Yx3�B�2�t�U8�	3�����lL g��2���Q̫�{��׎��|/�y�]���&����s)      t   e   x�M���0C��]�L�]���������:¢��H���^��eq#M�Q��b�؅Tᔞ�f���*�������!�ܞ��7����
���|�i~�m�      v   �   x����0E�v��K5���@�\B(��������a4�����Ĕ9��i��D>�U�4)t;3��+*:�M����
�|	��'i���ґ(0�|�{�~��юB}�Q;�������؅�,�ū.�ez��9|6vt�j7�J��]N��f6�+      x   �   x�mOAN�0<�_� �IJ��P��@�8s�	ji�&�f���8�<�;3�-���=2q)�ny�I(qD��{���Z�I���\��w,�i�"�7r��N�}a]���p�Ј3���9[~��̔�W�Y�C���E�56��O0�^YV�Ķ��k����h/9���
��}i��s�Ev_�A����g�{˺���_��6}�Q�rwι��J      z   
  x�]�MN�0���)��QU'i��a� ĢH�A�p�#LK��܈�4(-�l�=�y�D���Il+l�2�T�C�]s�D
����0�1PI����h�Shi�L��ǀΠ��02��Ǘ���hXp��ʲe�g��S��:�6�T��g8A��.sL����	"��nE+�	qG�X������|��a�Y�pz�7q��:�s��@o9��ӊnF�<��������Oܽ�	g���aq)*Y���Ʉ{n~5�Z�����      |   �   x�mOK
�P\睢���#�.������F(�X��&7rR�Մ�d&�v���Nu�Wt�&��>�.z��M�=)^֚'�h���Sc��Z���*-X�����`8��_y��b'p�o��
-�.%��-Es�$�;1[��M�p���-_kzr��9��T��b�38��K�'�MB�� J�.     