vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO MaaAssistantArknights/FastDeploy
    REF 070424e06436524d817131d68c411066fa6069a6
    SHA512 23eef7a7dbeb03da124a11c33b862ace63d41d1a37363011d377862361331dc8955256e57f828d177ad5fcc773a6f99df7b5e5f6ac945e01850f0ab4c0f94135
    PATCHES
        000-fix-rpath.patch
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")
