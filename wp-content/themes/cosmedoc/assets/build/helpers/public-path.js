/* eslint-env browser */
/* globals cosmedoc_DIST_PATH */

/** Dynamically set absolute public path from current protocol and host */
if (cosmedoc_DIST_PATH) {
  __webpack_public_path__ = cosmedoc_DIST_PATH; // eslint-disable-line no-undef, camelcase
}
