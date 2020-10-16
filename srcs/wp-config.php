<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en « wp-config.php » et remplir les
 * valeurs.
 *
 * Ce fichier contient les réglages de configuration suivants :
 *
 * Réglages MySQL
 * Préfixe de table
 * Clés secrètes
 * Langue utilisée
 * ABSPATH
 *
 * @link https://fr.wordpress.org/support/article/editing-wp-config-php/.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define( 'DB_NAME', 'localhost_db' );

/** Utilisateur de la base de données MySQL. */
define( 'DB_USER', 'localhost_admin' );

/** Mot de passe de la base de données MySQL. */
define( 'DB_PASSWORD', 'admin' );

/** Adresse de l’hébergement MySQL. */
define( 'DB_HOST', 'localhost' );

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/**
 * Type de collation de la base de données.
 * N’y touchez que si vous savez ce que vous faites.
 */
define( 'DB_COLLATE', '' );

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clés secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '03}T8Mk-<<6AF-:7^ARzP]Luq5f!gQ+H/2vO2@R{rR;9*&9K}94dhDU2:qSmFzn/' );
define( 'SECURE_AUTH_KEY',  'zho s<Fm]:hta0#L+.?9mU5yg1@+P!&*%$ORSUCu3ZnErq7RhK7ZE.u n,Q IU[7' );
define( 'LOGGED_IN_KEY',    '7Eh.!Xv WcL2JK$b@_>a)cg.hAT!jWnL!O~r!%lv!FZ a767L_~7mcA3|pE9:U9g' );
define( 'NONCE_KEY',        ')c54$[pk~0;A#_RcR7c%wn&;*psVpqY47F$jy@/9#.-tY%6<urr{pXKoP|_8A#W.' );
define( 'AUTH_SALT',        '2437?t@rC_Kd!v#{m:Yuhn54y ?`x8@.BeCb u2O0<U9ItpAHmsw+,)Vq87LaOBH' );
define( 'SECURE_AUTH_SALT', '`mckvyRIC+c-Hh@Urfa6)nBV/G{Fw,&1S{^ew_U<0=O8~KrUeF1#?SYhov 0E!*I' );
define( 'LOGGED_IN_SALT',   'b^acG^of113wdCnPp?Y9(v?c6T{qy8{0|V )Mu|@&j0poy;UtT*t6b;onFh%})cl' );
define( 'NONCE_SALT',       'S$&3CXXRepCB=fxkL;Q]ok4T1&f8?0`MHw+EL0E]K1`cRv2@CyoaKESYj^fiY^O>' );
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://fr.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* C’est tout, ne touchez pas à ce qui suit ! Bonne publication. */

/** Chemin absolu vers le dossier de WordPress. */
if ( ! defined( 'ABSPATH' ) )
  define( 'ABSPATH', dirname( __FILE__ ) . '/' );

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once( ABSPATH . 'wp-settings.php' );