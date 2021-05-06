PGDMP             
            y         	   knowledge    9.6.21    9.6.21 -    z           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            {           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            |           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            }           1262    24597 	   knowledge    DATABASE     �   CREATE DATABASE knowledge WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE knowledge;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            ~           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                       0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    24651    articles    TABLE     �   CREATE TABLE public.articles (
    article_id integer NOT NULL,
    article_url character varying(200) NOT NULL,
    person_id integer NOT NULL,
    article_scraped boolean NOT NULL
);
    DROP TABLE public.articles;
       public         postgres    false    3            �            1259    24649    articles_article_id_seq    SEQUENCE     �   CREATE SEQUENCE public.articles_article_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.articles_article_id_seq;
       public       postgres    false    192    3            �           0    0    articles_article_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.articles_article_id_seq OWNED BY public.articles.article_id;
            public       postgres    false    191            �            1259    24617    people    TABLE     g   CREATE TABLE public.people (
    person_id integer NOT NULL,
    person_name character varying(100)
);
    DROP TABLE public.people;
       public         postgres    false    3            �            1259    24613    people_person_id_seq    SEQUENCE     }   CREATE SEQUENCE public.people_person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.people_person_id_seq;
       public       postgres    false    3    188            �           0    0    people_person_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.people_person_id_seq OWNED BY public.people.person_id;
            public       postgres    false    187            �            1259    24603    tags    TABLE     _   CREATE TABLE public.tags (
    tag_id integer NOT NULL,
    tag_name character varying(100)
);
    DROP TABLE public.tags;
       public         postgres    false    3            �            1259    24601    tags_tag_id_seq    SEQUENCE     x   CREATE SEQUENCE public.tags_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tags_tag_id_seq;
       public       postgres    false    3    186            �           0    0    tags_tag_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tags_tag_id_seq OWNED BY public.tags.tag_id;
            public       postgres    false    185            �            1259    24626    tags_x_people    TABLE     �   CREATE TABLE public.tags_x_people (
    tag_x_person_id integer NOT NULL,
    tag_id integer NOT NULL,
    person_id integer NOT NULL
);
 !   DROP TABLE public.tags_x_people;
       public         postgres    false    3            �            1259    24624 !   tags_x_people_tag_x_person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tags_x_people_tag_x_person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.tags_x_people_tag_x_person_id_seq;
       public       postgres    false    3    190            �           0    0 !   tags_x_people_tag_x_person_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.tags_x_people_tag_x_person_id_seq OWNED BY public.tags_x_people.tag_x_person_id;
            public       postgres    false    189            �           2604    24654    articles article_id    DEFAULT     z   ALTER TABLE ONLY public.articles ALTER COLUMN article_id SET DEFAULT nextval('public.articles_article_id_seq'::regclass);
 B   ALTER TABLE public.articles ALTER COLUMN article_id DROP DEFAULT;
       public       postgres    false    191    192    192            �           2604    24620    people person_id    DEFAULT     t   ALTER TABLE ONLY public.people ALTER COLUMN person_id SET DEFAULT nextval('public.people_person_id_seq'::regclass);
 ?   ALTER TABLE public.people ALTER COLUMN person_id DROP DEFAULT;
       public       postgres    false    188    187    188            �           2604    24606    tags tag_id    DEFAULT     j   ALTER TABLE ONLY public.tags ALTER COLUMN tag_id SET DEFAULT nextval('public.tags_tag_id_seq'::regclass);
 :   ALTER TABLE public.tags ALTER COLUMN tag_id DROP DEFAULT;
       public       postgres    false    186    185    186            �           2604    24629    tags_x_people tag_x_person_id    DEFAULT     �   ALTER TABLE ONLY public.tags_x_people ALTER COLUMN tag_x_person_id SET DEFAULT nextval('public.tags_x_people_tag_x_person_id_seq'::regclass);
 L   ALTER TABLE public.tags_x_people ALTER COLUMN tag_x_person_id DROP DEFAULT;
       public       postgres    false    189    190    190            w          0    24651    articles 
   TABLE DATA               W   COPY public.articles (article_id, article_url, person_id, article_scraped) FROM stdin;
    public       postgres    false    192   C/       �           0    0    articles_article_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.articles_article_id_seq', 197, true);
            public       postgres    false    191            s          0    24617    people 
   TABLE DATA               8   COPY public.people (person_id, person_name) FROM stdin;
    public       postgres    false    188   �B       �           0    0    people_person_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.people_person_id_seq', 197, true);
            public       postgres    false    187            q          0    24603    tags 
   TABLE DATA               0   COPY public.tags (tag_id, tag_name) FROM stdin;
    public       postgres    false    186   I       �           0    0    tags_tag_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.tags_tag_id_seq', 1339, true);
            public       postgres    false    185            u          0    24626    tags_x_people 
   TABLE DATA               K   COPY public.tags_x_people (tag_x_person_id, tag_id, person_id) FROM stdin;
    public       postgres    false    190   �R       �           0    0 !   tags_x_people_tag_x_person_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.tags_x_people_tag_x_person_id_seq', 1339, true);
            public       postgres    false    189            �           2606    24656    articles articles_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (article_id);
 @   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_pkey;
       public         postgres    false    192    192            �           2606    24623    people people_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (person_id);
 <   ALTER TABLE ONLY public.people DROP CONSTRAINT people_pkey;
       public         postgres    false    188    188            �           2606    24608    tags tags_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (tag_id);
 8   ALTER TABLE ONLY public.tags DROP CONSTRAINT tags_pkey;
       public         postgres    false    186    186            �           2606    24631     tags_x_people tags_x_people_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.tags_x_people
    ADD CONSTRAINT tags_x_people_pkey PRIMARY KEY (tag_x_person_id);
 J   ALTER TABLE ONLY public.tags_x_people DROP CONSTRAINT tags_x_people_pkey;
       public         postgres    false    190    190            �           2606    24667    people uk_person_name 
   CONSTRAINT     W   ALTER TABLE ONLY public.people
    ADD CONSTRAINT uk_person_name UNIQUE (person_name);
 ?   ALTER TABLE ONLY public.people DROP CONSTRAINT uk_person_name;
       public         postgres    false    188    188            �           2606    24720    tags uk_tag_name 
   CONSTRAINT     O   ALTER TABLE ONLY public.tags
    ADD CONSTRAINT uk_tag_name UNIQUE (tag_name);
 :   ALTER TABLE ONLY public.tags DROP CONSTRAINT uk_tag_name;
       public         postgres    false    186    186            �           2606    24722    tags_x_people uk_tag_pergon 
   CONSTRAINT     c   ALTER TABLE ONLY public.tags_x_people
    ADD CONSTRAINT uk_tag_pergon UNIQUE (tag_id, person_id);
 E   ALTER TABLE ONLY public.tags_x_people DROP CONSTRAINT uk_tag_pergon;
       public         postgres    false    190    190    190            �           1259    24633    idx_person_id    INDEX     L   CREATE INDEX idx_person_id ON public.tags_x_people USING btree (person_id);
 !   DROP INDEX public.idx_person_id;
       public         postgres    false    190            �           1259    24662    idx_person_id_2    INDEX     I   CREATE INDEX idx_person_id_2 ON public.articles USING btree (person_id);
 #   DROP INDEX public.idx_person_id_2;
       public         postgres    false    192            �           1259    24632 
   idx_tag_id    INDEX     F   CREATE INDEX idx_tag_id ON public.tags_x_people USING btree (tag_id);
    DROP INDEX public.idx_tag_id;
       public         postgres    false    190            �           2606    24644    tags_x_people fk_person_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tags_x_people
    ADD CONSTRAINT fk_person_id FOREIGN KEY (person_id) REFERENCES public.people(person_id) NOT VALID;
 D   ALTER TABLE ONLY public.tags_x_people DROP CONSTRAINT fk_person_id;
       public       postgres    false    190    2028    188            �           2606    24657    articles fk_person_id    FK CONSTRAINT     ~   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT fk_person_id FOREIGN KEY (person_id) REFERENCES public.people(person_id);
 ?   ALTER TABLE ONLY public.articles DROP CONSTRAINT fk_person_id;
       public       postgres    false    2028    188    192            �           2606    24634    tags_x_people fk_tag_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tags_x_people
    ADD CONSTRAINT fk_tag_id FOREIGN KEY (tag_id) REFERENCES public.tags(tag_id) NOT VALID;
 A   ALTER TABLE ONLY public.tags_x_people DROP CONSTRAINT fk_tag_id;
       public       postgres    false    2024    190    186            w      x��[�z�8���~��!���ȹ� ul�۲a�O?k�~����ށX�T��j�O6�{�7��j����Uw�T�b�����f�拮:5�Iux��3�z��Y��Rs���9_f��mT����?6�~���I���f8W����|�Lf�ov�կEuf�Wʹ�ntիA���xVu��w��~��h�ٴܧjԤ���١��j�m؉�Y���&��YWv8Z5�|B��d4N�m��V�xy,���x/�S�5�[��37�Z�[����ō�{3�\��j�մ� '3�l��>��������Ӷ�m[��=OTf��z����d��x���|K[5���t�tO�]�*bB�j��шƉ2�kG�45@2�*�x�G!'��v1���W��������=���U�UP>6���R��lf���jJ��r�M��-}�u@����v�7˱#��zr����:ܬW_�gv��^�d7�`�3��x�3/����#4nX��u�Y��A�>y��Z"T�v��J�����R�l��'�����ʍP�h��ehx#/5j�]ĜN���0��.�V����ﭾNg"�������G�B���ۀ[;���TG5ݐ�I5^�O�����q����o���=� �-vqݽ:O��-�)�wlz1��k.��'�����?�&Ɓ��l�e�+���/6	�3�����ѐ�B�.ݼL�Vd��[�)��}��/���'=��{,����N8;>B{���Ύ��ĉбS�ӝ�1\��j4�����D�}uc��;��. ��{�����w�5���L8�������ɪ�n�S��5k�|'����)Z~�:���ù]�`�Q5��U�9�b�|A�!�&��`9�p(f3.ޡ�O�^t�	F�Y+%�7o��@�kD�9nz��F� �#T9|�+=m�Ko�,�w�I-�˼�Eu�<����q�L�9��}�f�B� ��O{�CÃ� �j��$�ؤ�Q��aؙ�YU)�B2�:�~�"j0J�X�`~��cx6�מN�Ƀ&�J�/�<w����&�2 ����:������.��+ w�U ����"?��Cx�!����{�$���3��ӈ�%t��E���re'v`S��[��� �M���꽣V/|��<A۽��}����ͷ ��b`͗�3��3Їgd�ˈ��m&|Q�Y�����Q�����;{��!q�����(�����'#F?�\&�T���a�G�4x��������k->`D-���t5���^&;���A����E�I&�Q��k=�ڸ�2�$l+�~�T<��P�ᨙ�����;�hv:څ�Islg�L*� �9�_/u~T��m4 �T�%��H�!��su-���ub=6I��8u���=�P8xh����Jڱ�/	������ۏ�ߙ�콺�m:5	Ն��V�~fK�o?�8w�s�DR���	֞gm�hՌ��s��a���V��om�Ku00��9n����>u�;=�@=ǰ�$�|A��Ž$8�U�O�$�-$�9n	�]O-;���C|����SHr�d�iG��I�:Y�Ho�nK��I��t�	iW`��!%Z�ON<-	Z�
VT�iG��r�	��]A\�j���v��п�&M�k:��+���p�A�S�����lm�&K�a������G�X��C���(�3S\�M�Ъ��)D�Gܫ;�_��u�8�@kљ��D��>ow�7H�P:��~F<A���/�����L��'��v%�ψ-���w0@ӵ> �����W>������M��ǃ�ՠ���~���	�h�A �fփ�#G�_�PO9]��"��wi�1q�^�IF�q��`5�[u��u+B��n����WW�D]��'f��{<2���׭M�3b���2Xȴ񑌕�w��Տ*|l~C)ET�S�Q�p�_�^?���*�y��M�|TFH�N�Cۋ�/�(Q��!�a]���>B�RA:t����LK��%�Q�y�ӡ�#�Y��#�������u��s3�����b׽��.�@a�"K�S)��� q�<v�ʦ��`�Ylw-�J{��}T��	�v,�TV,|�8����u��mDoƓ:�Rㄥ,p/ =\�fA��5���L�֋k���`�W�4���7'*�z�����^�wH9�T۠'�e�f�`D,>T�Z��΁|���=��>F��MB���Dk�1��7'�˲��B�t�b��`s{F��&I�g��J����`����T|;�g�P~��T�!I��� ?0W��./�"���<�y&|�:�Rʎ�Ɨ�ą�cy;��k����Q���T�H=՗�"`Z��VDZu�&�J���#'1�I!ӪLP�մ��6C�Q�B��T�E�+�?�N�z�C^���������=��m��F	+�u����2)�Q_�L���#�ǈC!}��[�Љ�C�B|;�T��^�Ou)��h�$x	���{i��J�S��E*�������=�X�%���?+��/dС����y��8H����A��� �2����?)P#�ap��d�����u���ް��;'��|:�q�������J��+}�)�@xFPȧe-����%r�E�Z{wB���A/�R��N���ok��C,�Ғ�>�|����#D�&���tM�~� �.Cl]��͉!_2Ъ5-��+F/Ge����7}d���"d�޶]��L��<�I)uҪ�f,YE^캨1�I��F��l��6m��$(hK{�y�Ŀ����-�BX�c�Qy�\�?�bEj���������B~����_��I��.��_��l��s��\j�!�f��-�Zr�I�f��}}]C�B�F.�>4_%���Q�^û��?*�+���z�c�(�e=\ҕ����;1��:e<��a`a�/`���:J?��[�.Uj�TnuY��S$�/�9eчh�����O����a�wSs�[ ����SEp��;]|A�b���;F��D��]�\��6m�(�IG�����˸�f1�������ᢐmKܐ"�M���B?)	%�^����S��UѢ���%�2s����E�{����G��*ʻ�4�D�(<��`��5[���N��Ω��l!WW�@����Q_���I�p��o���|U?{Q��
�ŉ�`6y /�0����]����O�Ź�&�y��+������l2�A��K�
QJ��y� FM�X�VW�U+ek�x|��Bo ����"�>d�B?��:��$dM@���
��M����k!�����A
S�e���њbcT�I�5��]ލa�i�	�b�s�KUW�I�K��������)9����$>d�K�N��L˽y���خM���e}4c	���A���Ἠs���	�WL�W��!AN�]�� A������1|5O�˵S�O�c�����3�E�4�A'��m �Y��,�C���aˀ�ɭ���Y�м��jŶ�/V<Z�8h �T�80��O}�g0fS��G��l��r������H���h5Օ������ѫ��AL�ujR�X� 	x[�?�-ҨF���S����Rң�S?�l}y���f�]������q��O^UO�a�T��$��1�Z�nu�d]�C�A�q�4Ǐ��c�9�d�!�mH,����I�sx=��<�9M8�Kyi*��T(_Z?u*rlp�|�㇢��X~�/��a������e��p������-26���l#n$�j�b�cVR�">�����&�����G@h��k�+M�:��H�]Y1�T���U�%�J,�\4o��U�2����b>SVǱ�z�������oor���ߌM\�F?��
���|t�?N~�+,{'
��(�N��Kcy�#��+��#�?�d�g3@��~���4Ѷ4�T:��"e,j�����N;z��\���cU��"E�l
G@4��z�<��MQ�f��J��5nԃc��X+��4��US���a��`��<:uDҒw<|����et_ �  ȁ�����~d1�HN�#��X&�Wm���N�+�dĂ��3P�Ļ��<S-��z��¢�=9������-�?�53�ɬ��2�I����	,�6�^ܼ�>m��������l�m,��`<eqFAx��2 �
!�����_�W��R� +�={�Y�U�<
�ސ|�#����Ph-6�~l���|	Z�[V,���⛐�gA�������$�G?�4{�:_�X5����8j1�39q���2u9��N�8r9˦�)1�)'�������W_���p/#�vK_�ۭxqk
�D]�_ ��ש�����~��y�?��(5��<>�l������UҘ�l�Gܛ��AI����;1��u�+ƮQ����{XN�k[v����)1���C!�y�z�=^��f�
#~�TH3{N�������\��|��f�r*���#�d�]uj��^I��0)MF2����Is�A���Z��ݷ�j��=��
.t��f�<3&�f�.�-�27y;����vB�tù������Y�.�h��h�LG������L�&	$��L-�/��@A�gK����,�cqZ�7ZQ<���@�7��N�p���Ӭp�.�"𹚣y����������i�]�$D�3��d������������%��R㳇�,����_*}#.�Ӽp4�bw���}�f�L����Ux�\�h�BV
8��籐���e��� D&���b�_�Lx�/F����f((�-[���TD��3�G�p?��w���~��tH��!�ť��zH��>�����R��ϵ�X��������Ӝ$ ��4��"B�<�Ц���/
�,�}i��e��.R8N�H�/��Re���q�Ǚ�X)y�^*��(:��FZ��aS�bK�2s���+�K�������t	iW      s     x�]V�n�6�&��@�^��,������v�A��Co�2c��H�㣼M_�/��l���J�w�3��Jť=4�6����D��`}PK�z�O�W5�?rq��oԝo�d��/��}3���n'+q�A�.��LR�J8f��7�d��Y�~��*v=D�bEa�-��(9
[��bkCꎂG������
���&h�j�V�3�h�O�fbn(���So���v2��{�܀��+/�U���N��x��A��v+�R<��v�&S�a�g+��Iz��ծ�����D�t�V=i��24�H]�O
䌜��G"�a��s
vP�w2K�������ڷ䜗Y*��3��l"^��:��Y&��-�Ϧ�5H�-@�Y!^tב��dV��kH͐�dV�7�Z�)���q%��XjRK������	�L��2}��Lj}0N�/9e�E|y9�\,�	5@��^�+_7:�VgVn=�����y#(O�m�:��F#ɖ57OԫU�:��9
zT��� �BDy.f��V�y)n��n��y5�~>�÷����,&bm=н"�]�(X�b�����%�Ё��9hۨ' Y&b�k�r�dF!�Lq��35�G\��0\H��}�,3�֒Z���e.n�5�0�����@ô���%˒�ة���s��߇W�����չ�#
P��њ��d�BbP���R��jr��?�u�������Q�jN���h�Z5?w��<�Z˪`��Y��AV�x�����]D��#ϩ�p�E�O)��h�ҿ%�LÑ����N�p��g0p������;�P/>����Z��+���5@~��8$Ʌ�{��j�H`]�����V4�1�5�pɑ�WcG3J
qm���q�@T���ѨӝZ@ňTb�����,���4�P��zl	�R�k,����R��Wj��> B� �_�S Q��yD!n�l|�����m���^{�6>�/���Q�Iq�r�(w��A�P��2�0�+h�v�Zh�84�8q�ނ�$����֘����`&�cXޒ"�f1�Ql2�}A�M��q��N�k��X#P��a.���dJ<��L!P���2{�t�E�k.	ô!����F�g)�G(;�~c�<�Or<9	,�_��9 a������/�r�Pt������R�Q�c8�}'p�[�����aI]����>��<sM�/�3;[�d�7G�z����I-��S��pQ���l�?���ňtG
�#��ҥ�W�y���B�갃��[����[�KC�vw�
�������&�O�(yX�i�!��@[~v��� �<;�v�7�M���T<�*S0��d�	<w�?^¾�ݞ�bat��كs��^�j\�]���W�O�5�`6\��R����9�-m��� ��;_��Eڌ���?z��b�.Q���[>����7XIQ��"���t_T�0*�oǌC>�H�ݯ<����ZX�G:���lK�	���k�=c��1Xqꮁ��sR��}u6+��/��]��)��%�+|OP��9�	`�y��(��Z8�      q   �	  x�e�K�����_I9��c9I��I�]�]�"��$�%	�]���k��t� ݧO�V�f�Λ]�x��c2�q�r��٘y�
ջ�scT�Ѽ���UJ/�k�^MT���Y�Q��K�N2�ԧ~���lOf��\����j9*�P=^6}�����N�֪����ꍞG�+�1lp|*M�ONϝ_OUoϬfJ�]����u�Y)����{�]�T�ӫ�RN7���(��d�u��X-���(K���\-s�(+�j���zw�GY�gQV);.�r���.��Su��噺��Dy��x�#�C�WpѸ\��j{+..5�ܫ�.)R��Ͳ0�E��7ӻ�ǣ��Ѽٚ.*�=>Q�I��%*+�YG��3e���vY��Q��t�DU�-_V��]%������`ȫU����5���G|�Z-��|�n���߬y���n��.i�&a<s����5\�`���Q����B��f7GM�n���4�P��H�X�W��ĉZ4��%zl��:fd�l�q?�7ô ƫ�[���?�˅n-��m�� ?�u3=�%��]��q��?�z��A��0��nxx��	T��u@�[/�H`g�m�Y"y�oz,2ΰyt��X�\��9 ?NN\Cb�{<}O�q�cG�B��z�I^�Q�I��^]'{��� Y��n���%�	�|;s[p���m��0� �����Q9��0L��W+5]-	�^9��B��3;�̲�%Y��k/��&&���%�e�ګ���Ye��u�q����'�9k��Ke� ��$����Z]�o�t2*���6�}yҘ!7� ������L~_�g;�:V��D�'����J���#�u�n\���>']���<����76������X���d+�DI�����.�
VƉ���?~��o�'A��|qVLJum�������n�O��mo.0T����������89�
�˛���*��%5��^�b � G򯆌IAo����} z�x��m�GB���?���8��Չ��v�=���u�	���@LOSD��Y�dr
I���2`1���xܦ la�]�gr�֊�5ŝ���.L�B�u�1�dK�@����VQ��]M�v��n�����ʝ����,���cT� ɌWJ��pއU��n�
��>3 �Qk�k+do��D
�s��b^e��YGfɁv2C��>�p��FFI�\�M�X&�DJ�l/8�(��b�|<�A�n[C� ��ʼl����~�7�=u3��K@�>'Q�UT����T�A)W�w���X�����>D&	��3I��Y^
VV
@�X�"Z"�%y�u�����0m��� )6�$�S�����D��%B���[�;;�9����>1���t	�~��ςy��v��i�9��]]o&/�ݒ	aQz0�^ar�r�qU��q��țr�DN�9�I%�ȢW��椸H�������5>�^����<���;��.�^�7R�M�kA�/���p�9?Uaȷ��0�Y�ҭ&<q�#������R�����{
a?�Ǩ|Ƀ�<�cQ7����f��XL��e�;��!TD��tpvn=�
.�&xU?�I��QV&"#v��6�K��OH���zg3�b�sc�u�ϐ�  *�'���D�͋_F�VmG�]0�LD����2�/u	���D�6Jr�W F���Y���A�CB�!ݨ��}��L0��;���TF�����U��ÿ��Q������.�L�$s��f}FS�'���%)��ܞP-�r�Sa�*�G�LK5���|w�����#�Teգo�E�lp@I�1�X�|��|�JY��q1����4��:A�H���?
eTA['Cb�[#��͉_Ϸ��cj
�A��Xs�C�^�Blr�Z�{O�$P���w��\i��Z����C��h�ڣԄ��+���>g�F��&-|s�'�"�Gg�Gd��o�]�����?���o#�M�2B�7�4Դ��d��T9ijh���D���P���l�&��FҠ�����n�	z�Ѣ�:k�K+�`�y=�X��2YY�,N�I�p�W�1�bn���<"5��2��y�탴E�'�G-���Y�d�<�"�B×�@/,�T�fJ�㻰<XO�J&��|ގ6N�f�
9<��Zگq�$��L�u(@�K�Bg��ްJ(h������\�8Q!�&r9�K�U�7w�YM���ltxH�mu����e��ȋ|t�
EB�lO5��i�&��c�T�S�(MbJ�ެȑD��	���_,wF�����m� ��F�H{���$�@�z�?B����!��tv��p���=O�2	
U�I�;�D��a�.�X�t���$)X��ע�C�Rr�"gQ��<M�H�a	��(�G����s�]�H�o�����٢�dR�����EgI���tI�ӓ���%;�7�}�N)D��M�:�?�؊����jY�d�d���xND8z���ID56�������H      u      x�=�Y��:�U�K��]���1�P�S��7,)�����ן���}�g�s=K����<�y���/�_�駺4�V��i��?��xu��4ji�i��Σ�����������N�\UI�JWtQ�������ks=��tU���]��qU_^����:�麞��}?����y]�ӹ��������{��}ש>���ύ���rU�;�Au��w��B�u?���<�h
��>��z5��uܮ�d6t]T����l.��pU����=�ӵ=��u>�k����"�A=8���u]_��k�m���� �I�l��d�7W��7�=�����۟��@y��b�s�zh^\s��^��槚)�ꦀ��j�(����j��
��S@�Dʬ]��̘^��$���
�J��-&P�-t�{ыr_�X����Ť Y���R@�Nq�T(�j����
]�'��Z���*վ�i��D=�-
���m��%]#N@E-��Af���߀��&��(�~����DAiI�����Y��P M�r���P U�<�����w������S?wj�\�A�[���P1��Z��S"��3t�d��*R�A-���_?]�v��/$��+x�I���M�xa}�>���M☉%v��Ֆ���\Do-����� �YM7�
�2��V"=���I v���`��U��`�A�@��z��H��[��4��+̓���T!��'ı�P�P@�֨�8Y,��Z����P�P����v�B��_�:mR#��O�V��8�O��["M���S�cI�&&X̴o]��� _3�;q )��Z�	�
��ϸP�����c�q�L(b�O�;�|� 1�wab��hX�	ݼ��FAtS�d´��
��Y*N�b�A	q,�gl�Y���U1�����V����$��:~��E���M�)IMb�q�L����N4+!��6)��Z�.��K�NK[mE�[�e�NL�������	S<҈Կ���H�%��do������?3_� ݅4���H��m�qT�~h�u��y�h�#��1c���Br�
��z0�q��+�u��m�!3]�b��&0�̐A,����� �0Z�×�F3��`;L�U DY��y�	�y�]V�.�@���Lz8�Ay@�k�qy�0��U��J�*�|�b��_��8�n?7j�
L�
I�����Э&��̓���اA�����׃��_�`z�W�Ȱ�6t����o{��Ǫ��"�iZy�'�%V��ǋ�1qo6�S46N�"_�5�н[����rz54Ʊ�6z�vkӵ6A9�,�ļ�H�6��E��j��g���
n�?�q�3z���TK*�7��N?[�i:�q	�v�1�cr�9��||�^�p�7(ݰ�q��O�Bg&�m7U+�-.��L�:b�,��*�d�&�M'Y��`K78�������IY7�"<x�/h��Ԧ�)G�x��e{��L��!08�A7v5���׹��;76��ZN��۹��8a1��]��;���B��b��&��&M �ZM�x�eH���؝��Gc��qy4FrnlJB	�i>�%���Gc���+t
p�3-{�q�'�IO�����=��{��	���y��ik5.'��FLʀ����G2�؂����8J��S�qg\{MawnaL1fU5fck܎��$��M"�p��[�꒮�����Lm�6G&>W^�̷��^!��v�����uߘM�Qv�����ln�CE,����>~��M�N�~���K�k������x�Ǡ�t�¨r;�O��-磋C��E�Č�6a�	��2o���>�0i���u5�k�Y�y�'��-�Go<׷�yE�K��)p�S�I�@}c�4�UllsLXfn���msʈ�<�fD��M���%
2���#V9�ӊ;?�L �,�t��j}懘��Q��bT�W~�H�CN"L�o!��ac�䇧	��䇦�n���8U��B>G5q(Q_:虤�҄��!%���5̤���FfJ������v�����������B�5�42�`Ү3��]��*Հؒ`��ܱYlT�R��F1P�b@�����d�3X��9(Y#��T��j��ե�al��
��1o��a@=� �D(J�l*�~�W^�L��;YJz��&�P;�^��� �=���
v�<ߗ>����P��;�w�ݮe6�靆�OL�'���S�A�Ib�b�-�:Q5jX,��B[$��' 6ywg�����vhpFaz��}�o�l������@HU�h��O���L�.���RE�k��q�C�Y���w�	���W�y�6�6ي���t��צ��f��B�@�)O	@?71i w�=��9�_��w��9�VZ5G�B`��{��{����dbe������G)��<h ��j���[�_g��6�����IӂV@�Jx����]�b���ĊU�i���|� Xܰ\���j$"���=|�m�O�~�2�2���<���3P}��x>�2=hrr�a�c(F%!2vQ�s#a�~K\�
�Su���%F�&-z���j ,|��d6�r�[f��,^��/X
�_�-�a�R�yTa��@��
��!��P����̬r�E�[���dv��l8��?p8�'i�'&	�^�d�9�($���cگ��o���5q�D���`���U���W��1T����gI�j�N5Hv[���=����r	9�0�A��b�� ��i��(�^����˹/��\��G�"��/�[�@�qpY42pf��V<�c�pn�b.4��-���F��Q5��9QX�Y�9�k�#WcE&x��F�5�Y-��"���A\��zř^Y�8��jZF���=3�6	(��*M,?���W�^9o׳m0g�f�a��l�+��^(�YEF1��,��ˊ_�_ۊM�D7�Է8�Xf�j�fb�F'<���ZQ^��9|�8B�Kq�������)�c����(<3z�kS���|��{�1�k�/����I��p5k�滽!��J�[�s�SBMq�!x���>`���Cδ
k�{C�$���K�%1��v_��k�ׇyue~�c������݆qT��=�WZ�W�5{�ޟ���G$/��/y<�H����h��%���_�@%$k2V�~�b�_��5%������N�'y�?)AB�U�8���̻bK��o�̼�4�h��?�ck37V��駀%�o�,�4`�ܱ�� l\�����������S^K��c6ьf"���Ue��¤C��3�a���q�O��W�1�n���nN�8���}�G�j��sN^1
;�Y�C
�]��I7�`�՛<4)!A2�����ю����ĬpBs3�#R�f3�#�~��c�P�7'l�Y����Tc?pͽyUU��/>ɞ"d����bL�Vw[p��~R��?��@3�l�'�ܲ͆@��G$�|��LXx�~89E���D��y��N�Jp�5?)SNj1y70�	�_�~���H��9�L}��-�煣��7�j�#��§�1R�~.�ݪ��[���{��5�X���6)�g�RUWZ&9߿�[�@�nM����y�7�buag@�4���O�A��$o�nIl��w���^��н��I��pUR��Û��r�]��-��)
_(G��Rx�C��8^�"���j�&#ݯ�H':'̄�ʕ�[���^��� �6,��KIlñ73O�Q��H*ƅ�N���-���R��^P�?"�k�R5o��y��s�"���ռ9+ux�j�Iy�W�9���C�voM�%E6�=ܪ���`8��Ӂ�YR-�%ſ��0�ߔm�3۷޸$�|��Rl6̘�<�Q��������c�
x,�Y�ä���؂��B(�� A�8�'e\���+\!�B�\�/���z$l�GM�4n��x��Fѣҽ��X��p�ܜ��N��j:��V��P{�����`��-�Q�X�Z�6���0�/2E�qZ�fУ:&�a11�#ž���"i����}[S>"�db�&��M��Y�`�' �   �5�Dš��b�t���}R��6F�˒�c����5�'�ד[ސ������p-Xv�O0�U�x3-�-��������j����������K3�.-ܘ���2��$�����i�6�w"xW��_���>k�	��6B͙����͙�Y�?�gv���;|���������?�3�     