# This file has been generated by node2nix 1.11.1. Do not edit!

{nodeEnv, fetchurl, fetchgit, nix-gitignore, stdenv, lib, globalBuildInputs ? []}:

let
  sources = {
    "@types/node-20.5.0" = {
      name = "_at_types_slash_node";
      packageName = "@types/node";
      version = "20.5.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/@types/node/-/node-20.5.0.tgz";
        sha512 = "Mgq7eCtoTjT89FqNoTzzXg2XvCi5VMhRV6+I2aYanc6kQCBImeNaAYRs/DyoVqk1YEUJK5gN9VO7HRIdz4Wo3Q==";
      };
    };
    "fsevents-2.3.2" = {
      name = "fsevents";
      packageName = "fsevents";
      version = "2.3.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/fsevents/-/fsevents-2.3.2.tgz";
        sha512 = "xiqMQR4xAeHTuB9uWm+fFRcIOgKBMiOBP+eXiyT7jsgVCq1bkVygt00oASowB7EdtpOHaaPgKt812P9ab+DDKA==";
      };
    };
    "playwright-core-1.37.0" = {
      name = "playwright-core";
      packageName = "playwright-core";
      version = "1.37.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/playwright-core/-/playwright-core-1.37.0.tgz";
        sha512 = "1c46jhTH/myQw6sesrcuHVtLoSNfJv8Pfy9t3rs6subY7kARv0HRw5PpyfPYPpPtQvBOmgbE6K+qgYUpj81LAA==";
      };
    };
  };
in
{
  "@playwright/test-1.37.0" = nodeEnv.buildNodePackage {
    name = "_at_playwright_slash_test";
    packageName = "@playwright/test";
    version = "1.37.0";
    src = fetchurl {
      url = "https://registry.npmjs.org/@playwright/test/-/test-1.37.0.tgz";
      sha512 = "181WBLk4SRUyH1Q96VZl7BP6HcK0b7lbdeKisn3N/vnjitk+9HbdlFz/L5fey05vxaAhldIDnzo8KUoy8S3mmQ==";
    };
    dependencies = [
      sources."@types/node-20.5.0"
      sources."fsevents-2.3.2"
      sources."playwright-core-1.37.0"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "A high-level API to automate web browsers";
      homepage = "https://playwright.dev";
      license = "Apache-2.0";
    };
    production = true;
    bypassCache = true;
    reconstructLock = true;
  };
}
