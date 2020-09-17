/* eslint-env browser */
/* globals COSMEDIC_DIST_PATH */

/** Dynamically set absolute public path from current protocol and host */
if (COSMEDIC_DIST_PATH) {
  __webpack_public_path__ = COSMEDIC_DIST_PATH; // eslint-disable-line no-undef, camelcase
}
