PGDMP                      	    {           postgres    15.4    15.4 R    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    5    postgres    DATABASE        CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Ukrainian_Ukraine.1252';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3515                        2615    16397    pgagent    SCHEMA        CREATE SCHEMA pgagent;
    DROP SCHEMA pgagent;
                postgres    false            �           0    0    SCHEMA pgagent    COMMENT     6   COMMENT ON SCHEMA pgagent IS 'pgAgent system tables';
                   postgres    false    8                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            �           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2                        3079    16398    pgagent 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS pgagent WITH SCHEMA pgagent;
    DROP EXTENSION pgagent;
                   false    8            �           0    0    EXTENSION pgagent    COMMENT     >   COMMENT ON EXTENSION pgagent IS 'A PostgreSQL job scheduler';
                        false    3            �            1259    16872    BloodBag    TABLE     �   CREATE TABLE public."BloodBag" (
    "BagID" integer NOT NULL,
    "BloodType" text NOT NULL,
    "StorageTemperature" smallint NOT NULL
);
    DROP TABLE public."BloodBag";
       public         heap    postgres    false            �            1259    16904    BloodBag-BloodDonation    TABLE     |   CREATE TABLE public."BloodBag-BloodDonation" (
    "BloodDonationID" integer NOT NULL,
    "BloodBagID" integer NOT NULL
);
 ,   DROP TABLE public."BloodBag-BloodDonation";
       public         heap    postgres    false            �            1259    16903 %   BloodBag-BloodDonation_BloodBagID_seq    SEQUENCE     �   CREATE SEQUENCE public."BloodBag-BloodDonation_BloodBagID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."BloodBag-BloodDonation_BloodBagID_seq";
       public          postgres    false    249            �           0    0 %   BloodBag-BloodDonation_BloodBagID_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."BloodBag-BloodDonation_BloodBagID_seq" OWNED BY public."BloodBag-BloodDonation"."BloodBagID";
          public          postgres    false    248            �            1259    16902 *   BloodBag-BloodDonation_BloodDonationID_seq    SEQUENCE     �   CREATE SEQUENCE public."BloodBag-BloodDonation_BloodDonationID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."BloodBag-BloodDonation_BloodDonationID_seq";
       public          postgres    false    249            �           0    0 *   BloodBag-BloodDonation_BloodDonationID_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public."BloodBag-BloodDonation_BloodDonationID_seq" OWNED BY public."BloodBag-BloodDonation"."BloodDonationID";
          public          postgres    false    247            �            1259    16871    BloodBag_BagID_seq    SEQUENCE     �   CREATE SEQUENCE public."BloodBag_BagID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."BloodBag_BagID_seq";
       public          postgres    false    240            �           0    0    BloodBag_BagID_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."BloodBag_BagID_seq" OWNED BY public."BloodBag"."BagID";
          public          postgres    false    239            �            1259    16861 	   BloodBank    TABLE     �   CREATE TABLE public."BloodBank" (
    "BloodBankID" integer NOT NULL,
    "Name" text NOT NULL,
    "Location" text NOT NULL,
    "ContactNumber" text NOT NULL,
    "TotalDonations" bigint DEFAULT 0 NOT NULL,
    "BloodDonationID" integer
);
    DROP TABLE public."BloodBank";
       public         heap    postgres    false            �            1259    16859    BloodBank_BloodBankID_seq    SEQUENCE     �   CREATE SEQUENCE public."BloodBank_BloodBankID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."BloodBank_BloodBankID_seq";
       public          postgres    false    238            �           0    0    BloodBank_BloodBankID_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."BloodBank_BloodBankID_seq" OWNED BY public."BloodBank"."BloodBankID";
          public          postgres    false    236            �            1259    16860    BloodBank_BloodDonationID_seq    SEQUENCE     �   CREATE SEQUENCE public."BloodBank_BloodDonationID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."BloodBank_BloodDonationID_seq";
       public          postgres    false    238            �           0    0    BloodBank_BloodDonationID_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."BloodBank_BloodDonationID_seq" OWNED BY public."BloodBank"."BloodDonationID";
          public          postgres    false    237            �            1259    16882    BloodDonation    TABLE     �   CREATE TABLE public."BloodDonation" (
    "DonationID" integer NOT NULL,
    "DonationDate" date NOT NULL,
    "DonationTime" timestamp without time zone NOT NULL,
    "DonorID" integer NOT NULL,
    "DonationStatus" text NOT NULL
);
 #   DROP TABLE public."BloodDonation";
       public         heap    postgres    false            �            1259    16880    BloodDonation_DonationID_seq    SEQUENCE     �   CREATE SEQUENCE public."BloodDonation_DonationID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."BloodDonation_DonationID_seq";
       public          postgres    false    243            �           0    0    BloodDonation_DonationID_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."BloodDonation_DonationID_seq" OWNED BY public."BloodDonation"."DonationID";
          public          postgres    false    241            �            1259    16881    BloodDonation_DonorID_seq    SEQUENCE     �   CREATE SEQUENCE public."BloodDonation_DonorID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."BloodDonation_DonorID_seq";
       public          postgres    false    243            �           0    0    BloodDonation_DonorID_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."BloodDonation_DonorID_seq" OWNED BY public."BloodDonation"."DonorID";
          public          postgres    false    242            �            1259    16851    Donor    TABLE     �   CREATE TABLE public."Donor" (
    "DonorID" integer NOT NULL,
    "FirstName" text NOT NULL,
    "LastName" text NOT NULL,
    "DateOfBirth" date NOT NULL,
    "ContactNumber" text NOT NULL,
    "BloodType" text NOT NULL
);
    DROP TABLE public."Donor";
       public         heap    postgres    false            �            1259    16850    Donor_DonorID_seq    SEQUENCE     �   CREATE SEQUENCE public."Donor_DonorID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Donor_DonorID_seq";
       public          postgres    false    235            �           0    0    Donor_DonorID_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Donor_DonorID_seq" OWNED BY public."Donor"."DonorID";
          public          postgres    false    234            �            1259    16893 	   Recipient    TABLE       CREATE TABLE public."Recipient" (
    "RecipientID" integer NOT NULL,
    "FirstName" text NOT NULL,
    "LastName" text NOT NULL,
    "DateOfBirth" date NOT NULL,
    "ContactNumber" text NOT NULL,
    "BloodTypeNeeded" text NOT NULL,
    "BloodBagID" integer NOT NULL
);
    DROP TABLE public."Recipient";
       public         heap    postgres    false            �            1259    16892    Recipient_BloodBagID_seq    SEQUENCE     �   CREATE SEQUENCE public."Recipient_BloodBagID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."Recipient_BloodBagID_seq";
       public          postgres    false    246            �           0    0    Recipient_BloodBagID_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."Recipient_BloodBagID_seq" OWNED BY public."Recipient"."BloodBagID";
          public          postgres    false    245            �            1259    16891    Recipient_RecipientID_seq    SEQUENCE     �   CREATE SEQUENCE public."Recipient_RecipientID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Recipient_RecipientID_seq";
       public          postgres    false    246            �           0    0    Recipient_RecipientID_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."Recipient_RecipientID_seq" OWNED BY public."Recipient"."RecipientID";
          public          postgres    false    244            �           2604    16875    BloodBag BagID    DEFAULT     v   ALTER TABLE ONLY public."BloodBag" ALTER COLUMN "BagID" SET DEFAULT nextval('public."BloodBag_BagID_seq"'::regclass);
 A   ALTER TABLE public."BloodBag" ALTER COLUMN "BagID" DROP DEFAULT;
       public          postgres    false    240    239    240            �           2604    16907 &   BloodBag-BloodDonation BloodDonationID    DEFAULT     �   ALTER TABLE ONLY public."BloodBag-BloodDonation" ALTER COLUMN "BloodDonationID" SET DEFAULT nextval('public."BloodBag-BloodDonation_BloodDonationID_seq"'::regclass);
 Y   ALTER TABLE public."BloodBag-BloodDonation" ALTER COLUMN "BloodDonationID" DROP DEFAULT;
       public          postgres    false    249    247    249            �           2604    16908 !   BloodBag-BloodDonation BloodBagID    DEFAULT     �   ALTER TABLE ONLY public."BloodBag-BloodDonation" ALTER COLUMN "BloodBagID" SET DEFAULT nextval('public."BloodBag-BloodDonation_BloodBagID_seq"'::regclass);
 T   ALTER TABLE public."BloodBag-BloodDonation" ALTER COLUMN "BloodBagID" DROP DEFAULT;
       public          postgres    false    249    248    249            �           2604    16864    BloodBank BloodBankID    DEFAULT     �   ALTER TABLE ONLY public."BloodBank" ALTER COLUMN "BloodBankID" SET DEFAULT nextval('public."BloodBank_BloodBankID_seq"'::regclass);
 H   ALTER TABLE public."BloodBank" ALTER COLUMN "BloodBankID" DROP DEFAULT;
       public          postgres    false    236    238    238            �           2604    16866    BloodBank BloodDonationID    DEFAULT     �   ALTER TABLE ONLY public."BloodBank" ALTER COLUMN "BloodDonationID" SET DEFAULT nextval('public."BloodBank_BloodDonationID_seq"'::regclass);
 L   ALTER TABLE public."BloodBank" ALTER COLUMN "BloodDonationID" DROP DEFAULT;
       public          postgres    false    238    237    238            �           2604    16885    BloodDonation DonationID    DEFAULT     �   ALTER TABLE ONLY public."BloodDonation" ALTER COLUMN "DonationID" SET DEFAULT nextval('public."BloodDonation_DonationID_seq"'::regclass);
 K   ALTER TABLE public."BloodDonation" ALTER COLUMN "DonationID" DROP DEFAULT;
       public          postgres    false    243    241    243            �           2604    16886    BloodDonation DonorID    DEFAULT     �   ALTER TABLE ONLY public."BloodDonation" ALTER COLUMN "DonorID" SET DEFAULT nextval('public."BloodDonation_DonorID_seq"'::regclass);
 H   ALTER TABLE public."BloodDonation" ALTER COLUMN "DonorID" DROP DEFAULT;
       public          postgres    false    243    242    243            �           2604    16854    Donor DonorID    DEFAULT     t   ALTER TABLE ONLY public."Donor" ALTER COLUMN "DonorID" SET DEFAULT nextval('public."Donor_DonorID_seq"'::regclass);
 @   ALTER TABLE public."Donor" ALTER COLUMN "DonorID" DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    16896    Recipient RecipientID    DEFAULT     �   ALTER TABLE ONLY public."Recipient" ALTER COLUMN "RecipientID" SET DEFAULT nextval('public."Recipient_RecipientID_seq"'::regclass);
 H   ALTER TABLE public."Recipient" ALTER COLUMN "RecipientID" DROP DEFAULT;
       public          postgres    false    246    244    246            �           2604    16897    Recipient BloodBagID    DEFAULT     �   ALTER TABLE ONLY public."Recipient" ALTER COLUMN "BloodBagID" SET DEFAULT nextval('public."Recipient_BloodBagID_seq"'::regclass);
 G   ALTER TABLE public."Recipient" ALTER COLUMN "BloodBagID" DROP DEFAULT;
       public          postgres    false    245    246    246            �          0    16399    pga_jobagent 
   TABLE DATA           I   COPY pgagent.pga_jobagent (jagpid, jaglogintime, jagstation) FROM stdin;
    pgagent          postgres    false    219   ]_       �          0    16408    pga_jobclass 
   TABLE DATA           7   COPY pgagent.pga_jobclass (jclid, jclname) FROM stdin;
    pgagent          postgres    false    221   �_       �          0    16418    pga_job 
   TABLE DATA           �   COPY pgagent.pga_job (jobid, jobjclid, jobname, jobdesc, jobhostagent, jobenabled, jobcreated, jobchanged, jobagentid, jobnextrun, joblastrun) FROM stdin;
    pgagent          postgres    false    223   �_       �          0    16466    pga_schedule 
   TABLE DATA           �   COPY pgagent.pga_schedule (jscid, jscjobid, jscname, jscdesc, jscenabled, jscstart, jscend, jscminutes, jschours, jscweekdays, jscmonthdays, jscmonths) FROM stdin;
    pgagent          postgres    false    227   �_       �          0    16494    pga_exception 
   TABLE DATA           J   COPY pgagent.pga_exception (jexid, jexscid, jexdate, jextime) FROM stdin;
    pgagent          postgres    false    229   �_       �          0    16508 
   pga_joblog 
   TABLE DATA           X   COPY pgagent.pga_joblog (jlgid, jlgjobid, jlgstatus, jlgstart, jlgduration) FROM stdin;
    pgagent          postgres    false    231   `       �          0    16442    pga_jobstep 
   TABLE DATA           �   COPY pgagent.pga_jobstep (jstid, jstjobid, jstname, jstdesc, jstenabled, jstkind, jstcode, jstconnstr, jstdbname, jstonerror, jscnextrun) FROM stdin;
    pgagent          postgres    false    225   2`       �          0    16524    pga_jobsteplog 
   TABLE DATA           |   COPY pgagent.pga_jobsteplog (jslid, jsljlgid, jsljstid, jslstatus, jslresult, jslstart, jslduration, jsloutput) FROM stdin;
    pgagent          postgres    false    233   O`       �          0    16872    BloodBag 
   TABLE DATA           P   COPY public."BloodBag" ("BagID", "BloodType", "StorageTemperature") FROM stdin;
    public          postgres    false    240   l`       �          0    16904    BloodBag-BloodDonation 
   TABLE DATA           S   COPY public."BloodBag-BloodDonation" ("BloodDonationID", "BloodBagID") FROM stdin;
    public          postgres    false    249   �`       �          0    16861 	   BloodBank 
   TABLE DATA           ~   COPY public."BloodBank" ("BloodBankID", "Name", "Location", "ContactNumber", "TotalDonations", "BloodDonationID") FROM stdin;
    public          postgres    false    238   �`       �          0    16882    BloodDonation 
   TABLE DATA           t   COPY public."BloodDonation" ("DonationID", "DonationDate", "DonationTime", "DonorID", "DonationStatus") FROM stdin;
    public          postgres    false    243   [a       �          0    16851    Donor 
   TABLE DATA           r   COPY public."Donor" ("DonorID", "FirstName", "LastName", "DateOfBirth", "ContactNumber", "BloodType") FROM stdin;
    public          postgres    false    235   �a       �          0    16893 	   Recipient 
   TABLE DATA           �   COPY public."Recipient" ("RecipientID", "FirstName", "LastName", "DateOfBirth", "ContactNumber", "BloodTypeNeeded", "BloodBagID") FROM stdin;
    public          postgres    false    246   yb       �           0    0 %   BloodBag-BloodDonation_BloodBagID_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."BloodBag-BloodDonation_BloodBagID_seq"', 4, true);
          public          postgres    false    248            �           0    0 *   BloodBag-BloodDonation_BloodDonationID_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public."BloodBag-BloodDonation_BloodDonationID_seq"', 1, true);
          public          postgres    false    247            �           0    0    BloodBag_BagID_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."BloodBag_BagID_seq"', 4, true);
          public          postgres    false    239            �           0    0    BloodBank_BloodBankID_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."BloodBank_BloodBankID_seq"', 10, true);
          public          postgres    false    236            �           0    0    BloodBank_BloodDonationID_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."BloodBank_BloodDonationID_seq"', 2, true);
          public          postgres    false    237            �           0    0    BloodDonation_DonationID_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."BloodDonation_DonationID_seq"', 9, true);
          public          postgres    false    241            �           0    0    BloodDonation_DonorID_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."BloodDonation_DonorID_seq"', 1, false);
          public          postgres    false    242            �           0    0    Donor_DonorID_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Donor_DonorID_seq"', 4, true);
          public          postgres    false    234            �           0    0    Recipient_BloodBagID_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Recipient_BloodBagID_seq"', 3, true);
          public          postgres    false    245            �           0    0    Recipient_RecipientID_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Recipient_RecipientID_seq"', 3, true);
          public          postgres    false    244                       2606    16879    BloodBag BagID 
   CONSTRAINT     U   ALTER TABLE ONLY public."BloodBag"
    ADD CONSTRAINT "BagID" PRIMARY KEY ("BagID");
 <   ALTER TABLE ONLY public."BloodBag" DROP CONSTRAINT "BagID";
       public            postgres    false    240                       2606    16910 2   BloodBag-BloodDonation BloodBag-BloodDonation_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."BloodBag-BloodDonation"
    ADD CONSTRAINT "BloodBag-BloodDonation_pkey" PRIMARY KEY ("BloodDonationID", "BloodBagID");
 `   ALTER TABLE ONLY public."BloodBag-BloodDonation" DROP CONSTRAINT "BloodBag-BloodDonation_pkey";
       public            postgres    false    249    249            
           2606    16870    BloodBank BloodBankID 
   CONSTRAINT     b   ALTER TABLE ONLY public."BloodBank"
    ADD CONSTRAINT "BloodBankID" PRIMARY KEY ("BloodBankID");
 C   ALTER TABLE ONLY public."BloodBank" DROP CONSTRAINT "BloodBankID";
       public            postgres    false    238                       2606    16890    BloodDonation DonationID 
   CONSTRAINT     d   ALTER TABLE ONLY public."BloodDonation"
    ADD CONSTRAINT "DonationID" PRIMARY KEY ("DonationID");
 F   ALTER TABLE ONLY public."BloodDonation" DROP CONSTRAINT "DonationID";
       public            postgres    false    243                       2606    16858    Donor DonorID 
   CONSTRAINT     V   ALTER TABLE ONLY public."Donor"
    ADD CONSTRAINT "DonorID" PRIMARY KEY ("DonorID");
 ;   ALTER TABLE ONLY public."Donor" DROP CONSTRAINT "DonorID";
       public            postgres    false    235                       2606    16901    Recipient RecipientID 
   CONSTRAINT     b   ALTER TABLE ONLY public."Recipient"
    ADD CONSTRAINT "RecipientID" PRIMARY KEY ("RecipientID");
 C   ALTER TABLE ONLY public."Recipient" DROP CONSTRAINT "RecipientID";
       public            postgres    false    246                       2606    16921    Recipient BloodBagID    FK CONSTRAINT     �   ALTER TABLE ONLY public."Recipient"
    ADD CONSTRAINT "BloodBagID" FOREIGN KEY ("BloodBagID") REFERENCES public."BloodBag"("BagID") NOT VALID;
 B   ALTER TABLE ONLY public."Recipient" DROP CONSTRAINT "BloodBagID";
       public          postgres    false    3340    246    240                       2606    16926 !   BloodBag-BloodDonation BloodBagID    FK CONSTRAINT     �   ALTER TABLE ONLY public."BloodBag-BloodDonation"
    ADD CONSTRAINT "BloodBagID" FOREIGN KEY ("BloodBagID") REFERENCES public."BloodBag"("BagID") NOT VALID;
 O   ALTER TABLE ONLY public."BloodBag-BloodDonation" DROP CONSTRAINT "BloodBagID";
       public          postgres    false    240    249    3340                       2606    16911    BloodBank BloodDonationID    FK CONSTRAINT     �   ALTER TABLE ONLY public."BloodBank"
    ADD CONSTRAINT "BloodDonationID" FOREIGN KEY ("BloodDonationID") REFERENCES public."BloodDonation"("DonationID") NOT VALID;
 G   ALTER TABLE ONLY public."BloodBank" DROP CONSTRAINT "BloodDonationID";
       public          postgres    false    238    3342    243                       2606    16931 &   BloodBag-BloodDonation BloodDonationID    FK CONSTRAINT     �   ALTER TABLE ONLY public."BloodBag-BloodDonation"
    ADD CONSTRAINT "BloodDonationID" FOREIGN KEY ("BloodDonationID") REFERENCES public."BloodDonation"("DonationID") NOT VALID;
 T   ALTER TABLE ONLY public."BloodBag-BloodDonation" DROP CONSTRAINT "BloodDonationID";
       public          postgres    false    249    243    3342                       2606    16916    BloodDonation DonorID    FK CONSTRAINT     �   ALTER TABLE ONLY public."BloodDonation"
    ADD CONSTRAINT "DonorID" FOREIGN KEY ("DonorID") REFERENCES public."Donor"("DonorID") NOT VALID;
 C   ALTER TABLE ONLY public."BloodDonation" DROP CONSTRAINT "DonorID";
       public          postgres    false    3336    235    243            �   4   x�3�44�4202�54�50Q04�2��24�3114��60�,1.������ �)�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   *   x�3�tt��42�2����4��2�t��4��2�t�c���� p��      �      x�3�4�2�4�2�4�����       �   |   x�5�1�0@��>���q�:҅���bc	�Cj�4B���|�[��7���1_M饥6z�����%矒�N�8>v�ጶ�?���5t��C��KǄmg�,~�{^@z��<!��%#4      �   h   x�M�;� @��^ Sʧ��<���l�	��%��`1���D!Q�{���ճ7T�S8S7Ri���*�)��[�����ٱܛ�Ri�i_^+"�(*�      �   �   x�E��
�0���W$e7�	�h/
�P詗 R�b@m��o���\�\Һ������8y�5�F�$l�X�Z)m(�Y�G�����h�����S�drO��w�w0�F� :��b���J���<}Kk��`轠͚�����[�/7      �   }   x�5̱
1��z�*��f7������ ���������7�q/�]���c��fO,$�$�(j�B�N��p�����L����Ał�q�[����c�Z{!>��`�f�c���qr�}!Q     